view: student_assignments {
  sql_table_name: tcdw.student_assignments ;;
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

  dimension: ability_group {
    type: string
    sql: ${TABLE}."ability_group" ;;
  }

  dimension_group: archived {
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
    sql: ${TABLE}."archived_at" ;;
  }

  dimension: assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."assignment_id" ;;
  }

  dimension: attempted_item_ids {
    type: string
    sql: ${TABLE}."attempted_item_ids" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."comment" ;;
  }

  dimension: count_score {
    type: yesno
    sql: ${TABLE}."count_score" ;;
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

  dimension: current_attempt {
    type: number
    sql: ${TABLE}."current_attempt" ;;
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

  dimension: grade_level {
    type: number
    sql: ${TABLE}."grade_level" ;;
  }

  dimension: grader_id {
    type: number
    sql: ${TABLE}."grader_id" ;;
  }

  dimension: max_skill_points {
    type: number
    sql: ${TABLE}."max_skill_points" ;;
  }

  dimension: school_class_user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."school_class_user_id" ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}."score" ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}."session_id" ;;
  }

  dimension: skill_points {
    type: number
    sql: ${TABLE}."skill_points" ;;
  }

  dimension: stats {
    type: string
    sql: ${TABLE}."stats" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension_group: submission {
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
    sql: ${TABLE}."submission_date" ;;
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
      school_class_users.id,
      assignments.cerca_set_assignment_id,
      assessment_items.count,
      dim_assessment_items.count,
      dim_lesson_assessment.count,
      dim_student_assignments.count,
      fact_rubric_score.count,
      fact_score_detail.count,
      fact_teacher_highlight.count,
      lesson_assessments.count,
      looker_rpt_benchmark_perf_rubric_score_breakdown_base.count,
      non_duplicate_assessments_school_year.count,
      rpt_assignment_score_reporting.count,
      rpt_item_level_standards.count,
      rpt_rubric_score.count,
      sa_counts.count,
      stud_resp_word.count,
      student_responses.count
    ]
  }
}
