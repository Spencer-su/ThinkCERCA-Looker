view: dim_class_primary_teachers {
  sql_table_name: tcdw.dim_class_primary_teachers ;;

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

  dimension_group: current_sign_in {
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
    sql: ${TABLE}."current_sign_in_at" ;;
  }

  dimension_group: deleted {
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
    sql: ${TABLE}."deleted_at" ;;
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

  dimension: grade_level {
    type: number
    sql: ${TABLE}."grade_level" ;;
  }

  dimension_group: institution_confirmed {
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
    sql: ${TABLE}."institution_confirmed_at" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."last_name" ;;
  }

  dimension_group: last_sign_in {
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
    sql: ${TABLE}."last_sign_in_at" ;;
  }

  dimension: obfuscated_teacher_id {
    type: string
    sql: ${TABLE}."obfuscated_teacher_id" ;;
  }

  dimension: roles {
    type: number
    sql: ${TABLE}."roles" ;;
  }

  dimension: row_id {
    type: number
    sql: ${TABLE}."row_id" ;;
  }

  dimension: school_class_id {
    type: number
    sql: ${TABLE}."school_class_id" ;;
  }

  dimension: sign_in_count {
    type: number
    sql: ${TABLE}."sign_in_count" ;;
  }

  dimension: teacher_id {
    type: number
    sql: ${TABLE}."teacher_id" ;;
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

  dimension: username {
    type: string
    sql: ${TABLE}."username" ;;
  }

  measure: count {
    type: count
    drill_fields: [username, full_name, last_name, first_name]
  }
}
