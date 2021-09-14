view: dim_user_roles {
  sql_table_name: tcdw.dim_user_roles ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: role {
    type: string
    sql: ${TABLE}."role" ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
