view: dim_student_assignments {
  sql_table_name: tcdw.dim_student_assignments ;;

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

  dimension: max_skill_points {
    type: number
    sql: ${TABLE}."max_skill_points" ;;
  }

  dimension: school_class_user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."school_class_user_id" ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}."session_id" ;;
  }

  dimension: skill_lesson_score {
    type: number
    sql: ${TABLE}."skill_lesson_score" ;;
  }

  dimension: skill_points {
    type: number
    sql: ${TABLE}."skill_points" ;;
  }

  dimension: stats {
    type: string
    sql: ${TABLE}."stats" ;;
  }

  dimension: student_assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."student_assignment_id" ;;
  }

  dimension: student_assignment_status {
    type: string
    sql: ${TABLE}."student_assignment_status" ;;
  }

  dimension_group: student_assignment_submission {
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
    sql: ${TABLE}."student_assignment_submission_date" ;;
  }

  dimension: teacher_comment {
    type: string
    sql: ${TABLE}."teacher_comment" ;;
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

  dimension: writing_score {
    type: number
    sql: ${TABLE}."writing_score" ;;
  }

  measure: count {
    type: count
    drill_fields: [student_assignments.id, assignments.cerca_set_assignment_id, school_class_users.id]
  }
}
