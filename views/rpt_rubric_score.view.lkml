view: rpt_rubric_score {
  sql_table_name: tcdw.rpt_rubric_score ;;

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension: category_score {
    type: number
    sql: ${TABLE}."category_score" ;;
  }

  dimension: class_grade_level {
    type: number
    sql: ${TABLE}."class_grade_level" ;;
  }

  dimension: class_id {
    type: number
    sql: ${TABLE}."class_id" ;;
  }

  dimension: class_name {
    type: string
    sql: ${TABLE}."class_name" ;;
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

  dimension: enrolled_grade {
    type: number
    sql: ${TABLE}."enrolled_grade" ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}."full_name" ;;
  }

  dimension: fully_graded {
    type: yesno
    sql: ${TABLE}."fully_graded" ;;
  }

  dimension: lesson_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_id" ;;
  }

  dimension: lesson_name {
    type: string
    sql: ${TABLE}."lesson_name" ;;
  }

  dimension: lesson_type {
    type: string
    sql: ${TABLE}."lesson_type" ;;
  }

  dimension: mc_score {
    type: number
    sql: ${TABLE}."mc_score" ;;
  }

  dimension: num_categories_graded {
    type: number
    sql: ${TABLE}."num_categories_graded" ;;
  }

  dimension: percent_graded {
    type: number
    sql: ${TABLE}."percent_graded" ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}."position" ;;
  }

  dimension_group: retired {
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
    sql: ${TABLE}."retired_at" ;;
  }

  dimension: rubric_category_id {
    type: number
    sql: ${TABLE}."rubric_category_id" ;;
  }

  dimension: rubric_grade_level {
    type: string
    sql: ${TABLE}."rubric_grade_level" ;;
  }

  dimension: rubric_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."rubric_id" ;;
  }

  dimension: school_class_subject {
    type: string
    sql: ${TABLE}."school_class_subject" ;;
  }

  dimension: school_id {
    type: number
    sql: ${TABLE}."school_id" ;;
  }

  dimension: school_name {
    type: string
    sql: ${TABLE}."school_name" ;;
  }

  dimension: school_year {
    type: string
    sql: ${TABLE}."school_year" ;;
  }

  dimension: standard {
    type: string
    sql: ${TABLE}."standard" ;;
  }

  dimension: standard_type {
    type: string
    sql: ${TABLE}."standard_type" ;;
  }

  dimension: student_assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."student_assignment_id" ;;
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

  dimension: student_id {
    type: number
    sql: ${TABLE}."student_id" ;;
  }

  dimension: teacher_email {
    type: string
    sql: ${TABLE}."teacher_email" ;;
  }

  dimension: teacher_id {
    type: number
    sql: ${TABLE}."teacher_id" ;;
  }

  dimension: teacher_name {
    type: string
    sql: ${TABLE}."teacher_name" ;;
  }

  dimension: total_rubric_categories {
    type: number
    sql: ${TABLE}."total_rubric_categories" ;;
  }

  dimension: word_count {
    type: number
    sql: ${TABLE}."word_count" ;;
  }

  dimension: writing_score {
    type: number
    sql: ${TABLE}."writing_score" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      school_name,
      class_name,
      lesson_name,
      teacher_name,
      full_name,
      district_name,
      student_assignments.id,
      districts.id,
      lessons.id,
      rubrics.id
    ]
  }
}
