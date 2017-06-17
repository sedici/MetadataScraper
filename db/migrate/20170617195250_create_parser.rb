class CreateParser < ActiveRecord::Migration[5.0]
  def change
    create_table :parsers do |t|
      t.string :type
    end
  end
end
