class UsrUser < ApplicationRecord

  #creating many to many relationship with roles table
  has_many :usr_user_roles
  has_many :usr_roles, through: :usr_user_roles

  #role_name validation
  validates :name, presence: true

end
