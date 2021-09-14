view: looker_pivot_rpt_benchmark_perf_rubric_score_breakdown_graded_l {
  sql_table_name: tcdw.looker_pivot_rpt_benchmark_perf_rubric_score_breakdown_graded_l ;;

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."district_id" ;;
  }

  dimension: rpt_rubric_score_average_writing_score {
    type: number
    sql: ${TABLE}."rpt_rubric_score.average_writing_score" ;;
  }

  dimension: rpt_rubric_score_count_assignments {
    type: number
    sql: ${TABLE}."rpt_rubric_score.count_assignments" ;;
  }

  dimension: rpt_rubric_score_count_students {
    type: number
    sql: ${TABLE}."rpt_rubric_score.count_students" ;;
  }

  dimension: school_id {
    type: number
    sql: ${TABLE}."school_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [districts.id]
  }
}
