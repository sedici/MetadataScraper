class CreateField < ActiveRecord::Migration[5.0]
  def change
    create_table :fields do |t|
      t.string :name
      #t.json :scrape_methods

      t.timestamps null: false
    end
  end
end
