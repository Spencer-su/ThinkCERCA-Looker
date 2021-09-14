view: sa_counts {
  sql_table_name: tcdw.sa_counts ;;

  dimension: created_in_future {
    type: yesno
    sql: ${TABLE}."created_in_future" ;;
  }

  dimension: last_month {
    type: yesno
    sql: ${TABLE}."last_month" ;;
  }

  dimension: last_school_year {
    type: yesno
    sql: ${TABLE}."last_school_year" ;;
  }

  dimension: last_updated_month {
    type: yesno
    sql: ${TABLE}."last_updated_month" ;;
  }

  dimension: last_updated_school_year {
    type: yesno
    sql: ${TABLE}."last_updated_school_year" ;;
  }

  dimension: last_updated_week {
    type: yesno
    sql: ${TABLE}."last_updated_week" ;;
  }

  dimension: last_week {
    type: yesno
    sql: ${TABLE}."last_week" ;;
  }

  dimension_group: max_created {
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
    sql: ${TABLE}."max_created_at" ;;
  }

  dimension_group: max_updated {
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
    sql: ${TABLE}."max_updated_at" ;;
  }

  dimension: student_assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."student_assignment_id" ;;
  }

  dimension: total_sr {
    type: number
    sql: ${TABLE}."total_sr" ;;
  }

  measure: count {
    type: count
    drill_fields: [student_assignments.id]
  }
}
