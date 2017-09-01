class Field < ActiveRecord::Base
  belongs_to :schema, optional: true

  has_many :scrape_methods
end
