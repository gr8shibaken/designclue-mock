class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :nationality
      t.string :firstname
      t.string :lastname
      t.string :usertype

      t.timestamps
    end
  end
end
