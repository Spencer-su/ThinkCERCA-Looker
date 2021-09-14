view: rpt_student_summary {
  sql_table_name: tcdw.rpt_student_summary ;;

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

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first_name" ;;
  }

  dimension: full_name {
    type: string
    sql: ${TABLE}."full_name" ;;
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

  dimension: last_name {
    type: string
    sql: ${TABLE}."last_name" ;;
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

  dimension: student_enrolled {
    type: number
    sql: ${TABLE}."student_enrolled" ;;
  }

  dimension: student_grade_level {
    type: number
    sql: ${TABLE}."student_grade_level" ;;
  }

  dimension: student_id {
    type: number
    sql: ${TABLE}."student_id" ;;
  }

  dimension: student_obfuscated_id {
    type: string
    sql: ${TABLE}."student_obfuscated_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      last_name,
      district_name,
      institution_name,
      first_name,
      full_name,
      districts.id,
      institutions.id
    ]
  }
}
