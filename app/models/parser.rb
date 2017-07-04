class Parser < ActiveRecord::Base
  def self.parse(doc)
    expored_data = {}
    Field.all.each do |field|
      field.scrape_methods.each do |scrape_method|
        # unless scrape_method.empty?
        # selector is a html tag
        content = doc.css(scrape_method.method).text
        # selector is a meta tag
        content = doc.css(scrape_method.method)[0]['content'] if content.empty?
        # end
        expored_data[field.name] = content unless content.nil?
      end
    end
    expored_data
  end
end
