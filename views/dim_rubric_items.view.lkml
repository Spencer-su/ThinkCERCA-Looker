view: dim_rubric_items {
  sql_table_name: tcdw.dim_rubric_items ;;

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

  dimension: mastery_level {
    type: number
    sql: ${TABLE}."mastery_level" ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}."position" ;;
  }

  dimension: rubric_category_id {
    type: number
    sql: ${TABLE}."rubric_category_id" ;;
  }

  dimension: rubric_item_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."rubric_item_id" ;;
  }

  dimension: statement {
    type: string
    sql: ${TABLE}."statement" ;;
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
    drill_fields: [rubric_items.id]
  }
}
