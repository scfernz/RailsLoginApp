class CreatePhoneNums < ActiveRecord::Migration
  def change
    create_table :phone_nums do |t|
      t.string :number
      t.string :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
