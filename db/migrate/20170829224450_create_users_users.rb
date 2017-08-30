class CreateUsersUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users_users do |t|
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
