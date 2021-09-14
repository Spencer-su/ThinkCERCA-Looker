view: fact_teacher_rank {
  sql_table_name: tcdw.fact_teacher_rank ;;

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

  dimension: num_assignments_graded_month {
    type: number
    sql: ${TABLE}."num_assignments_graded_month" ;;
  }

  dimension: num_assignments_graded_month_rank_all {
    type: number
    sql: ${TABLE}."num_assignments_graded_month_rank_all" ;;
  }

  dimension: num_assignments_graded_month_rank_dist {
    type: number
    sql: ${TABLE}."num_assignments_graded_month_rank_dist" ;;
  }

  dimension: num_assignments_graded_month_rank_inst {
    type: number
    sql: ${TABLE}."num_assignments_graded_month_rank_inst" ;;
  }

  dimension: num_assignments_graded_school_year {
    type: number
    sql: ${TABLE}."num_assignments_graded_school_year" ;;
  }

  dimension: num_assignments_graded_school_year_rank_all {
    type: number
    sql: ${TABLE}."num_assignments_graded_school_year_rank_all" ;;
  }

  dimension: num_assignments_graded_school_year_rank_dist {
    type: number
    sql: ${TABLE}."num_assignments_graded_school_year_rank_dist" ;;
  }

  dimension: num_assignments_graded_school_year_rank_inst {
    type: number
    sql: ${TABLE}."num_assignments_graded_school_year_rank_inst" ;;
  }

  dimension: num_assignments_graded_week {
    type: number
    sql: ${TABLE}."num_assignments_graded_week" ;;
  }

  dimension: num_assignments_graded_week_rank_all {
    type: number
    sql: ${TABLE}."num_assignments_graded_week_rank_all" ;;
  }

  dimension: num_assignments_graded_week_rank_dist {
    type: number
    sql: ${TABLE}."num_assignments_graded_week_rank_dist" ;;
  }

  dimension: num_assignments_graded_week_rank_inst {
    type: number
    sql: ${TABLE}."num_assignments_graded_week_rank_inst" ;;
  }

  dimension: num_assignments_month {
    type: number
    sql: ${TABLE}."num_assignments_month" ;;
  }

  dimension: num_assignments_month_rank_all {
    type: number
    sql: ${TABLE}."num_assignments_month_rank_all" ;;
  }

  dimension: num_assignments_month_rank_dist {
    type: number
    sql: ${TABLE}."num_assignments_month_rank_dist" ;;
  }

  dimension: num_assignments_month_rank_inst {
    type: number
    sql: ${TABLE}."num_assignments_month_rank_inst" ;;
  }

  dimension: num_assignments_school_year {
    type: number
    sql: ${TABLE}."num_assignments_school_year" ;;
  }

  dimension: num_assignments_school_year_rank_all {
    type: number
    sql: ${TABLE}."num_assignments_school_year_rank_all" ;;
  }

  dimension: num_assignments_school_year_rank_dist {
    type: number
    sql: ${TABLE}."num_assignments_school_year_rank_dist" ;;
  }

  dimension: num_assignments_school_year_rank_inst {
    type: number
    sql: ${TABLE}."num_assignments_school_year_rank_inst" ;;
  }

  dimension: num_assignments_week {
    type: number
    sql: ${TABLE}."num_assignments_week" ;;
  }

  dimension: num_assignments_week_rank_all {
    type: number
    sql: ${TABLE}."num_assignments_week_rank_all" ;;
  }

  dimension: num_assignments_week_rank_dist {
    type: number
    sql: ${TABLE}."num_assignments_week_rank_dist" ;;
  }

  dimension: num_assignments_week_rank_inst {
    type: number
    sql: ${TABLE}."num_assignments_week_rank_inst" ;;
  }

  dimension: num_responses_month {
    type: number
    sql: ${TABLE}."num_responses_month" ;;
  }

  dimension: num_responses_month_rank_all {
    type: number
    sql: ${TABLE}."num_responses_month_rank_all" ;;
  }

  dimension: num_responses_month_rank_dist {
    type: number
    sql: ${TABLE}."num_responses_month_rank_dist" ;;
  }

  dimension: num_responses_month_rank_inst {
    type: number
    sql: ${TABLE}."num_responses_month_rank_inst" ;;
  }

  dimension: num_responses_school_year {
    type: number
    sql: ${TABLE}."num_responses_school_year" ;;
  }

  dimension: num_responses_school_year_rank_all {
    type: number
    sql: ${TABLE}."num_responses_school_year_rank_all" ;;
  }

  dimension: num_responses_school_year_rank_dist {
    type: number
    sql: ${TABLE}."num_responses_school_year_rank_dist" ;;
  }

  dimension: num_responses_school_year_rank_inst {
    type: number
    sql: ${TABLE}."num_responses_school_year_rank_inst" ;;
  }

  dimension: num_responses_week {
    type: number
    sql: ${TABLE}."num_responses_week" ;;
  }

  dimension: num_responses_week_rank_all {
    type: number
    sql: ${TABLE}."num_responses_week_rank_all" ;;
  }

  dimension: num_responses_week_rank_dist {
    type: number
    sql: ${TABLE}."num_responses_week_rank_dist" ;;
  }

  dimension: num_responses_week_rank_inst {
    type: number
    sql: ${TABLE}."num_responses_week_rank_inst" ;;
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
    drill_fields: [institutions.id, districts.id]
  }
}
