view: stud_resp_word {
  sql_table_name: tcdw.stud_resp_word ;;

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

  dimension: student_assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."student_assignment_id" ;;
  }

  dimension: student_final_writing {
    type: string
    sql: ${TABLE}."student_final_writing" ;;
  }

  dimension: student_response_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."student_response_id" ;;
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

  dimension: word_count {
    type: number
    sql: ${TABLE}."word_count" ;;
  }

  measure: count {
    type: count
    drill_fields: [student_responses.id, student_assignments.id]
  }
}
