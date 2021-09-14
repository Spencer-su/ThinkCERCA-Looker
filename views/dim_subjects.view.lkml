view: dim_subjects {
  sql_table_name: tcdw.dim_subjects ;;

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

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}."reference" ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}."sort_order" ;;
  }

  dimension: subject_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."subject_id" ;;
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
    drill_fields: [name, subjects.name, subjects.id]
  }
}
