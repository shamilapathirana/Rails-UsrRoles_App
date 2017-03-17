class UsrContact < ApplicationRecord

  #creating many to many relationship with roles table
  has_many :usr_contact_roles
  has_many :usr_roles, through: :usr_contact_roles

  #role_name validation
  validates :name, presence: true

end
