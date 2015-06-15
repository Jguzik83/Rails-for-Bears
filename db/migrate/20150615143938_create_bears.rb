class CreateBears < ActiveRecord::Migration
  def change
    create_table :bears do |t|
      t.string :name, null: false
      t.string :species, null: false

      t.timestamps null: false
    end
  end
end
