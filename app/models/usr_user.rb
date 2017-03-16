class UsrUser < ApplicationRecord

  has_many :usr_user_roles
  has_many :usr_roles, through: :usr_user_roles

end
