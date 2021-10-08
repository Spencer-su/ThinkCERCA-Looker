view: rpt_student_summary {
  sql_table_name: tcdw.rpt_student_summary ;;

  dimension: district_id {
    type: number
    label: "District Id"
    sql: ${TABLE}."district_id" ;;
    group_label: "Organization Details"
  }

  dimension: district_name {
    type: string
    label: "District Name"
    sql: ${TABLE}."district_name" ;;
    group_label: "Organization Details"
  }

  dimension: district_name_formatted {
    label: "District Name"
    sql: ${TABLE}."district_name" ;;
    html: {{value}} ;;     #ToDo: put html formating here
    hidden: yes
  }

  dimension: school_class_id {
    description: "PLEASE DO NOT DELETE or CHANGE.
    Important for security.
    SQL should always be 0: Works with the access filters in the Student Model.
    Teachers cannot access student enrollment and activation data."
    hidden: yes
    type: number
    sql: 0;;
  }

  filter: district_select {
    suggest_dimension: rpt_student_summary.district_name
    hidden: yes #We don't know what this does
  }

#Phil: Not sure what this does
  dimension: district_comparitor {
    type: string
    hidden: yes #We don't know what this does
    sql:
    CASE
      WHEN {% condition district_select %} ${district_name} {% endcondition %}
        THEN ${district_name}
      ELSE 'All Other Districts'
    END ;;
  }

  dimension: district_pid {
    type: string
    label: "District PID"
    sql: ${TABLE}."district_pid" ;;
    group_label: "Organization Details"
  }

  dimension: email {
    type: string
    label: "Email [Sensitive]"
    sql: ${TABLE}."email" ;;
    group_label: "Student Details"
    tags: ["Sensitive"]
  }

  dimension: first_name {
    type: string
    label: "First Name [Sensitive]"
    sql: ${TABLE}."first_name" ;;
    group_label: "Student Details"
    tags: ["Sensitive"]
  }

  dimension: full_name {
    type: string
    label: "Full Name [Sensitive]"
    sql: ${TABLE}."full_name" ;;
    group_label: "Student Details"
    tags: ["Sensitive"]
  }

  dimension: institution_id {
    type: number
    label: "School Id"
    sql: ${TABLE}."institution_id" ;;
    group_label: "Organization Details"
  }

  dimension: institution_name {
    type: string
    label: "School Name"
    sql: ${TABLE}."institution_name" ;;
    group_label: "Organization Details"
  }

  dimension: institution_pid {
    type: string
    label: "School PID"
    sql: ${TABLE}."institution_pid" ;;
    group_label: "Organization Details"
  }

  dimension: institution_product_tier_value {
    type: string
    sql: CASE WHEN ${TABLE}."institution_product_tier_value" = 'Paid Pilot' THEN 'Pilot' ELSE ${TABLE}."institution_product_tier_value" END ;;
    group_label: "Organization Details"
    description: "Describes the product tier of the institution.  Only contain Paid and Pilot Schools."
  }

  dimension: institution_state {
    type: string
    label: "State"
    sql: ${TABLE}."institution_state" ;;
    group_label: "Organization Details"
  }

  dimension: last_name {
    type: string
    label: "Last Name"
    sql: ${TABLE}."last_name" ;;
    group_label: "Student Details"
  }

  dimension: student_activated {
    description: "Students are activated if they are enrolled in an active class, and they have started at least one lesson in the current school year. The value is 1 if the student is activated."
    #sql: case when ${TABLE}."student_activated"  = 1 then "Activated" else "Not Activated" end ;;
    type: yesno
    sql: ${TABLE}."student_activated" = 1;;
    group_label: "Student Details"
  }

  dimension: student_active_last_month {
    type: yesno
    description: "The value is yes if the student worked on any student assignment in the past month. Otherwise the value is no."
    sql: ${TABLE}."student_active_last_month" = 1;;
    group_label: "Student Details"
  }

  dimension: student_active_last_week {
    type: yesno
    sql: ${TABLE}."student_active_last_week" = 1;;
    label: "Student Active Last Week"
    description: "The value is yes if the student worked on any student assignment in the past week. Otherwise the value is no."
    group_label: "Student Details"
  }

  dimension: student_enrolled {
    type: yesno
    sql: ${TABLE}."student_enrolled" = 1;;
    group_label: "Student Details"
  }

  dimension: student_grade_level {
    type: number
    label: "Enrolled Grade"
    sql: ${TABLE}."student_grade_level" ;;
    group_label: "Student Details"
  }

  dimension: student_id {
    type: number
    label: "Student Id [Sensitive]"
    sql: ${TABLE}."student_id" ;;
    group_label: "Student Details"
  }

  dimension: student_obfuscated_id {
    hidden: yes
    type: string
    sql: ${TABLE}."student_obfuscated_id" ;;
    group_label: "Student Details"
  }

  measure: count {
    label: "Number of Students"
    group_label: "Counts"
    type: count_distinct
    sql: ${student_id} ;;
    drill_fields: [student_detail*]
    link: {
      label: "Number of Students by Grade Level"
      url: "{{ link }}&fields=rpt_student_summary.student_grade_level,rpt_student_summary.count&sorts=rpt_student_summary.student_grade_level+desc"
    }
  }

  measure: count_student_activated {
    label: "Number of Activated Students"
    group_label: "Counts"
    type: count_distinct
    sql: ${student_id} ;;
    filters: {
      field: student_activated
      value: "yes"
    }
    drill_fields: [student_detail*]
    link: {
      label: "Activated by Grade Level"
      url: "{{ link }}&fields=rpt_student_summary.student_grade_level,rpt_student_summary.count_student_activated&sorts=rpt_student_summary.student_grade_level+desc"
    }
  }

  measure: count_student_enrolled {
    label: "Number of Enrolled Students"
    type: count_distinct
    sql: ${student_id} ;;
    filters: {
      field: student_enrolled
      value: "Yes"
    }
    group_label: "Counts"
    drill_fields: [student_detail*]
    link: {
      label: "Enrolled by Grade Level"
      url: "{{ link }}&fields=rpt_student_summary.student_grade_level,rpt_student_summary.count_student_enrolled&sorts=rpt_student_summary.student_grade_level+desc"
    }
  }

# Need this to run by institution that have at least one person enrolled
  measure: count_school_enrolled {
    type: count_distinct
    description: "The number of schools with enrolled students (minimum number of students = 1)."
    label: "Number of Enrolled Schools"
    sql: ${TABLE}.institution_id ;;
    filters: {
      field: institution_product_tier_value
      value: "Paid"
    }
    filters: {
      field: student_enrolled
      value: "Yes"
    }
    group_label: "Counts"
  }

# Need this to run by institution that have at least one person enrolled
  measure: count_school_activated {
    label: "Number of Active Schools"
    description: "The number of schools with activated students (minimum number of students = 1)."
    type: count_distinct
    sql: ${TABLE}.institution_id ;;
    filters: {
      field: institution_product_tier_value
      value: "Paid"
    }
    filters: {
      field: student_activated
      value: "yes"
    }
    group_label: "Counts"
  }

  measure: percent_activated {
    label: "Percentage of Student Activated"
    description: "The percentage of students who are activated out of the number of students who are enrolled in an active class."
    type: number
    sql: 1.0* ${count_student_activated} / nullif(${count_student_enrolled},0) ;;
    value_format_name: percent_0
    group_label: "Percentages"
    drill_fields: [student_detail*]
    link: {
      label: "Activation % by Grade Level"
      url: "{{ link }}&fields=rpt_student_summary.student_grade_level,rpt_student_summary.percent_activated,rpt_student_summary.count_student_activated,rpt_student_summary.count_student_enrolled&sorts=rpt_student_summary.student_grade_level+desc"
    }
  }

  set: student_detail {
    fields: [student_id, full_name, student_grade_level, student_activated]
  }
}
