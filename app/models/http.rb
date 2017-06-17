class Http < Parser
  has_many :sites

  def parse(doc, fields)
    expored_data = {}
    fields.each do |field|
      unless field[1].empty?
        # selector is a html tag
        content = doc.css(field[1]).text
        # selector is a meta tag
        content = doc.css(field[1])[0]['content'] if content.empty?
      end
      expored_data[field[0]] = content unless content.nil?
    end
    expored_data
  end
end
