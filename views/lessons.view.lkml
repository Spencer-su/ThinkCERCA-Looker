view: lessons {
  sql_table_name: tcdw.lessons ;;
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

  dimension: assign_mode {
    type: number
    sql: ${TABLE}."assign_mode" ;;
  }

  dimension: badge_url {
    type: string
    sql: ${TABLE}."badge_url" ;;
  }

  dimension: cerca_set_id {
    type: number
    sql: ${TABLE}."cerca_set_id" ;;
  }

  dimension: collection_id {
    type: number
    sql: ${TABLE}."collection_id" ;;
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}."content_id" ;;
  }

  dimension: cover_photo_url {
    type: string
    sql: ${TABLE}."cover_photo_url" ;;
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

  dimension: creator_id {
    type: number
    sql: ${TABLE}."creator_id" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: grade_band_max {
    type: number
    sql: ${TABLE}."grade_band_max" ;;
  }

  dimension: grade_band_min {
    type: number
    sql: ${TABLE}."grade_band_min" ;;
  }

  dimension: item_pool_reference {
    type: string
    sql: ${TABLE}."item_pool_reference" ;;
  }

  dimension: key_question {
    type: string
    sql: ${TABLE}."key_question" ;;
  }

  dimension: learnosity_id {
    type: string
    sql: ${TABLE}."learnosity_id" ;;
  }

  dimension: lesson_type {
    type: number
    sql: ${TABLE}."lesson_type" ;;
  }

  dimension: pre_requisites {
    type: string
    sql: ${TABLE}."pre_requisites" ;;
  }

  dimension: product_tier {
    type: number
    sql: ${TABLE}."product_tier" ;;
  }

  dimension: reading_id {
    type: number
    sql: ${TABLE}."reading_id" ;;
  }

  dimension: resource_url {
    type: string
    sql: ${TABLE}."resource_url" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: strands {
    type: string
    sql: ${TABLE}."strands" ;;
  }

  dimension: subtype {
    type: number
    sql: ${TABLE}."subtype" ;;
  }

  dimension: theme {
    type: string
    sql: ${TABLE}."theme" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
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

  dimension: version {
    type: number
    sql: ${TABLE}."version" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      assignments.count,
      dim_assignments.count,
      dim_lesson_subjects.count,
      dim_lessons.count,
      fact_score_detail.count,
      lesson_modules_lessons.count,
      lesson_standards.count,
      lesson_steps.count,
      lesson_subjects.count,
      rpt_assignment_score_reporting.count,
      rpt_item_level_standards.count,
      rpt_rubric_score.count
    ]
  }
}
