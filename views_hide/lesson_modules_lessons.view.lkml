view: lesson_modules_lessons {
  sql_table_name: tcdw.lesson_modules_lessons ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: _end {
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
    sql: ${TABLE}."_end" ;;
  }

  dimension: _hid {
    type: number
    value_format_name: id
    sql: ${TABLE}."_hid" ;;
  }

  dimension_group: _start {
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
    sql: ${TABLE}."_start" ;;
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

  dimension: lesson_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_id" ;;
  }

  dimension: lesson_module_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_module_id" ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}."position" ;;
  }

  dimension: recommended_practice {
    type: yesno
    sql: ${TABLE}."recommended_practice" ;;
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
    drill_fields: [id, lesson_modules.id, lessons.id]
  }
}
