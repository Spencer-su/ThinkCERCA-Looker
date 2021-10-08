connection: "tc_data_warehouse"

# include all the views
include: "/views/**/*.view"


datagroup: test2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test2_default_datagroup



explore: assignments {
  join: lessons {
    type: left_outer
    sql_on: ${assignments.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }


  join: rubrics {
    type: left_outer
    sql_on: ${assignments.rubric_id} = ${rubrics.id} ;;
    relationship: many_to_one
  }
}

explore: districts {}






explore: fact_teacher_counts_month {
  join: institutions {
    type: left_outer
    sql_on: ${fact_teacher_counts_month.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${fact_teacher_counts_month.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: fact_teacher_counts_school_year {
  join: districts {
    type: left_outer
    sql_on: ${fact_teacher_counts_school_year.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${fact_teacher_counts_school_year.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }
}

explore: fact_teacher_counts_week {
  join: districts {
    type: left_outer
    sql_on: ${fact_teacher_counts_week.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${fact_teacher_counts_week.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }
}


explore: fact_teacher_rank {
  join: institutions {
    type: left_outer
    sql_on: ${fact_teacher_rank.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${fact_teacher_rank.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: institution_users {
  join: institutions {
    type: left_outer
    sql_on: ${institution_users.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${institution_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${institutions.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: institutions {
  join: districts {
    type: left_outer
    sql_on: ${institutions.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}




explore: lesson_subjects {
  join: lessons {
    type: left_outer
    sql_on: ${lesson_subjects.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }
}

explore: lessons {}


explore: rpt_assignment_score_reporting {
  join: lessons {
    type: left_outer
    sql_on: ${rpt_assignment_score_reporting.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }

  join: assignments {
    type: left_outer
    sql_on: ${rpt_assignment_score_reporting.assignment_id} = ${assignments.cerca_set_assignment_id} ;;
    relationship: many_to_one
  }

  join: rubrics {
    type: left_outer
    sql_on: ${rpt_assignment_score_reporting.rubric_id} = ${rubrics.id} ;;
    relationship: many_to_one
  }

  join: student_assignments {
    type: left_outer
    sql_on: ${rpt_assignment_score_reporting.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${rpt_assignment_score_reporting.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${rpt_assignment_score_reporting.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }


  join: standards {
    type: left_outer
    sql_on: ${rubrics.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }

  join: school_class_users {
    type: left_outer
    sql_on: ${student_assignments.school_class_user_id} = ${school_class_users.id} ;;
    relationship: many_to_one
  }

  join: institution_users {
    type: left_outer
    sql_on: ${school_class_users.institution_user_id} = ${institution_users.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${school_class_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}




explore: rpt_teacher_rank {
  join: districts {
    type: left_outer
    sql_on: ${rpt_teacher_rank.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${rpt_teacher_rank.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }
}


explore: rubrics {
  join: standards {
    type: left_outer
    sql_on: ${rubrics.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }
}


explore: school_class_users {
  join: institution_users {
    type: left_outer
    sql_on: ${school_class_users.institution_user_id} = ${institution_users.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${school_class_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${institution_users.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${institutions.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: school_classes {
  join: institutions {
    type: left_outer
    sql_on: ${school_classes.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${institutions.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: standards {}



explore: student_assignments {
  join: school_class_users {
    type: left_outer
    sql_on: ${student_assignments.school_class_user_id} = ${school_class_users.id} ;;
    relationship: many_to_one
  }

  join: assignments {
    type: left_outer
    sql_on: ${student_assignments.assignment_id} = ${assignments.cerca_set_assignment_id} ;;
    relationship: many_to_one
  }

  join: institution_users {
    type: left_outer
    sql_on: ${school_class_users.institution_user_id} = ${institution_users.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${school_class_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${institution_users.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${institutions.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

  join: lessons {
    type: left_outer
    sql_on: ${assignments.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }


  join: rubrics {
    type: left_outer
    sql_on: ${assignments.rubric_id} = ${rubrics.id} ;;
    relationship: many_to_one
  }

  join: standards {
    type: left_outer
    sql_on: ${rubrics.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }
}



explore: users {}
