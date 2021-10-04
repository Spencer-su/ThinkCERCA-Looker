connection: "tc_data_warehouse"

# include all the views
include: "/views/**/*.view"


datagroup: test2_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test2_default_datagroup

explore: assessment_items {
  join: lesson_assessments {
    type: left_outer
    sql_on: ${assessment_items.lesson_assessment_id} = ${lesson_assessments.id} ;;
    relationship: many_to_one
  }

  join: student_assignments {
    type: left_outer
    sql_on: ${assessment_items.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

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

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

explore: assignments {
  join: lessons {
    type: left_outer
    sql_on: ${assignments.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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


explore: dim_assessment_items {
  join: lesson_assessments {
    type: left_outer
    sql_on: ${dim_assessment_items.lesson_assessment_id} = ${lesson_assessments.id} ;;
    relationship: many_to_one
  }

  join: assessment_items {
    type: left_outer
    sql_on: ${dim_assessment_items.assessment_item_id} = ${assessment_items.id} ;;
    relationship: many_to_one
  }

  join: student_assignments {
    type: left_outer
    sql_on: ${dim_assessment_items.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

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

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

explore: dim_assignments {
  join: lessons {
    type: left_outer
    sql_on: ${dim_assignments.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }

  join: lesson_modules {
    type: left_outer
    sql_on: ${dim_assignments.lesson_module_id} = ${lesson_modules.id} ;;
    relationship: many_to_one
  }

  join: rubrics {
    type: left_outer
    sql_on: ${dim_assignments.rubric_id} = ${rubrics.id} ;;
    relationship: many_to_one
  }

  join: assignments {
    type: left_outer
    sql_on: ${dim_assignments.assignment_id} = ${assignments.cerca_set_assignment_id} ;;
    relationship: many_to_one
  }

  join: standards {
    type: left_outer
    sql_on: ${rubrics.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }
}

explore: dim_class_primary_teachers {}

explore: dim_date {}

explore: dim_districts {
  join: districts {
    type: left_outer
    sql_on: ${dim_districts.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: dim_institutions {
  join: districts {
    type: left_outer
    sql_on: ${dim_institutions.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${dim_institutions.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }
}

explore: dim_lesson_assessment {
  join: student_assignments {
    type: left_outer
    sql_on: ${dim_lesson_assessment.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

  join: lesson_assessments {
    type: left_outer
    sql_on: ${dim_lesson_assessment.lesson_assessment_id} = ${lesson_assessments.id} ;;
    relationship: many_to_one
  }

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

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

explore: dim_lesson_module {
  join: lesson_modules {
    type: left_outer
    sql_on: ${dim_lesson_module.lesson_module_id} = ${lesson_modules.id} ;;
    relationship: many_to_one
  }
}

explore: dim_lesson_subjects {
  join: lesson_subjects {
    type: left_outer
    sql_on: ${dim_lesson_subjects.lesson_subject_id} = ${lesson_subjects.id} ;;
    relationship: many_to_one
  }

  join: subjects {
    type: left_outer
    sql_on: ${dim_lesson_subjects.subject_id} = ${subjects.id} ;;
    relationship: many_to_one
  }

  join: lessons {
    type: left_outer
    sql_on: ${dim_lesson_subjects.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }
}

explore: dim_lessons {
  join: lessons {
    type: left_outer
    sql_on: ${dim_lessons.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }
}

explore: dim_rubric_categories {
  join: rubrics {
    type: left_outer
    sql_on: ${dim_rubric_categories.rubric_id} = ${rubrics.id} ;;
    relationship: many_to_one
  }

  join: standards {
    type: left_outer
    sql_on: ${rubrics.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }
}

explore: dim_rubric_items {
  join: rubric_items {
    type: left_outer
    sql_on: ${dim_rubric_items.rubric_item_id} = ${rubric_items.id} ;;
    relationship: many_to_one
  }
}

explore: dim_rubrics {
  join: standards {
    type: left_outer
    sql_on: ${dim_rubrics.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }

  join: rubrics {
    type: left_outer
    sql_on: ${dim_rubrics.rubric_id} = ${rubrics.id} ;;
    relationship: many_to_one
  }
}

explore: dim_school_class_users {
  join: institution_users {
    type: left_outer
    sql_on: ${dim_school_class_users.institution_user_id} = ${institution_users.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${dim_school_class_users.user_id} = ${users.id} ;;
    relationship: many_to_one
  }

  join: school_class_users {
    type: left_outer
    sql_on: ${dim_school_class_users.school_class_user_id} = ${school_class_users.id} ;;
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

explore: dim_school_classes {
  join: institutions {
    type: left_outer
    sql_on: ${dim_school_classes.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${institutions.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: dim_student_assignments {
  join: student_assignments {
    type: left_outer
    sql_on: ${dim_student_assignments.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

  join: assignments {
    type: left_outer
    sql_on: ${dim_student_assignments.assignment_id} = ${assignments.cerca_set_assignment_id} ;;
    relationship: many_to_one
  }

  join: school_class_users {
    type: left_outer
    sql_on: ${dim_student_assignments.school_class_user_id} = ${school_class_users.id} ;;
    relationship: many_to_one
  }

  join: lessons {
    type: left_outer
    sql_on: ${assignments.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

explore: dim_students {}

explore: dim_subjects {
  join: subjects {
    type: left_outer
    sql_on: ${dim_subjects.subject_id} = ${subjects.id} ;;
    relationship: many_to_one
  }
}

explore: dim_teachers {}

explore: dim_user_roles {}

explore: districts {}

explore: fact_rubric_score {
  join: student_assignments {
    type: left_outer
    sql_on: ${fact_rubric_score.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

  join: rubrics {
    type: left_outer
    sql_on: ${fact_rubric_score.rubric_id} = ${rubrics.id} ;;
    relationship: many_to_one
  }

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

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
    relationship: many_to_one
  }

  join: standards {
    type: left_outer
    sql_on: ${rubrics.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }
}

explore: fact_score_detail {
  join: districts {
    type: left_outer
    sql_on: ${fact_score_detail.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${fact_score_detail.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

  join: school_class_users {
    type: left_outer
    sql_on: ${fact_score_detail.school_class_user_id} = ${school_class_users.id} ;;
    relationship: many_to_one
  }

  join: lessons {
    type: left_outer
    sql_on: ${fact_score_detail.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }

  join: assignments {
    type: left_outer
    sql_on: ${fact_score_detail.assignment_id} = ${assignments.cerca_set_assignment_id} ;;
    relationship: many_to_one
  }

  join: student_assignments {
    type: left_outer
    sql_on: ${fact_score_detail.student_assignment_id} = ${student_assignments.id} ;;
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

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

explore: fact_student_activity {
  join: districts {
    type: left_outer
    sql_on: ${fact_student_activity.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${fact_student_activity.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }
}

explore: fact_student_activity_milestone {
  join: districts {
    type: left_outer
    sql_on: ${fact_student_activity_milestone.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${fact_student_activity_milestone.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }
}

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

explore: fact_teacher_highlight {
  join: assignments {
    type: left_outer
    sql_on: ${fact_teacher_highlight.assignment_id} = ${assignments.cerca_set_assignment_id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${fact_teacher_highlight.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

  join: student_assignments {
    type: left_outer
    sql_on: ${fact_teacher_highlight.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${fact_teacher_highlight.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

  join: lessons {
    type: left_outer
    sql_on: ${assignments.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

explore: lesson_assessments {
  join: student_assignments {
    type: left_outer
    sql_on: ${lesson_assessments.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

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

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

explore: lesson_modules {}

explore: lesson_modules_lessons {
  join: lesson_modules {
    type: left_outer
    sql_on: ${lesson_modules_lessons.lesson_module_id} = ${lesson_modules.id} ;;
    relationship: many_to_one
  }

  join: lessons {
    type: left_outer
    sql_on: ${lesson_modules_lessons.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }
}

explore: lesson_standards {
  join: standards {
    type: left_outer
    sql_on: ${lesson_standards.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }

  join: lessons {
    type: left_outer
    sql_on: ${lesson_standards.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }
}

explore: lesson_steps {
  join: lessons {
    type: left_outer
    sql_on: ${lesson_steps.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }
}

explore: lesson_subjects {
  join: lessons {
    type: left_outer
    sql_on: ${lesson_subjects.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }

  join: subjects {
    type: left_outer
    sql_on: ${lesson_subjects.subject_id} = ${subjects.id} ;;
    relationship: many_to_one
  }
}

explore: lessons {}

explore: looker_pivot_rpt_benchmark_perf_rubric_score_breakdown_graded_l {
  join: districts {
    type: left_outer
    sql_on: ${looker_pivot_rpt_benchmark_perf_rubric_score_breakdown_graded_l.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: looker_rpt_benchmark_perf_rubric_score_breakdown_base {
  join: student_assignments {
    type: left_outer
    sql_on: ${looker_rpt_benchmark_perf_rubric_score_breakdown_base.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${looker_rpt_benchmark_perf_rubric_score_breakdown_base.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

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

  join: lessons {
    type: left_outer
    sql_on: ${assignments.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

explore: looker_rpt_benchmark_perf_rubric_score_breakdown_graded_lessons {
  join: districts {
    type: left_outer
    sql_on: ${looker_rpt_benchmark_perf_rubric_score_breakdown_graded_lessons.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: looker_rpt_benchmark_perf_rubric_score_breakdown_rubric_categor {
  join: districts {
    type: left_outer
    sql_on: ${looker_rpt_benchmark_perf_rubric_score_breakdown_rubric_categor.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: looker_rpt_lesson_usage_assignments_submitted_by_type {
  join: institutions {
    type: left_outer
    sql_on: ${looker_rpt_lesson_usage_assignments_submitted_by_type.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${looker_rpt_lesson_usage_assignments_submitted_by_type.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: looker_rpt_std_perf_writing_lesson_domain_avg_writing {
  join: institutions {
    type: left_outer
    sql_on: ${looker_rpt_std_perf_writing_lesson_domain_avg_writing.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${looker_rpt_std_perf_writing_lesson_domain_avg_writing.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: looker_rpt_writing_lesson_perf_overall_score_avg_writing_score_ {
  join: institutions {
    type: left_outer
    sql_on: ${looker_rpt_writing_lesson_perf_overall_score_avg_writing_score_.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${looker_rpt_writing_lesson_perf_overall_score_avg_writing_score_.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: looker_rpt_writing_lesson_rubric_category_perf_count_no_fully_g {
  join: districts {
    type: left_outer
    sql_on: ${looker_rpt_writing_lesson_rubric_category_perf_count_no_fully_g.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: looker_rpt_writing_lesson_rubric_category_perf_mastery_levels_d {
  join: districts {
    type: left_outer
    sql_on: ${looker_rpt_writing_lesson_rubric_category_perf_mastery_levels_d.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: looker_rpt_writing_lesson_rubric_category_perf_writing_lesson_a {
  join: districts {
    type: left_outer
    sql_on: ${looker_rpt_writing_lesson_rubric_category_perf_writing_lesson_a.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

explore: non_duplicate_assessments_school_year {
  join: student_assignments {
    type: left_outer
    sql_on: ${non_duplicate_assessments_school_year.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${non_duplicate_assessments_school_year.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

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

  join: lessons {
    type: left_outer
    sql_on: ${assignments.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

  join: districts {
    type: left_outer
    sql_on: ${institutions.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }
}

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

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

explore: rpt_item_level_standards {
  join: step_modules {
    type: left_outer
    sql_on: ${rpt_item_level_standards.step_module_id} = ${step_modules.id} ;;
    relationship: many_to_one
  }

  join: student_responses {
    type: left_outer
    sql_on: ${rpt_item_level_standards.student_response_id} = ${student_responses.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${rpt_item_level_standards.institution_id} = ${institutions.id} ;;
    relationship: many_to_one
  }

  join: lessons {
    type: left_outer
    sql_on: ${rpt_item_level_standards.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }

  join: assignments {
    type: left_outer
    sql_on: ${rpt_item_level_standards.assignment_id} = ${assignments.cerca_set_assignment_id} ;;
    relationship: many_to_one
  }

  join: student_assignments {
    type: left_outer
    sql_on: ${rpt_item_level_standards.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

  join: standards {
    type: left_outer
    sql_on: ${rpt_item_level_standards.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${rpt_item_level_standards.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
    relationship: many_to_one
  }

  join: rubrics {
    type: left_outer
    sql_on: ${assignments.rubric_id} = ${rubrics.id} ;;
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

explore: rpt_rubric_score {
  join: student_assignments {
    type: left_outer
    sql_on: ${rpt_rubric_score.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

  join: districts {
    type: left_outer
    sql_on: ${rpt_rubric_score.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

  join: lessons {
    type: left_outer
    sql_on: ${rpt_rubric_score.lesson_id} = ${lessons.id} ;;
    relationship: many_to_one
  }

  join: rubrics {
    type: left_outer
    sql_on: ${rpt_rubric_score.rubric_id} = ${rubrics.id} ;;
    relationship: many_to_one
  }

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

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
    relationship: many_to_one
  }

  join: standards {
    type: left_outer
    sql_on: ${rubrics.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }
}

explore: rpt_student_summary {
  join: districts {
    type: left_outer
    sql_on: ${rpt_student_summary.district_id} = ${districts.id} ;;
    relationship: many_to_one
  }

  join: institutions {
    type: left_outer
    sql_on: ${rpt_student_summary.institution_id} = ${institutions.id} ;;
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

explore: rubric_categories {
  join: rubrics {
    type: left_outer
    sql_on: ${rubric_categories.rubric_id} = ${rubrics.id} ;;
    relationship: many_to_one
  }

  join: standards {
    type: left_outer
    sql_on: ${rubrics.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }
}

explore: rubric_items {}

explore: rubrics {
  join: standards {
    type: left_outer
    sql_on: ${rubrics.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }
}

explore: sa_counts {
  join: student_assignments {
    type: left_outer
    sql_on: ${sa_counts.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

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

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

explore: step_module_standards {
  join: standards {
    type: left_outer
    sql_on: ${step_module_standards.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }

  join: step_modules {
    type: left_outer
    sql_on: ${step_module_standards.step_module_id} = ${step_modules.id} ;;
    relationship: many_to_one
  }
}

explore: step_modules {}

explore: stud_resp_word {
  join: student_responses {
    type: left_outer
    sql_on: ${stud_resp_word.student_response_id} = ${student_responses.id} ;;
    relationship: many_to_one
  }

  join: student_assignments {
    type: left_outer
    sql_on: ${stud_resp_word.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

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

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

explore: student_responses {
  join: student_assignments {
    type: left_outer
    sql_on: ${student_responses.student_assignment_id} = ${student_assignments.id} ;;
    relationship: many_to_one
  }

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

  join: lesson_modules {
    type: left_outer
    sql_on: ${assignments.lesson_module_id} = ${lesson_modules.id} ;;
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

explore: subjects {}

explore: tmp_standards_grade_levels {
  join: standards {
    type: left_outer
    sql_on: ${tmp_standards_grade_levels.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }
}

explore: tmp_step_module_standards_by_grade_level {
  join: step_modules {
    type: left_outer
    sql_on: ${tmp_step_module_standards_by_grade_level.step_module_id} = ${step_modules.id} ;;
    relationship: many_to_one
  }

  join: standards {
    type: left_outer
    sql_on: ${tmp_step_module_standards_by_grade_level.standard_id} = ${standards.id} ;;
    relationship: many_to_one
  }
}

explore: users {}
