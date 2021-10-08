view: looker_rpt_writing_lesson_rubric_category_perf_count_no_fully_g {
  sql_table_name: tcdw.looker_rpt_writing_lesson_rubric_category_perf_count_no_fully_g ;;

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."district_id" ;;
  }

  dimension: rpt_rubric_score_count_assignments {
    type: number
    sql: ${TABLE}."rpt_rubric_score.count_assignments" ;;
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
