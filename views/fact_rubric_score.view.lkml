view: fact_rubric_score {
  sql_table_name: tcdw.fact_rubric_score ;;

  dimension: graded_flag {
    type: number
    sql: ${TABLE}."graded_flag" ;;
  }

  dimension: rubric_category {
    type: string
    sql: ${TABLE}."rubric_category" ;;
  }

  dimension: rubric_category_id {
    type: number
    sql: ${TABLE}."rubric_category_id" ;;
  }

  dimension: rubric_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."rubric_id" ;;
  }

  dimension: rubric_score {
    type: number
    sql: ${TABLE}."rubric_score" ;;
  }

  dimension: student_assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."student_assignment_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [student_assignments.id, rubrics.id]
  }
}
