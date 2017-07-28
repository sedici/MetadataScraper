title_field = Field.create(name: 'title')

ScrapeMethod.create(method: "meta[name='DC.title']", field_id: title_field.id)
ScrapeMethod.create(method: "meta[name='citation_journal_title']", field_id: title_field.id)
ScrapeMethod.create(method: "meta[name='citation_journal_title']", field_id: title_field.id)

schema = Schema.create!(name: 'Dublin Core', identifier: 'http://purl.org/dc/elements/1.1/')
schema_field = SchemaField.create(name: 'title', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.title']", field: schema_field)

schema_field = SchemaField.create(name: 'creator', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.creator']", field: schema_field)

schema_field = SchemaField.create(name: 'subject', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.subject']", field: schema_field)
