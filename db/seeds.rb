# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies  = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

#   Character.create(name: 'Luke', movie: movies.first)
user        = User.create(name: "Max", email: "max@nomail.com", password: 'Admin@123', password_confirmation: 'Admin@123')

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

question1   = Question.create(question: "question1", chapter: chapter1, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question2   = Question.create(question: "question2", chapter: chapter1, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question3   = Question.create(question: "question3", chapter: chapter2, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question4   = Question.create(question: "question4", chapter: chapter2, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question5   = Question.create(question: "question5", chapter: chapter3, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question6   = Question.create(question: "question6", chapter: chapter3, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question7   = Question.create(question: "question7", chapter: chapter4, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question8   = Question.create(question: "question8", chapter: chapter4, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question9   = Question.create(question: "question9", chapter: chapter5, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question10  = Question.create(question: "question10", chapter: chapter5, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question11  = Question.create(question: "question11", chapter: chapter6, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question12  = Question.create(question: "question12", chapter: chapter6, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question13  = Question.create(question: "question13", chapter: chapter7, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question14  = Question.create(question: "question14", chapter: chapter7, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question15  = Question.create(question: "question15", chapter: chapter8, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')

question16  = Question.create(question: "question16", chapter: chapter8, options: ['yes', 'no', 'partially', 'none', 'skip'],  answer: 'yes')
