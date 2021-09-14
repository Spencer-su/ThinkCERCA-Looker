view: teacher_num_assignments_week {
  derived_table: {
    sql: select institution_id, teacher_id, avg(num_assignments_week) as avg_num_assignments_week
      from tcdw.rpt_teacher_rank
      group by institution_id, teacher_id, num_assignments_week
      order by institution_id, teacher_id
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: institution_id {
    type: number
    sql: ${TABLE}."institution_id" ;;
  }

  dimension: teacher_id {
    type: number
    sql: ${TABLE}."teacher_id" ;;
  }

  dimension: avg_num_assignments_week {
    type: number
    sql: ${TABLE}."avg_num_assignments_week" ;;
  }

  set: detail {
    fields: [institution_id, teacher_id, avg_num_assignments_week]
  }
}
