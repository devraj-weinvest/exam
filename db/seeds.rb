# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies  = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Murtuza", email: "murtuza@f22labs.com", password: 'Admin@123', password_confirmation: 'Admin@123')

User.create(name: "Nirav", email: "nirav@f22labs.com", password: 'Admin@123', password_confirmation: 'Admin@123')

User.create(name: "Pradeep", email: "pradeep@f22labs.com", password: 'Admin@123', password_confirmation: 'Admin@123')

User.create(name: "Shiva", email: "shiva@f22labs.com", password: 'Admin@123', password_confirmation: 'Admin@123')

exam        = Exam.create(name: "Quiz1")

subject1    = Subject.create(name: "subject1", exam: exam)

subject2    = Subject.create(name: "subject2", exam: exam)

topic1      = Topic.create(name: "topic1", subject: subject1)

topic2      = Topic.create(name: "topic2", subject: subject1)

topic3      = Topic.create(name: "topic3", subject: subject2)

topic4      = Topic.create(name: "topic4", subject: subject2)

chapter1    = Chapter.create(name: "chapter1", topic: topic1)

chapter2    = Chapter.create(name: "chapter2", topic: topic1)

chapter3    = Chapter.create(name: "chapter3", topic: topic2)

chapter4    = Chapter.create(name: "chapter4", topic: topic2)

chapter5    = Chapter.create(name: "chapter5", topic: topic3)

chapter6    = Chapter.create(name: "chapter6", topic: topic3)

chapter7    = Chapter.create(name: "chapter7", topic: topic4)

chapter8    = Chapter.create(name: "chapter8", topic: topic4)

Question.create(question: "chapter1-question1", chapter: chapter1, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter1-question2", chapter: chapter1, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter1-question3", chapter: chapter1, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter1-question4", chapter: chapter1, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter1-question5", chapter: chapter1, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter1-question6", chapter: chapter1, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter1-question7", chapter: chapter1, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter1-question8", chapter: chapter1, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter1-question9", chapter: chapter1, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter1-question10", chapter: chapter1, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')


Question.create(question: "chapter2-question1", chapter: chapter2, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter2-question2", chapter: chapter2, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter2-question3", chapter: chapter2, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter2-question4", chapter: chapter2, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter2-question5", chapter: chapter2, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter2-question6", chapter: chapter2, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter2-question7", chapter: chapter2, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter2-question8", chapter: chapter2, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter2-question9", chapter: chapter2, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter2-question10", chapter: chapter2, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

Question.create(question: "chapter3-question1", chapter: chapter3, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter3-question2", chapter: chapter3, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter3-question3", chapter: chapter3, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter3-question4", chapter: chapter3, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter3-question5", chapter: chapter3, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter3-question6", chapter: chapter3, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter3-question7", chapter: chapter3, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter3-question8", chapter: chapter3, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter3-question9", chapter: chapter3, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter3-question10", chapter: chapter3, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

Question.create(question: "chapter4-question1", chapter: chapter4, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter4-question2", chapter: chapter4, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter4-question3", chapter: chapter4, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter4-question4", chapter: chapter4, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter4-question5", chapter: chapter4, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter4-question6", chapter: chapter4, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter4-question7", chapter: chapter4, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter4-question8", chapter: chapter4, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter4-question9", chapter: chapter4, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter4-question10", chapter: chapter4, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

Question.create(question: "chapter5-question1", chapter: chapter5, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter5-question2", chapter: chapter5, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter5-question3", chapter: chapter5, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter5-question4", chapter: chapter5, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter5-question5", chapter: chapter5, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter5-question6", chapter: chapter5, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter5-question7", chapter: chapter5, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter5-question8", chapter: chapter5, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter5-question9", chapter: chapter5, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter5-question10", chapter: chapter5, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

Question.create(question: "chapter6-question1", chapter: chapter6, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter6-question2", chapter: chapter6, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter6-question3", chapter: chapter6, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter6-question4", chapter: chapter6, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter6-question5", chapter: chapter6, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter6-question6", chapter: chapter6, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter6-question7", chapter: chapter6, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter6-question8", chapter: chapter6, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter6-question9", chapter: chapter6, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter6-question10", chapter: chapter6, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

Question.create(question: "chapter7-question1", chapter: chapter7, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter7-question2", chapter: chapter7, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter7-question3", chapter: chapter7, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter7-question4", chapter: chapter7, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter7-question5", chapter: chapter7, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter7-question6", chapter: chapter7, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter7-question7", chapter: chapter7, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter7-question8", chapter: chapter7, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter7-question9", chapter: chapter7, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter7-question10", chapter: chapter7, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

Question.create(question: "chapter8-question1", chapter: chapter8, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter8-question2", chapter: chapter8, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter8-question3", chapter: chapter8, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter8-question4", chapter: chapter8, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter8-question5", chapter: chapter8, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter8-question6", chapter: chapter8, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter8-question7", chapter: chapter8, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter8-question8", chapter: chapter8, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter8-question9", chapter: chapter8, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
Question.create(question: "chapter8-question10", chapter: chapter8, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
