class DropParser < ActiveRecord::Migration[5.0]
  def change
    drop_table :parsers
  end
end
