view: looker_rpt_benchmark_perf_rubric_score_breakdown_graded_lessons {
  sql_table_name: tcdw.looker_rpt_benchmark_perf_rubric_score_breakdown_graded_lessons ;;

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

  dimension: rpt_rubric_score_enrolled_grade {
    type: number
    sql: ${TABLE}."rpt_rubric_score.enrolled_grade" ;;
  }

  dimension: rpt_rubric_score_school_name {
    type: string
    sql: ${TABLE}."rpt_rubric_score.school_name" ;;
  }

  dimension: school_id {
    type: number
    sql: ${TABLE}."school_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [rpt_rubric_score_school_name, districts.id]
  }
}
