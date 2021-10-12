view: dim_assignments {
  derived_table: {
    sql: select *
      from tcdw.dim_assignments
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: assignment_id {
    type: number
    sql: ${TABLE}."assignment_id" ;;
  }

  dimension_group: due_date {
    type: time
    sql: ${TABLE}."due_date" ;;
  }

  dimension_group: start_date {
    type: time
    sql: ${TABLE}."start_date" ;;
  }

  dimension: school_class_id {
    type: number
    sql: ${TABLE}."school_class_id" ;;
  }

  dimension: lesson_id {
    type: number
    sql: ${TABLE}."lesson_id" ;;
  }

  dimension: assigned_to_id {
    type: number
    sql: ${TABLE}."assigned_to_id" ;;
  }

  dimension: assigned_to_type {
    type: string
    sql: ${TABLE}."assigned_to_type" ;;
  }

  dimension: assigned_to_label {
    type: string
    sql: ${TABLE}."assigned_to_label" ;;
  }

  dimension: cerca_set_assignment_id {
    type: number
    sql: ${TABLE}."cerca_set_assignment_id" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: grading_mode {
    type: string
    sql: ${TABLE}."grading_mode" ;;
  }

  dimension: rubric_id {
    type: number
    sql: ${TABLE}."rubric_id" ;;
  }

  dimension: quick_score_scale {
    type: number
    sql: ${TABLE}."quick_score_scale" ;;
  }

  dimension: lesson_module_id {
    type: number
    sql: ${TABLE}."lesson_module_id" ;;
  }

  dimension: lesson_module_assignment_id {
    type: number
    sql: ${TABLE}."lesson_module_assignment_id" ;;
  }

  dimension: assigner {
    type: string
    sql: ${TABLE}."assigner" ;;
  }

  dimension: assigned_by_id {
    type: number
    sql: ${TABLE}."assigned_by_id" ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}."created_at" ;;
  }

  dimension_group: updated_at {
    type: time
    sql: ${TABLE}."updated_at" ;;
  }

  dimension_group: deleted_at {
    type: time
    sql: ${TABLE}."deleted_at" ;;
  }

  dimension_group: archived_at {
    type: time
    sql: ${TABLE}."archived_at" ;;
  }

  set: detail {
    fields: [
      assignment_id,
      due_date_time,
      start_date_time,
      school_class_id,
      lesson_id,
      assigned_to_id,
      assigned_to_type,
      assigned_to_label,
      cerca_set_assignment_id,
      status,
      grading_mode,
      rubric_id,
      quick_score_scale,
      lesson_module_id,
      lesson_module_assignment_id,
      assigner,
      assigned_by_id,
      created_at_time,
      updated_at_time,
      deleted_at_time,
      archived_at_time
    ]
  }
}
