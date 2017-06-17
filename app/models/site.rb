class Site < ActiveRecord::Base
  belongs_to :parser

  scope :by_host, ->(url) { where(url: url) }
end
