view: fact_student_activity_milestone {
  sql_table_name: tcdw.fact_student_activity_milestone ;;

  dimension_group: activation {
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
    sql: ${TABLE}."activation_date" ;;
  }

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."district_id" ;;
  }

  dimension_group: enrollment {
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
    sql: ${TABLE}."enrollment_date" ;;
  }

  dimension: enrollment_school_year {
    type: string
    sql: ${TABLE}."enrollment_school_year" ;;
  }

  dimension: institution_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."institution_id" ;;
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
