view: districts {
  sql_table_name: tcdw.districts ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: _end {
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
    sql: ${TABLE}."_end" ;;
  }

  dimension: _hid {
    type: number
    value_format_name: id
    sql: ${TABLE}."_hid" ;;
  }

  dimension_group: _start {
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
    sql: ${TABLE}."_start" ;;
  }

  dimension: allow_clever_sso {
    type: yesno
    sql: ${TABLE}."allow_clever_sso" ;;
  }

  dimension: allow_google_sso {
    type: yesno
    sql: ${TABLE}."allow_google_sso" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}."created_at" ;;
  }

  dimension: custom_looker_embed_url {
    type: string
    sql: ${TABLE}."custom_looker_embed_url" ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}."deleted_at" ;;
  }

  dimension: features {
    type: number
    sql: ${TABLE}."features" ;;
  }

  dimension: initiative_id {
    type: number
    sql: ${TABLE}."initiative_id" ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}."pid" ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}."provider" ;;
  }

  dimension: roster_data_path {
    type: string
    sql: ${TABLE}."roster_data_path" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: stats {
    type: string
    sql: ${TABLE}."stats" ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}."time_zone" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}."uid" ;;
  }

  dimension_group: updated {
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
    sql: ${TABLE}."updated_at" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      dim_districts.count,
      dim_institutions.count,
      fact_score_detail.count,
      fact_student_activity.count,
      fact_student_activity_milestone.count,
      fact_teacher_counts_month.count,
      fact_teacher_counts_school_year.count,
      fact_teacher_counts_week.count,
      fact_teacher_highlight.count,
      fact_teacher_rank.count,
      institutions.count,
      looker_pivot_rpt_benchmark_perf_rubric_score_breakdown_graded_l.count,
      looker_rpt_benchmark_perf_rubric_score_breakdown_base.count,
      looker_rpt_benchmark_perf_rubric_score_breakdown_graded_lessons.count,
      looker_rpt_benchmark_perf_rubric_score_breakdown_rubric_categor.count,
      looker_rpt_lesson_usage_assignments_submitted_by_type.count,
      looker_rpt_std_perf_writing_lesson_domain_avg_writing.count,
      looker_rpt_writing_lesson_perf_overall_score_avg_writing_score_.count,
      looker_rpt_writing_lesson_rubric_category_perf_count_no_fully_g.count,
      looker_rpt_writing_lesson_rubric_category_perf_mastery_levels_d.count,
      looker_rpt_writing_lesson_rubric_category_perf_writing_lesson_a.count,
      rpt_assignment_score_reporting.count,
      rpt_item_level_standards.count,
      rpt_rubric_score.count,
      rpt_student_summary.count,
      rpt_teacher_rank.count
    ]
  }
}
