view: dim_rubric_categories {
  sql_table_name: tcdw.dim_rubric_categories ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}."category_id" ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}."position" ;;
  }

  dimension: rubric_category_id {
    type: number
    sql: ${TABLE}."rubric_category_id" ;;
  }

  dimension: rubric_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."rubric_id" ;;
  }

  dimension: scoring_weight {
    type: number
    sql: ${TABLE}."scoring_weight" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
  }

  measure: count {
    type: count
    drill_fields: [rubrics.id]
  }
}
