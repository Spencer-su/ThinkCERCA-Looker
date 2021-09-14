view: tmp_step_module_standards_by_grade_level {
  sql_table_name: tcdw.tmp_step_module_standards_by_grade_level ;;

  dimension: grade_level {
    type: number
    sql: ${TABLE}."grade_level" ;;
  }

  dimension: initiative_id {
    type: number
    sql: ${TABLE}."initiative_id" ;;
  }

  dimension: standard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."standard_id" ;;
  }

  dimension: step_module_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."step_module_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [step_modules.id, standards.id]
  }
}
