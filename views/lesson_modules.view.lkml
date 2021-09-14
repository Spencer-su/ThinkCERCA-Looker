view: lesson_modules {
  sql_table_name: tcdw.lesson_modules ;;
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

  dimension: benchmark_type {
    type: number
    sql: ${TABLE}."benchmark_type" ;;
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}."content_id" ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: hero_image_url {
    type: string
    sql: ${TABLE}."hero_image_url" ;;
  }

  dimension: key_question {
    type: string
    sql: ${TABLE}."key_question" ;;
  }

  dimension: legacy_id {
    type: number
    sql: ${TABLE}."legacy_id" ;;
  }

  dimension: primary_reading {
    type: string
    sql: ${TABLE}."primary_reading" ;;
  }

  dimension: primary_writing {
    type: string
    sql: ${TABLE}."primary_writing" ;;
  }

  dimension: thumbnail_image_url {
    type: string
    sql: ${TABLE}."thumbnail_image_url" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
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
    drill_fields: [id, assignments.count, dim_assignments.count, dim_lesson_module.count, lesson_modules_lessons.count]
  }
}
