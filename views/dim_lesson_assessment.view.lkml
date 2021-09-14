view: dim_lesson_assessment {
  sql_table_name: tcdw.dim_lesson_assessment ;;

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

  dimension: growth_focus {
    type: string
    sql: ${TABLE}."growth_focus" ;;
  }

  dimension: lesson_assessment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_assessment_id" ;;
  }

  dimension: multiple_choice_score {
    type: number
    sql: ${TABLE}."multiple_choice_score" ;;
  }

  dimension: student_assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."student_assignment_id" ;;
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
    drill_fields: [student_assignments.id, lesson_assessments.id]
  }
}
