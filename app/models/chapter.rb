class Chapter < ApplicationRecord
  include Validator
  belongs_to :topic
  has_many :questions
end
