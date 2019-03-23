class Exam < ApplicationRecord
  include Validator
  has_many :subjects
end
