# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
  5.times do 
    questions = Question.create({ question_name: 'Chicago', question_body: 'Where is Chicago?', answer: 'Illinois' })
    end



