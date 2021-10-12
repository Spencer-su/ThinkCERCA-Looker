view: dim_lessons {
  derived_table: {
    sql: select *
      from tcdw.dim_lessons
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: lesson_id {
    type: number
    sql: ${TABLE}."lesson_id" ;;
  }

  dimension: lesson_title {
    type: string
    sql: ${TABLE}."lesson_title" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: key_question {
    type: string
    sql: ${TABLE}."key_question" ;;
  }

  dimension: cover_photo_url {
    type: string
    sql: ${TABLE}."cover_photo_url" ;;
  }

  dimension: reading_id {
    type: number
    sql: ${TABLE}."reading_id" ;;
  }

  dimension: cerca_set_id {
    type: number
    sql: ${TABLE}."cerca_set_id" ;;
  }

  dimension_group: created_at {
    type: time
    sql: ${TABLE}."created_at" ;;
  }

  dimension_group: updated_at {
    type: time
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: creator_id {
    type: number
    sql: ${TABLE}."creator_id" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: grade_band_min {
    type: number
    sql: ${TABLE}."grade_band_min" ;;
  }

  dimension: grade_band_max {
    type: number
    sql: ${TABLE}."grade_band_max" ;;
  }

  dimension: lesson_grade_level {
    type: string
    sql: ${TABLE}."lesson_grade_level" ;;
  }

  dimension: assign_mode {
    type: number
    sql: ${TABLE}."assign_mode" ;;
  }

  dimension: content_id {
    type: string
    sql: ${TABLE}."content_id" ;;
  }

  dimension: version {
    type: number
    sql: ${TABLE}."version" ;;
  }

  dimension: lesson_type_code {
    type: number
    sql: ${TABLE}."lesson_type_code" ;;
  }

  dimension: lesson_subtype_code {
    type: number
    sql: ${TABLE}."lesson_subtype_code" ;;
  }

  dimension: lesson_type {
    type: string
    sql: ${TABLE}."lesson_type" ;;
  }

  dimension: writing_lesson_category {
    type: string
    sql: ${TABLE}."writing_lesson_category" ;;
  }

  dimension: resource_url {
    type: string
    sql: ${TABLE}."resource_url" ;;
  }

  dimension: theme {
    type: string
    sql: ${TABLE}."theme" ;;
  }

  dimension: strands {
    type: string
    sql: ${TABLE}."strands" ;;
  }

  dimension: collection_id {
    type: number
    sql: ${TABLE}."collection_id" ;;
  }

  dimension: learnosity_id {
    type: string
    sql: ${TABLE}."learnosity_id" ;;
  }

  dimension: pre_requisites {
    type: string
    sql: ${TABLE}."pre_requisites" ;;
  }

  dimension: item_pool_reference {
    type: string
    sql: ${TABLE}."item_pool_reference" ;;
  }

  set: detail {
    fields: [
      lesson_id,
      lesson_title,
      description,
      key_question,
      cover_photo_url,
      reading_id,
      cerca_set_id,
      created_at_time,
      updated_at_time,
      creator_id,
      status,
      grade_band_min,
      grade_band_max,
      lesson_grade_level,
      assign_mode,
      content_id,
      version,
      lesson_type_code,
      lesson_subtype_code,
      lesson_type,
      writing_lesson_category,
      resource_url,
      theme,
      strands,
      collection_id,
      learnosity_id,
      pre_requisites,
      item_pool_reference
    ]
  }
}
