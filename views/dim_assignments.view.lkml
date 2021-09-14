view: dim_assignments {
  sql_table_name: tcdw.dim_assignments ;;

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

  dimension: assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."assignment_id" ;;
  }

  dimension: cerca_set_assignment_id {
    type: number
    sql: ${TABLE}."cerca_set_assignment_id" ;;
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

  dimension: grading_mode {
    type: string
    sql: ${TABLE}."grading_mode" ;;
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
    drill_fields: [lessons.id, lesson_modules.id, rubrics.id, assignments.cerca_set_assignment_id]
  }
}
