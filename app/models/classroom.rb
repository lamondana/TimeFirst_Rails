class Classroom < ApplicationRecord

  has_many :pupils
  belongs_to :teacher
end
