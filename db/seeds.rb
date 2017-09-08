ScrapeMethod.delete_all
Field.delete_all
Schema.delete_all


schema = Schema.create!(name: 'Dublin Core Extended', identifier: 'http://purl.org/dc/terms/')

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


schema = Schema.create!(name: 'Dublin Core', identifier: 'http://purl.org/dc/elements/1.1/')

schema_field = Field.create(name: 'creator', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.Creator']", field: schema_field)

schema_field = Field.create(name: 'title', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.Title']", field: schema_field)

schema_field = Field.create(name: 'abstract', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.Description']", field: schema_field)

schema_field = Field.create(name: 'subject', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.Subject']", field: schema_field)

schema_field = Field.create(name: 'document_type', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.Type']", field: schema_field)

schema_field = Field.create(name: 'keywords', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_keywords']", field: schema_field)

schema_field = Field.create(name: 'issn', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.Source.ISSN']", field: schema_field)

schema_field = Field.create(name: 'journal_title', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_journal_title']", field: schema_field)

schema_field = Field.create(name: 'volume_and_issue', schema: schema)
ScrapeMethod.create(method: "meta[name='DCTERMS.isPartOf']", field: schema_field)

schema_field = Field.create(name: 'date_published', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.Source.Volume']", field: schema_field)

schema = Schema.create!(name: 'Elsevier España', identifier: '/css/elsevier.css')

schema_field = Field.create(name: 'creator', schema: schema)
ScrapeMethod.create(method: ".elsevierItemAutores", field: schema_field)

schema_field = Field.create(name: 'title', schema: schema)
ScrapeMethod.create(method: ".elsevierItemTitulo", field: schema_field)

schema_field = Field.create(name: 'abstract', schema: schema)
ScrapeMethod.create(method: ".elsevierItemsResumenes", field: schema_field)

schema_field = Field.create(name: 'subject', schema: schema)
ScrapeMethod.create(method: ".elsevierItemAfiliaciones", field: schema_field)

# schema_field = Field.create(name: 'document_type', schema: schema)
# ScrapeMethod.create(method: "", field: schema_field)

schema_field = Field.create(name: 'keywords', schema: schema)
ScrapeMethod.create(method: ".elsevierItemPalabrasClaves", field: schema_field)

schema_field = Field.create(name: 'issn', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_issn']", field: schema_field)

schema_field = Field.create(name: 'journal_title', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_journal_title']", field: schema_field)

schema_field = Field.create(name: 'volume_and_issue', schema: schema)
ScrapeMethod.create(method: "#central .pag a", field: schema_field)

schema_field = Field.create(name: 'date_published', schema: schema)
ScrapeMethod.create(method: ".elsevierItemFechas", field: schema_field)
