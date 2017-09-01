ScrapeMethod.delete_all
Field.delete_all
Schema.delete_all

title_field = Field.create(name: 'title')

ScrapeMethod.create(method: "meta[name='DC.title']", field_id: title_field.id)
ScrapeMethod.create(method: "meta[name='citation_journal_title']", field_id: title_field.id)
ScrapeMethod.create(method: "meta[name='citation_journal_title']", field_id: title_field.id)

schema = Schema.create!(name: 'Dublin Core Extended', identifier: 'http://purl.org/dc/elements/1.1/')

schema_field = Field.create(name: 'creator', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.creator']", field: schema_field)

schema_field = Field.create(name: 'title', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.title']", field: schema_field)

schema_field = Field.create(name: 'abstract', schema: schema)
ScrapeMethod.create(method: "meta[name='DCTERMS.abstract']", field: schema_field)

schema_field = Field.create(name: 'subject', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.subject']", field: schema_field)

schema_field = Field.create(name: 'document_type', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.type']", field: schema_field)

schema_field = Field.create(name: 'keywords', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_keywords']", field: schema_field)

schema_field = Field.create(name: 'issn', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_issn']", field: schema_field)

schema_field = Field.create(name: 'journal_title', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_journal_title']", field: schema_field)

schema_field = Field.create(name: 'volume_and_issue', schema: schema)
ScrapeMethod.create(method: "meta[name='DCTERMS.isPartOf']", field: schema_field)

schema_field = Field.create(name: 'date_published', schema: schema)
ScrapeMethod.create(method: "meta[name='DCTERMS.issued']", field: schema_field)
