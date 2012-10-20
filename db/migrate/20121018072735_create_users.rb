class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :weiboid
      t.string :name
      t.datetime :last_login_time
      t.integer :login_num

      t.timestamps
    end
  end
end
