class DropSite < ActiveRecord::Migration[5.0]
  def change
    drop_table :sites
  end
end
