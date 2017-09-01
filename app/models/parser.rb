class Parser < ActiveRecord::Base
  def self.parse(doc)
    schema = Schema.where(identifier: doc.css("link[rel='schema.DC']")[0]['href']).first

    if schema.present?
      Parser.from_schema(doc, schema)
    else
      Parser.generic doc
    end
  end

  def self.from_schema(doc, schema)
    expored_data = {}

    schema.fields.each do |field|
      scrape_method = field.scrape_methods.first
      content = []

      # selector is a html tag
      data = doc.css(scrape_method.method).text
      content << data unless data.empty?
      # selector is a meta tag
      doc.css(scrape_method.method).each do |tag|
        content << tag['content']
      end
      expored_data[field.name] = content.join(';') unless content.nil?
    end
    expored_data
  end

  def self.generic doc
    expored_data = {}
    Field.all.each do |field|
      field.scrape_methods.each do |scrape_method|
        # selector is a html tag
        content = doc.css(scrape_method.method).text
        # selector is a meta tag
        content = doc.css(scrape_method.method)[0]['content'] if content.empty?

        expored_data[field.name] = content unless content.nil?
      end
    end
    expored_data
  end
end
