models

rails g scaffold Consultation title name_of_professional consultation_date:datetime user:references shared_with:integer

rails g scaffold Exam title exam_date:datetime exam_location user:references shared:integer

rails g scaffold Treatment treatment_date:datetime treatment_location files user:references shared:integer