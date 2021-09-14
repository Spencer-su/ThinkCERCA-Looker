view: looker_rpt_writing_lesson_rubric_category_perf_mastery_levels_d {
  sql_table_name: tcdw.looker_rpt_writing_lesson_rubric_category_perf_mastery_levels_d ;;

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."district_id" ;;
  }

  dimension: rpt_rubric_score_category {
    type: string
    sql: ${TABLE}."rpt_rubric_score.category" ;;
  }

  dimension: rpt_rubric_score_category_score {
    type: number
    sql: ${TABLE}."rpt_rubric_score.category_score" ;;
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
