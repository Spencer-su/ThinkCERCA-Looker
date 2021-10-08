connection: "tc_data_warehouse"

include: "/teacher_table.view.lkml"

explore: teacher_table {
  label: "Teacher Usage Table"
  description: "test"
}
