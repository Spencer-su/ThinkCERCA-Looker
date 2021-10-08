view: lesson_steps {
  sql_table_name: tcdw.lesson_steps ;;
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

  dimension: duration {
    type: number
    sql: ${TABLE}."duration" ;;
  }

  dimension: lesson_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_id" ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}."position" ;;
  }

  dimension: step_text {
    type: string
    sql: ${TABLE}."step_text" ;;
  }

  dimension: step_type {
    type: number
    sql: ${TABLE}."step_type" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, lessons.id]
  }
}
