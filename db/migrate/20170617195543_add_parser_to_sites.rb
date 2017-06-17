class AddParserToSites < ActiveRecord::Migration[5.0]
  def change
    add_column :sites, :parser_id, :integer
  end
end
