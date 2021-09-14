view: users {
  sql_table_name: tcdw.users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension_group: _end {
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
    sql: ${TABLE}."_end" ;;
  }

  dimension: _hid {
    type: number
    value_format_name: id
    sql: ${TABLE}."_hid" ;;
  }

  dimension_group: _start {
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
    sql: ${TABLE}."_start" ;;
  }

  dimension: api_auth_token {
    type: string
    sql: ${TABLE}."api_auth_token" ;;
  }

  dimension_group: api_auth_token_expires {
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
    sql: ${TABLE}."api_auth_token_expires_at" ;;
  }

  dimension: authentication_token {
    type: string
    sql: ${TABLE}."authentication_token" ;;
  }

  dimension: avatar_url {
    type: string
    sql: ${TABLE}."avatar_url" ;;
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

  dimension: current_sign_in_ip {
    type: string
    sql: ${TABLE}."current_sign_in_ip" ;;
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

  dimension: encrypted_password {
    type: string
    sql: ${TABLE}."encrypted_password" ;;
  }

  dimension: features {
    type: number
    sql: ${TABLE}."features" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first_name" ;;
  }

  dimension: google_id {
    type: string
    sql: ${TABLE}."google_id" ;;
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

  dimension: last_sign_in_ip {
    type: string
    sql: ${TABLE}."last_sign_in_ip" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."phone" ;;
  }

  dimension: preferences {
    type: number
    sql: ${TABLE}."preferences" ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}."provider" ;;
  }

  dimension_group: remember_created {
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
    sql: ${TABLE}."remember_created_at" ;;
  }

  dimension_group: reset_password_sent {
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
    sql: ${TABLE}."reset_password_sent_at" ;;
  }

  dimension: reset_password_token {
    type: string
    sql: ${TABLE}."reset_password_token" ;;
  }

  dimension: roles {
    type: number
    sql: ${TABLE}."roles" ;;
  }

  dimension: roster_source {
    type: string
    sql: ${TABLE}."roster_source" ;;
  }

  dimension: sign_in_count {
    type: number
    sql: ${TABLE}."sign_in_count" ;;
  }

  dimension: sis_id {
    type: string
    sql: ${TABLE}."sis_id" ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}."uid" ;;
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

  dimension: verified {
    type: yesno
    sql: ${TABLE}."verified" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      username,
      dim_school_class_users.count,
      institution_users.count,
      school_class_users.count
    ]
  }
}
