class CreateUsrUserRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :usr_user_roles do |t|

      t.belongs_to :usr_role, index: true
      t.belongs_to :usr_user, index: true

      t.timestamps
    end
  end
end
