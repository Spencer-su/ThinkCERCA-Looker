view: batch_control {
  sql_table_name: tcdw.batch_control ;;

  dimension: branch_hash {
    type: string
    sql: ${TABLE}."branch_hash" ;;
  }

  dimension_group: target {
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
    sql: ${TABLE}."target_time" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
