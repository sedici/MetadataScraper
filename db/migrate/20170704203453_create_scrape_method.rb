class CreateScrapeMethod < ActiveRecord::Migration[5.0]
  def change
    create_table :scrape_methods do |t|
      t.string :method
      t.belongs_to :field, index: true

      t.timestamps null: false
    end
  end
end
