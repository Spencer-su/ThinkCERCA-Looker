view: fact_teacher_highlight {
  sql_table_name: tcdw.fact_teacher_highlight ;;

  dimension: assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."assignment_id" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."district_id" ;;
  }

  dimension: highlight_id {
    type: number
    sql: ${TABLE}."highlight_id" ;;
  }

  dimension: institution_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."institution_id" ;;
  }

  dimension: school_class_id {
    type: number
    sql: ${TABLE}."school_class_id" ;;
  }

  dimension: student_assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."student_assignment_id" ;;
  }

  dimension: student_id {
    type: number
    sql: ${TABLE}."student_id" ;;
  }

  dimension: teacher_highlight {
    type: string
    sql: ${TABLE}."teacher_highlight" ;;
  }

  dimension: teacher_highlight_comment {
    type: string
    sql: ${TABLE}."teacher_highlight_comment" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
  }

  measure: count {
    type: count
    drill_fields: [assignments.cerca_set_assignment_id, districts.id, student_assignments.id, institutions.id]
  }
}
