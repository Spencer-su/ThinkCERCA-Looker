view: rpt_assignment_score_reporting {
  sql_table_name: tcdw.rpt_assignment_score_reporting ;;

  dimension: archived {
    type: yesno
    sql: ${TABLE}."archived" ;;
  }

  dimension: assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."assignment_id" ;;
  }

  dimension: count_score {
    type: yesno
    sql: ${TABLE}."count_score" ;;
  }

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."district_id" ;;
  }

  dimension: district_name {
    type: string
    sql: ${TABLE}."district_name" ;;
  }

  dimension: district_pid {
    type: string
    sql: ${TABLE}."district_pid" ;;
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

  dimension: duplicate_assessment_assignment {
    type: number
    sql: ${TABLE}."duplicate_assessment_assignment" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first_name" ;;
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

  dimension: institution_name {
    type: string
    sql: ${TABLE}."institution_name" ;;
  }

  dimension: institution_pid {
    type: string
    sql: ${TABLE}."institution_pid" ;;
  }

  dimension: institution_product_tier_value {
    type: string
    sql: ${TABLE}."institution_product_tier_value" ;;
  }

  dimension: institution_state {
    type: string
    sql: ${TABLE}."institution_state" ;;
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

  dimension: last_name {
    type: string
    sql: ${TABLE}."last_name" ;;
  }

  dimension: lesson_content_id {
    type: string
    sql: ${TABLE}."lesson_content_id" ;;
  }

  dimension: lesson_grade_level {
    type: string
    sql: ${TABLE}."lesson_grade_level" ;;
  }

  dimension: lesson_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_id" ;;
  }

  dimension: lesson_title {
    type: string
    sql: ${TABLE}."lesson_title" ;;
  }

  dimension: lesson_type {
    type: string
    sql: ${TABLE}."lesson_type" ;;
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

  dimension: percentage_rubric_graded {
    type: number
    sql: ${TABLE}."percentage_rubric_graded" ;;
  }

  dimension: rubric_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."rubric_id" ;;
  }

  dimension: school_class_grade_level {
    type: number
    sql: ${TABLE}."school_class_grade_level" ;;
  }

  dimension: school_class_id {
    type: number
    sql: ${TABLE}."school_class_id" ;;
  }

  dimension: school_class_subject {
    type: string
    sql: ${TABLE}."school_class_subject" ;;
  }

  dimension: school_class_title {
    type: string
    sql: ${TABLE}."school_class_title" ;;
  }

  dimension: school_class_user_effective_date {
    type: string
    sql: ${TABLE}."school_class_user_effective_date" ;;
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

  dimension: student_activated {
    type: number
    sql: ${TABLE}."student_activated" ;;
  }

  dimension: student_active_last_month {
    type: number
    sql: ${TABLE}."student_active_last_month" ;;
  }

  dimension: student_active_last_week {
    type: number
    sql: ${TABLE}."student_active_last_week" ;;
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

  dimension: student_assignment_grade_level {
    type: number
    sql: ${TABLE}."student_assignment_grade_level" ;;
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

  dimension: student_enrolled {
    type: number
    sql: ${TABLE}."student_enrolled" ;;
  }

  dimension: student_final_writing {
    type: string
    sql: ${TABLE}."student_final_writing" ;;
  }

  dimension: student_grade_level {
    type: number
    sql: ${TABLE}."student_grade_level" ;;
  }

  dimension: student_id {
    type: number
    sql: ${TABLE}."student_id" ;;
  }

  dimension: teacher_comment {
    type: string
    sql: ${TABLE}."teacher_comment" ;;
  }

  dimension: teacher_email {
    type: string
    sql: ${TABLE}."teacher_email" ;;
  }

  dimension: teacher_highlight_comment_count {
    type: number
    sql: ${TABLE}."teacher_highlight_comment_count" ;;
  }

  dimension: teacher_id {
    type: number
    sql: ${TABLE}."teacher_id" ;;
  }

  dimension: teacher_name {
    type: string
    sql: ${TABLE}."teacher_name" ;;
  }

  dimension: total_rubric_cat {
    type: number
    sql: ${TABLE}."total_rubric_cat" ;;
  }

  dimension: word_count {
    type: number
    sql: ${TABLE}."word_count" ;;
  }

  dimension: writing_lesson_category {
    type: string
    sql: ${TABLE}."writing_lesson_category" ;;
  }

  dimension: writing_score {
    type: number
    sql: ${TABLE}."writing_score" ;;
  }

  dimension: writing_score_percentage {
    type: number
    sql: ${TABLE}."writing_score_percentage" ;;
  }

  dimension: writing_standard_code {
    type: string
    sql: ${TABLE}."writing_standard_code" ;;
  }

  dimension: writing_standard_domain {
    type: string
    sql: ${TABLE}."writing_standard_domain" ;;
  }

  dimension: writing_standard_grade_level {
    type: string
    sql: ${TABLE}."writing_standard_grade_level" ;;
  }

  dimension: writing_standard_id {
    type: number
    sql: ${TABLE}."writing_standard_id" ;;
  }

  dimension: writing_standard_initiative {
    type: string
    sql: ${TABLE}."writing_standard_initiative" ;;
  }

  dimension: writing_standard_standard {
    type: string
    sql: ${TABLE}."writing_standard_standard" ;;
  }

  dimension: writing_standard_subdomain {
    type: string
    sql: ${TABLE}."writing_standard_subdomain" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      district_name,
      institution_name,
      first_name,
      last_name,
      teacher_name,
      lessons.id,
      assignments.cerca_set_assignment_id,
      rubrics.id,
      student_assignments.id,
      districts.id,
      institutions.id
    ]
  }
}
