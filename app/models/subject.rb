class Subject < ApplicationRecord
  include Validator
  belongs_to :exam
end
