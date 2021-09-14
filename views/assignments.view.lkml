view: assignments {
  sql_table_name: tcdw.assignments ;;
  drill_fields: [cerca_set_assignment_id]

  dimension: cerca_set_assignment_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."cerca_set_assignment_id" ;;
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

  dimension: assigned_by_id {
    type: number
    sql: ${TABLE}."assigned_by_id" ;;
  }

  dimension: assigned_to_id {
    type: number
    sql: ${TABLE}."assigned_to_id" ;;
  }

  dimension: assigned_to_label {
    type: string
    sql: ${TABLE}."assigned_to_label" ;;
  }

  dimension: assigned_to_type {
    type: string
    sql: ${TABLE}."assigned_to_type" ;;
  }

  dimension: assigner {
    type: string
    sql: ${TABLE}."assigner" ;;
  }

  dimension: beta {
    type: yesno
    sql: ${TABLE}."beta" ;;
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

  dimension_group: due {
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
    sql: ${TABLE}."due_date" ;;
  }

  dimension: flexible_lesson_group_id {
    type: number
    sql: ${TABLE}."flexible_lesson_group_id" ;;
  }

  dimension: flexible_lesson_id {
    type: number
    sql: ${TABLE}."flexible_lesson_id" ;;
  }

  dimension: grading_mode {
    type: string
    sql: ${TABLE}."grading_mode" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: lesson_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_id" ;;
  }

  dimension: lesson_module_assignment_id {
    type: number
    sql: ${TABLE}."lesson_module_assignment_id" ;;
  }

  dimension: lesson_module_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_module_id" ;;
  }

  dimension: quick_score_scale {
    type: number
    sql: ${TABLE}."quick_score_scale" ;;
  }

  dimension: rubric_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."rubric_id" ;;
  }

  dimension: school_class_id {
    type: number
    sql: ${TABLE}."school_class_id" ;;
  }

  dimension_group: start {
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
    sql: ${TABLE}."start_date" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: ui_version {
    type: string
    sql: ${TABLE}."ui_version" ;;
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
      cerca_set_assignment_id,
      lessons.id,
      lesson_modules.id,
      rubrics.id,
      dim_assignments.count,
      dim_student_assignments.count,
      fact_score_detail.count,
      fact_teacher_highlight.count,
      rpt_assignment_score_reporting.count,
      rpt_item_level_standards.count,
      student_assignments.count
    ]
  }
}
