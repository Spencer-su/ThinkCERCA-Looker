view: dim_rubrics {
  sql_table_name: tcdw.dim_rubrics ;;

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

  dimension_group: retired {
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
    sql: ${TABLE}."retired_at" ;;
  }

  dimension: rubric_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."rubric_id" ;;
  }

  dimension: standard {
    type: string
    sql: ${TABLE}."standard" ;;
  }

  dimension: standard_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."standard_id" ;;
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
    drill_fields: [standards.id, rubrics.id]
  }
}
