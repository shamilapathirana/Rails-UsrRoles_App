class UsrRole < ApplicationRecord

  #creating many to many relationship with usr_permission table
  has_many :usr_role_permissions
  has_many :usr_permissions, through: :usr_role_permissions

  #creating many to many relationship with usr_user table
  has_many :usr_user_roles
  has_many :usr_users, through: :usr_user_roles

  #role_name validation
  validates :role_name, presence: true

end
