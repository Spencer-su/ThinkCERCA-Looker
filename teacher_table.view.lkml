view: teacher_table {
  derived_table: {
    sql: SELECT sc.institution_id, scu.user_id, rtr.teacher_name,
          sum(CASE WHEN scu.sis_id IS NULL THEN 0 ELSE 1 END) AS class_creation_automatic,
          sum(CASE WHEN scu.sis_id IS NULL THEN 1 ELSE 0 END) AS roster,
          num_assignments_school_year AS behavior_assignment,
          num_assignments_graded_school_year AS behavior_assignment_graded
      FROM tcdw.school_classes sc
INNER JOIN tcdw.school_class_users scu ON sc.id = scu.school_class_id
LEFT JOIN tcdw.rpt_teacher_rank rtr ON rtr.teacher_id = scu.user_id
LEFT JOIN tcdw.institutions i ON i.id = sc.institution_id
    WHERE scu.membership_type = 3 AND i.district_id = 13761
  GROUP BY sc.institution_id, scu.user_id, teacher_name, num_assignments_school_year,
          num_assignments_graded_school_year
    LIMIT 100
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

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }

  dimension: teacher_name {
    type: string
    sql: ${TABLE}."teacher_name" ;;
  }

  dimension: class_creation_automatic {
    type: number
    sql: ${TABLE}."class_creation_automatic" ;;
  }

  dimension: roster {
    type: number
    sql: ${TABLE}."roster" ;;
  }

  dimension: behavior_assignment {
    type: number
    sql: ${TABLE}."behavior_assignment" ;;
  }

  dimension: behavior_assignment_graded {
    type: number
    sql: ${TABLE}."behavior_assignment_graded" ;;
  }

  set: detail {
    fields: [
      institution_id,
      user_id,
      teacher_name,
      class_creation_automatic,
      roster,
      behavior_assignment,
      behavior_assignment_graded
    ]
  }
}
