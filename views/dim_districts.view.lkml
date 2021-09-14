view: dim_districts {
  sql_table_name: tcdw.dim_districts ;;

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
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

  dimension: district_name {
    type: string
    sql: ${TABLE}."district_name" ;;
  }

  dimension: district_pid {
    type: string
    sql: ${TABLE}."district_pid" ;;
  }

  dimension: initiative_id {
    type: number
    sql: ${TABLE}."initiative_id" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: stats {
    type: string
    sql: ${TABLE}."stats" ;;
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
    drill_fields: [district_name, districts.id]
  }
}
