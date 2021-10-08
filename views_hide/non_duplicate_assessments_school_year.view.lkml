view: non_duplicate_assessments_school_year {
  sql_table_name: tcdw.non_duplicate_assessments_school_year ;;

  dimension: institution_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."institution_id" ;;
  }

  dimension: school_year {
    type: string
    sql: ${TABLE}."school_year" ;;
  }

  dimension: student_assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."student_assignment_id" ;;
  }

  dimension: student_id {
    type: number
    sql: ${TABLE}."student_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [student_assignments.id, institutions.id]
  }
}
