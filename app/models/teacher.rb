class Teacher < ApplicationRecord
  has_one :classroom
  has_secure_password

  def full_name
    "#{first_name} #{last_name}"
  end
end
