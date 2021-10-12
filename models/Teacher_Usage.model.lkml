connection: "tc_data_warehouse"

include: /views/rpt_teacher_rank.view.lkml
include: /views/school_class_users.view.lkml

explore: rpt_teacher_rank {
  label: "Teacher Activities"
  view_label: "1. Assignments Given and Graded"
  description: ""

  join: school_class_users {
    view_label: "2. Rostering"
    type: full_outer
    relationship:  many_to_one
    sql_on: ${school_class_users.user_id} = ${rpt_teacher_rank.teacher_id} ;;

  }
}
