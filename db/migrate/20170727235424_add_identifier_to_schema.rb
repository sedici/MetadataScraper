class AddIdentifierToSchema < ActiveRecord::Migration[5.0]
  def change
    add_column :schemas, :identifier, :string
  end
end
