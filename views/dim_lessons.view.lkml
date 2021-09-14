view: dim_lessons {
  sql_table_name: tcdw.dim_lessons ;;

  dimension: assign_mode {
    type: number
    sql: ${TABLE}."assign_mode" ;;
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

  dimension: lesson_grade_level {
    type: string
    sql: ${TABLE}."lesson_grade_level" ;;
  }

  dimension: lesson_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."lesson_id" ;;
  }

  dimension: lesson_subtype_code {
    type: number
    sql: ${TABLE}."lesson_subtype_code" ;;
  }

  dimension: lesson_title {
    type: string
    sql: ${TABLE}."lesson_title" ;;
  }

  dimension: lesson_type {
    type: string
    sql: ${TABLE}."lesson_type" ;;
  }

  dimension: lesson_type_code {
    type: number
    sql: ${TABLE}."lesson_type_code" ;;
  }

  dimension: pre_requisites {
    type: string
    sql: ${TABLE}."pre_requisites" ;;
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

  dimension: theme {
    type: string
    sql: ${TABLE}."theme" ;;
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

  dimension: writing_lesson_category {
    type: string
    sql: ${TABLE}."writing_lesson_category" ;;
  }

  measure: count {
    type: count
    drill_fields: [lessons.id]
  }
}
