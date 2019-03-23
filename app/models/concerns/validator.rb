module Validator
  extend ActiveSupport::Concern
  included do
    validates_uniqueness_of :name
  end
end