FactoryBot.define do
  factory :question do
    question "question16"
    options ['yes', 'no', 'partially', 'none', 'skip']
    answer 'yes'
  end
end
