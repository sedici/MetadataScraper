class AddSchemaReferenceToField < ActiveRecord::Migration[5.0]
  def change
    add_reference :fields, :schema, index: true, foreign_key: true
  end
end
