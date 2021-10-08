view: student_responses {
  sql_table_name: tcdw.student_responses ;;
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

  dimension: answers_id {
    type: number
    sql: ${TABLE}."answers_id" ;;
  }

  dimension: answers_type {
    type: string
    sql: ${TABLE}."answers_type" ;;
  }

  dimension: attempt_number {
    type: number
    sql: ${TABLE}."attempt_number" ;;
  }

  dimension: completed {
    type: yesno
    sql: ${TABLE}."completed" ;;
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

  dimension: data {
    type: string
    sql: ${TABLE}."data" ;;
  }

  dimension: data_md5 {
    type: string
    sql: ${TABLE}."data_md5" ;;
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

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: student_assignment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."student_assignment_id" ;;
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
    drill_fields: [id, student_assignments.id, rpt_item_level_standards.count, stud_resp_word.count]
  }
}
