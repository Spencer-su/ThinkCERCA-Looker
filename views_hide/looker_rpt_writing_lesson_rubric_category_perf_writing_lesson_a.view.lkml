view: looker_rpt_writing_lesson_rubric_category_perf_writing_lesson_a {
  sql_table_name: tcdw.looker_rpt_writing_lesson_rubric_category_perf_writing_lesson_a ;;

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."district_id" ;;
  }

  dimension: rpt_rubric_score_average_category_score {
    type: number
    sql: ${TABLE}."rpt_rubric_score.average_category_score" ;;
  }

  dimension: rpt_rubric_score_category {
    type: string
    sql: ${TABLE}."rpt_rubric_score.category" ;;
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
