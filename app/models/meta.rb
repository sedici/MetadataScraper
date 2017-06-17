class Meta < Parser
  has_many :sites

  def parse(doc, fields)
    expored_data = {}
    fields.each do |field|
      meta = doc.at("meta[name='" + field[1] + "']")

      expored_data[field[0]] = meta['content'] unless meta.nil?
    end
    expored_data
  end
end
