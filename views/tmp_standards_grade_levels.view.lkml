view: tmp_standards_grade_levels {
  sql_table_name: tcdw.tmp_standards_grade_levels ;;

  dimension: code {
    type: string
    sql: ${TABLE}."code" ;;
  }

  dimension: domain_code {
    type: string
    sql: ${TABLE}."domain_code" ;;
  }

  dimension: grade_level {
    type: number
    sql: ${TABLE}."grade_level" ;;
  }

  dimension: initiative_id {
    type: number
    sql: ${TABLE}."initiative_id" ;;
  }

  dimension: standard {
    type: string
    sql: ${TABLE}."standard" ;;
  }

  dimension: standard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."standard_id" ;;
  }

  dimension: subdomain_code {
    type: string
    sql: ${TABLE}."subdomain_code" ;;
  }

  measure: count {
    type: count
    drill_fields: [standards.id]
  }
}
