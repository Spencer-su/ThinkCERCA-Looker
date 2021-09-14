view: rpt_item_level_standards {
  sql_table_name: tcdw.rpt_item_level_standards ;;

  dimension: archived {
    type: yesno
    sql: ${TABLE}."archived" ;;
  }

  dimension: assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."assignment_id" ;;
  }

  dimension: attempt_number {
    type: number
    sql: ${TABLE}."attempt_number" ;;
  }

  dimension: correct_answer {
    type: number
    sql: ${TABLE}."correct_answer" ;;
  }

  dimension: count_score {
    type: yesno
    sql: ${TABLE}."count_score" ;;
  }

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."district_id" ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}."district_name" ;;
  }

  dimension: district_pid {
    type: string
    sql: ${TABLE}."district_pid" ;;
  }

  dimension_group: due {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."due_date" ;;
  }

  dimension: duplicate_assessment_assignment {
    type: number
    sql: ${TABLE}."duplicate_assessment_assignment" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first_name" ;;
  }

  dimension: institution_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."institution_id" ;;
  }

  dimension: institution_name {
    type: string
    sql: ${TABLE}."institution_name" ;;
  }

  dimension: institution_pid {
    type: string
    sql: ${TABLE}."institution_pid" ;;
  }

  dimension: institution_product_tier_value {
    type: string
    sql: ${TABLE}."institution_product_tier_value" ;;
  }

  dimension: institution_state {
    type: string
    sql: ${TABLE}."institution_state" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."last_name" ;;
  }

  dimension: lesson_content_id {
    type: string
    sql: ${TABLE}."lesson_content_id" ;;
  }

  dimension: lesson_grade_level {
    type: string
    sql: ${TABLE}."lesson_grade_level" ;;
  }

  dimension: lesson_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_id" ;;
  }

  dimension: lesson_title {
    type: string
    sql: ${TABLE}."lesson_title" ;;
  }

  dimension: lesson_type {
    type: string
    sql: ${TABLE}."lesson_type" ;;
  }

  dimension: multiple_choice_score {
    type: number
    sql: ${TABLE}."multiple_choice_score" ;;
  }

  dimension: school_class_grade_level {
    type: number
    sql: ${TABLE}."school_class_grade_level" ;;
  }

  dimension: school_class_id {
    type: number
    sql: ${TABLE}."school_class_id" ;;
  }

  dimension: school_class_title {
    type: string
    sql: ${TABLE}."school_class_title" ;;
  }

  dimension: school_class_user_effective_date {
    type: string
    sql: ${TABLE}."school_class_user_effective_date" ;;
  }

  dimension: selected_standard_initiative {
    type: string
    sql: ${TABLE}."selected_standard_initiative" ;;
  }

  dimension: standard_code {
    type: string
    sql: ${TABLE}."standard_code" ;;
  }

  dimension: standard_domain {
    type: string
    sql: ${TABLE}."standard_domain" ;;
  }

  dimension: standard_grade_level {
    type: string
    sql: ${TABLE}."standard_grade_level" ;;
  }

  dimension: standard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."standard_id" ;;
  }

  dimension: standard_initiative {
    type: string
    sql: ${TABLE}."standard_initiative" ;;
  }

  dimension: standard_standard {
    type: string
    sql: ${TABLE}."standard_standard" ;;
  }

  dimension: standard_subdomain {
    type: string
    sql: ${TABLE}."standard_subdomain" ;;
  }

  dimension: step_module_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."step_module_id" ;;
  }

  dimension_group: student_assignment_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."student_assignment_created_at" ;;
  }

  dimension: student_assignment_grade_level {
    type: number
    sql: ${TABLE}."student_assignment_grade_level" ;;
  }

  dimension: student_assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."student_assignment_id" ;;
  }

  dimension: student_assignment_status {
    type: string
    sql: ${TABLE}."student_assignment_status" ;;
  }

  dimension: student_grade_level {
    type: number
    sql: ${TABLE}."student_grade_level" ;;
  }

  dimension: student_id {
    type: number
    sql: ${TABLE}."student_id" ;;
  }

  dimension: student_response_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."student_response_id" ;;
  }

  dimension: teacher_email {
    type: string
    sql: ${TABLE}."teacher_email" ;;
  }

  dimension: teacher_id {
    type: number
    sql: ${TABLE}."teacher_id" ;;
  }

  dimension: teacher_name {
    type: string
    sql: ${TABLE}."teacher_name" ;;
  }

  dimension: writing_lesson_category {
    type: string
    sql: ${TABLE}."writing_lesson_category" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      teacher_name,
      last_name,
      first_name,
      institution_name,
      district_name,
      step_modules.id,
      student_responses.id,
      institutions.id,
      lessons.id,
      assignments.cerca_set_assignment_id,
      student_assignments.id,
      standards.id,
      districts.id
    ]
  }
}
