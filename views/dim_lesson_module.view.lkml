view: dim_lesson_module {
  sql_table_name: tcdw.dim_lesson_module ;;

  dimension: content_id {
    type: string
    sql: ${TABLE}."content_id" ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: key_question {
    type: string
    sql: ${TABLE}."key_question" ;;
  }

  dimension: legacy_id {
    type: number
    sql: ${TABLE}."legacy_id" ;;
  }

  dimension: lesson_module_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_module_id" ;;
  }

  dimension: lesson_module_title {
    type: string
    sql: ${TABLE}."lesson_module_title" ;;
  }

  dimension: lesson_module_type {
    type: string
    sql: ${TABLE}."lesson_module_type" ;;
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
    drill_fields: [lesson_modules.id]
  }
}
