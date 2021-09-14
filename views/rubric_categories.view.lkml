view: rubric_categories {
  sql_table_name: tcdw.rubric_categories ;;
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

  dimension: category_id {
    type: number
    sql: ${TABLE}."category_id" ;;
  }

  dimension: name_i18n_key {
    type: string
    sql: ${TABLE}."name_i18n_key" ;;
  }

  dimension: position {
    type: number
    sql: ${TABLE}."position" ;;
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
    drill_fields: [id, rubrics.id]
  }
}
