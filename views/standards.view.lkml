view: standards {
  sql_table_name: tcdw.standards ;;
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

  dimension: code {
    type: string
    sql: ${TABLE}."code" ;;
  }

  dimension: component {
    type: string
    sql: ${TABLE}."component" ;;
  }

  dimension: domain_code {
    type: string
    sql: ${TABLE}."domain_code" ;;
  }

  dimension: framework_id {
    type: number
    sql: ${TABLE}."framework_id" ;;
  }

  dimension: grade_level {
    type: string
    sql: ${TABLE}."grade_level" ;;
  }

  dimension: initiative_id {
    type: number
    sql: ${TABLE}."initiative_id" ;;
  }

  dimension: parent_standard_id {
    type: number
    sql: ${TABLE}."parent_standard_id" ;;
  }

  dimension: set {
    type: string
    sql: ${TABLE}."set" ;;
  }

  dimension: standard {
    type: string
    sql: ${TABLE}."standard" ;;
  }

  dimension: statement {
    type: string
    sql: ${TABLE}."statement" ;;
  }

  dimension: subdomain_code {
    type: string
    sql: ${TABLE}."subdomain_code" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      dim_rubrics.count,
      lesson_standards.count,
      rpt_item_level_standards.count,
      rubrics.count,
      step_module_standards.count,
      tmp_standards_grade_levels.count,
      tmp_step_module_standards_by_grade_level.count
    ]
  }
}
