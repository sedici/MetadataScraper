class CreateSchema < ActiveRecord::Migration[5.0]
  def change
    create_table :schemas do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
