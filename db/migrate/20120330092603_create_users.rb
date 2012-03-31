class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :nationality
      t.string :type

      t.timestamps
    end
  end
end
