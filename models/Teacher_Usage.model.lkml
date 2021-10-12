connection: "tc_data_warehouse"

include: /views/rpt_teacher_rank.view.lkml
include: /views/school_class_users.view.lkml
include: /views_hide/rpt_item_level_standards.view.lkml

explore: rpt_teacher_rank {
  label: "Teacher Activities"
  view_label: "1. Assignments Given and Graded"
  description: ""

  join: rpt_item_level_standards {
    view_label: "2. Student Information"
    type: left_outer
    relationship:  many_to_one
    sql_on: ${rpt_item_level_standards.teacher_id} = ${rpt_teacher_rank.teacher_id} ;;

  }
}
