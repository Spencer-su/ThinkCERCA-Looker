view: dim_school_class_users {
  sql_table_name: tcdw.dim_school_class_users ;;

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

  dimension: effective {
    type: string
    sql: ${TABLE}."effective" ;;
  }

  dimension: institution_user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."institution_user_id" ;;
  }

  dimension: membership_type {
    type: number
    sql: ${TABLE}."membership_type" ;;
  }

  dimension: school_class_id {
    type: number
    sql: ${TABLE}."school_class_id" ;;
  }

  dimension: school_class_user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."school_class_user_id" ;;
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

  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."user_id" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      institution_users.id,
      users.id,
      users.first_name,
      users.last_name,
      users.username,
      school_class_users.id
    ]
  }
}
