view: looker_rpt_std_perf_writing_lesson_domain_avg_writing {
  sql_table_name: tcdw.looker_rpt_std_perf_writing_lesson_domain_avg_writing ;;

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

  dimension: rpt_assignment_score_reporting_avg_writing_score {
    type: number
    sql: ${TABLE}."rpt_assignment_score_reporting.avg_writing_score" ;;
  }

  dimension: rpt_assignment_score_reporting_count_distinct_students {
    type: number
    sql: ${TABLE}."rpt_assignment_score_reporting.count_distinct_students" ;;
  }

  dimension: writing_lesson_submission_order_writing_lesson_submission_order {
    type: number
    sql: ${TABLE}."writing_lesson_submission_order.writing_lesson_submission_order" ;;
  }

  measure: count {
    type: count
    drill_fields: [institutions.id, districts.id]
  }
}
