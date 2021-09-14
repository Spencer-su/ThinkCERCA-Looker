view: step_module_standards {
  sql_table_name: tcdw.step_module_standards ;;
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

  dimension: standard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."standard_id" ;;
  }

  dimension: step_module_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."step_module_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, standards.id, step_modules.id]
  }
}
