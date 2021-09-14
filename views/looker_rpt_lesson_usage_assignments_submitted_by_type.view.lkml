view: looker_rpt_lesson_usage_assignments_submitted_by_type {
  sql_table_name: tcdw.looker_rpt_lesson_usage_assignments_submitted_by_type ;;

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

  dimension: rpt_assignment_score_reporting_count_submitted {
    type: number
    sql: ${TABLE}."rpt_assignment_score_reporting.count_submitted" ;;
  }

  dimension: rpt_assignment_score_reporting_sorted_lesson_types {
    type: string
    sql: ${TABLE}."rpt_assignment_score_reporting.sorted_lesson_types" ;;
  }

  dimension: rpt_assignment_score_reporting_sorted_lesson_types__sort_ {
    type: string
    sql: ${TABLE}."rpt_assignment_score_reporting.sorted_lesson_types__sort_" ;;
  }

  measure: count {
    type: count
    drill_fields: [institutions.id, districts.id]
  }
}
