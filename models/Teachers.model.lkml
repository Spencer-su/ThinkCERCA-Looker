connection: "tc_data_warehouse"

include: /views/rpt_teacher_rank.view.lkml
include: /views_hide/rpt_item_level_standards.view.lkml
include: /dim_assignments.view.lkml
include: /dim_lessons.view.lkml
include: /views/student_assignments.view.lkml

explore: rpt_teacher_rank {
  label: "Teacher Actions"
  view_label: "1. Assignments Overview"
  description: ""

  join: rpt_item_level_standards {
    view_label: "2. Grading Status"
    type: left_outer
    relationship: one_to_one
    sql_on: ${rpt_item_level_standards.teacher_id} = ${rpt_teacher_rank.teacher_id} ;;
  }
}
