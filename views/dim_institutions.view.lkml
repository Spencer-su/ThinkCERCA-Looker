view: dim_institutions {
  sql_table_name: tcdw.dim_institutions ;;

  dimension: address1 {
    type: string
    sql: ${TABLE}."address1" ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}."address2" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}."code" ;;
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

  dimension: district_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."district_id" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
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

  dimension: phone {
    type: string
    sql: ${TABLE}."phone" ;;
  }

  dimension: post_code {
    type: string
    sql: ${TABLE}."post_code" ;;
  }

  dimension: product_tier {
    type: number
    sql: ${TABLE}."product_tier" ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}."provider" ;;
  }

  dimension: time_zone {
    type: string
    sql: ${TABLE}."time_zone" ;;
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

  measure: count {
    type: count
    drill_fields: [institution_name, districts.id, institutions.id]
  }
}
