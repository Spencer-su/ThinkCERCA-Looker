view: school_classes {
  sql_table_name: tcdw.school_classes ;;
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

  dimension_group: archived {
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
    sql: ${TABLE}."archived_at" ;;
  }

  dimension: benchmark_grade_level {
    type: number
    sql: ${TABLE}."benchmark_grade_level" ;;
  }

  dimension: course_code {
    type: string
    sql: ${TABLE}."course_code" ;;
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

  dimension_group: deleted {
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
    sql: ${TABLE}."deleted_at" ;;
  }

  dimension: display_title {
    type: string
    sql: ${TABLE}."display_title" ;;
  }

  dimension_group: end {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."end_date" ;;
  }

  dimension: grade_level {
    type: number
    sql: ${TABLE}."grade_level" ;;
  }

  dimension: institution_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."institution_id" ;;
  }

  dimension: oneroster_attributes {
    type: string
    sql: ${TABLE}."oneroster_attributes" ;;
  }

  dimension: provider {
    type: string
    sql: ${TABLE}."provider" ;;
  }

  dimension: roster_source {
    type: string
    sql: ${TABLE}."roster_source" ;;
  }

  dimension: rostering_section_id {
    type: number
    sql: ${TABLE}."rostering_section_id" ;;
  }

  dimension: sis_id {
    type: string
    sql: ${TABLE}."sis_id" ;;
  }

  dimension_group: start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."start_date" ;;
  }

  dimension: stats {
    type: string
    sql: ${TABLE}."stats" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."subject" ;;
  }

  dimension: term {
    type: number
    sql: ${TABLE}."term" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
  }

  dimension: uid {
    type: string
    sql: ${TABLE}."uid" ;;
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

  dimension: year {
    type: number
    sql: ${TABLE}."year" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, institutions.id]
  }
}
