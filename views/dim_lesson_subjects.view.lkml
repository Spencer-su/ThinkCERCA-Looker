view: dim_lesson_subjects {
  sql_table_name: tcdw.dim_lesson_subjects ;;

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

  dimension: lesson_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_id" ;;
  }

  dimension: lesson_subject_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_subject_id" ;;
  }

  dimension: subject_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."subject_id" ;;
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
    drill_fields: [lesson_subjects.id, subjects.name, subjects.id, lessons.id]
  }
}
