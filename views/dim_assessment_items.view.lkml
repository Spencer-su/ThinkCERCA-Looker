view: dim_assessment_items {
  sql_table_name: tcdw.dim_assessment_items ;;

  dimension: assessment_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."assessment_item_id" ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}."comment" ;;
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

  dimension: data {
    type: string
    sql: ${TABLE}."data" ;;
  }

  dimension: grades_id {
    type: number
    sql: ${TABLE}."grades_id" ;;
  }

  dimension: grades_type {
    type: string
    sql: ${TABLE}."grades_type" ;;
  }

  dimension: lesson_assessment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_assessment_id" ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}."score" ;;
  }

  dimension: student_assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."student_assignment_id" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
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
    drill_fields: [lesson_assessments.id, assessment_items.id, student_assignments.id]
  }
}
