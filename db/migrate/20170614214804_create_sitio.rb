class CreateSitio < ActiveRecord::Migration[5.0]
  def change
    create_table :sitios do |t|
      t.string :nombre
      t.json :valores

      t.timestamps null: false
    end
  end
end
