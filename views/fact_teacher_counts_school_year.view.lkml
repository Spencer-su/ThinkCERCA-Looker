view: fact_teacher_counts_school_year {
  sql_table_name: tcdw.fact_teacher_counts_school_year ;;

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

  dimension: num_assignments_graded_school_year {
    type: number
    sql: ${TABLE}."num_assignments_graded_school_year" ;;
  }

  dimension: num_assignments_school_year {
    type: number
    sql: ${TABLE}."num_assignments_school_year" ;;
  }

  dimension: num_responses_school_year {
    type: number
    sql: ${TABLE}."num_responses_school_year" ;;
  }

  dimension_group: teacher_created {
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
    sql: ${TABLE}."teacher_created_date" ;;
  }

  dimension: teacher_id {
    type: number
    sql: ${TABLE}."teacher_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [districts.id, institutions.id]
  }
}
