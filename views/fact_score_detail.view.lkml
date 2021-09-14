view: fact_score_detail {
  sql_table_name: tcdw.fact_score_detail ;;

  dimension: assigned_by_id {
    type: number
    sql: ${TABLE}."assigned_by_id" ;;
  }

  dimension: assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."assignment_id" ;;
  }

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."district_id" ;;
  }

  dimension: duplicate_assessment_assignment {
    type: number
    sql: ${TABLE}."duplicate_assessment_assignment" ;;
  }

  dimension: grading_mode {
    type: string
    sql: ${TABLE}."grading_mode" ;;
  }

  dimension: growth_focus {
    type: string
    sql: ${TABLE}."growth_focus" ;;
  }

  dimension: institution_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."institution_id" ;;
  }

  dimension_group: last_assignment_response {
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
    sql: ${TABLE}."last_assignment_response_date" ;;
  }

  dimension: lesson_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_id" ;;
  }

  dimension: multiple_choice_score {
    type: number
    sql: ${TABLE}."multiple_choice_score" ;;
  }

  dimension: multiple_choice_score_percentage {
    type: number
    sql: ${TABLE}."multiple_choice_score_percentage" ;;
  }

  dimension: num_rubrics_graded {
    type: number
    sql: ${TABLE}."num_rubrics_graded" ;;
  }

  dimension: school_class_id {
    type: number
    sql: ${TABLE}."school_class_id" ;;
  }

  dimension: school_class_user_effective_date {
    type: string
    sql: ${TABLE}."school_class_user_effective_date" ;;
  }

  dimension: school_class_user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."school_class_user_id" ;;
  }

  dimension_group: student_assignment_archived {
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
    sql: ${TABLE}."student_assignment_archived_at" ;;
  }

  dimension_group: student_assignment_created {
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
    sql: ${TABLE}."student_assignment_created_at" ;;
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

  dimension_group: student_assignment_updated {
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
    sql: ${TABLE}."student_assignment_updated_at" ;;
  }

  dimension: student_final_writing {
    type: string
    sql: ${TABLE}."student_final_writing" ;;
  }

  dimension: student_id {
    type: number
    sql: ${TABLE}."student_id" ;;
  }

  dimension: teacher_comment {
    type: string
    sql: ${TABLE}."teacher_comment" ;;
  }

  dimension: teacher_highlight_comment_count {
    type: number
    sql: ${TABLE}."teacher_highlight_comment_count" ;;
  }

  dimension: teacher_id {
    type: number
    sql: ${TABLE}."teacher_id" ;;
  }

  dimension: total_rubric_cat {
    type: number
    sql: ${TABLE}."total_rubric_cat" ;;
  }

  dimension: word_count {
    type: number
    sql: ${TABLE}."word_count" ;;
  }

  dimension: writing_score {
    type: number
    sql: ${TABLE}."writing_score" ;;
  }

  dimension: writing_score_percentage {
    type: number
    sql: ${TABLE}."writing_score_percentage" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      districts.id,
      institutions.id,
      school_class_users.id,
      lessons.id,
      assignments.cerca_set_assignment_id,
      student_assignments.id
    ]
  }
}
