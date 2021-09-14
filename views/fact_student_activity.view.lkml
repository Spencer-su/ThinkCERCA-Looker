view: fact_student_activity {
  sql_table_name: tcdw.fact_student_activity ;;

  dimension_group: as_of {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."as_of_date" ;;
  }

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."district_id" ;;
  }

  dimension: institution_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."institution_id" ;;
  }

  dimension: student_activated {
    type: number
    sql: ${TABLE}."student_activated" ;;
  }

  dimension: student_active_last_month {
    type: number
    sql: ${TABLE}."student_active_last_month" ;;
  }

  dimension: student_active_last_week {
    type: number
    sql: ${TABLE}."student_active_last_week" ;;
  }

  dimension_group: student_created {
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
    sql: ${TABLE}."student_created_date" ;;
  }

  dimension: student_enrolled {
    type: number
    sql: ${TABLE}."student_enrolled" ;;
  }

  dimension: student_id {
    type: number
    sql: ${TABLE}."student_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [districts.id, institutions.id]
  }
}
