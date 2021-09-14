view: institutions {
  sql_table_name: tcdw.institutions ;;
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

  dimension: address1 {
    type: string
    sql: ${TABLE}."address1" ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}."address2" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}."code" ;;
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

  dimension: district_grouping {
    type: string
    sql: ${TABLE}."district_grouping" ;;
  }

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."district_id" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: features {
    type: number
    sql: ${TABLE}."features" ;;
  }

  dimension: licensed_grade_levels {
    type: string
    sql: ${TABLE}."licensed_grade_levels" ;;
  }

  dimension: nces_id {
    type: string
    sql: ${TABLE}."nces_id" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."phone" ;;
  }

  dimension: pid {
    type: string
    sql: ${TABLE}."pid" ;;
  }

  dimension: post_code {
    type: string
    sql: ${TABLE}."post_code" ;;
  }

  dimension: potential_grade_levels {
    type: string
    sql: ${TABLE}."potential_grade_levels" ;;
  }

  dimension: product_tier {
    type: number
    sql: ${TABLE}."product_tier" ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}."provider" ;;
  }

  dimension: roster_source {
    type: string
    sql: ${TABLE}."roster_source" ;;
  }

  dimension: sis_id {
    type: string
    sql: ${TABLE}."sis_id" ;;
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

  dimension: verified {
    type: yesno
    sql: ${TABLE}."verified" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      districts.id,
      dim_institutions.count,
      dim_school_classes.count,
      fact_score_detail.count,
      fact_student_activity.count,
      fact_student_activity_milestone.count,
      fact_teacher_counts_month.count,
      fact_teacher_counts_school_year.count,
      fact_teacher_counts_week.count,
      fact_teacher_highlight.count,
      fact_teacher_rank.count,
      institution_users.count,
      looker_rpt_lesson_usage_assignments_submitted_by_type.count,
      looker_rpt_std_perf_writing_lesson_domain_avg_writing.count,
      looker_rpt_writing_lesson_perf_overall_score_avg_writing_score_.count,
      non_duplicate_assessments_school_year.count,
      rpt_assignment_score_reporting.count,
      rpt_item_level_standards.count,
      rpt_student_summary.count,
      rpt_teacher_rank.count,
      school_classes.count
    ]
  }
}
