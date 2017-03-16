class UsrUserRole < ApplicationRecord

  #creating many to many relationship with usr_user table and usr_role table
  #this is intermediate table
  belongs_to :usr_user
  belongs_to :usr_role

end
