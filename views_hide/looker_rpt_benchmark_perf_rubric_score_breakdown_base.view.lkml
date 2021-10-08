view: looker_rpt_benchmark_perf_rubric_score_breakdown_base {
  sql_table_name: tcdw.looker_rpt_benchmark_perf_rubric_score_breakdown_base ;;

  dimension: category {
    type: string
    sql: ${TABLE}."category" ;;
  }

  dimension: category_score {
    type: number
    sql: ${TABLE}."category_score" ;;
  }

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."district_id" ;;
  }

  dimension: enrolled_grade {
    type: number
    sql: ${TABLE}."enrolled_grade" ;;
  }

  dimension: school_id {
    type: number
    sql: ${TABLE}."school_id" ;;
  }

  dimension: school_name {
    type: string
    sql: ${TABLE}."school_name" ;;
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

  dimension: writing_score {
    type: number
    sql: ${TABLE}."writing_score" ;;
  }

  measure: count {
    type: count
    drill_fields: [school_name, student_assignments.id, districts.id]
  }
}
