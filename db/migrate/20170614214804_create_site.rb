class CreateSite < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :name
      t.json :fields

      t.timestamps null: false
    end
  end
end
