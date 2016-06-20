class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_id
      t.string :password
      t.string :given_name
      t.string :family_name
      t.string :street_addy
      t.string :city
      t.string :state
      t.string :country
      t.string :postal
      t.string :email_addy

      t.timestamps null: false
    end
  end
end
