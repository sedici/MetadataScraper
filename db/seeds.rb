ScrapeMethod.delete_all
Field.delete_all
Schema.delete_all


schema = Schema.create!(name: 'Dublin Core Extended', identifier: 'http://purl.org/dc/terms/')

schema_field = Field.create(name: 'creator', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.creator']", field: schema_field)

schema_field = Field.create(name: 'title', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.title']", field: schema_field)

schema_field = Field.create(name: 'title_subtitle', schema: schema)
ScrapeMethod.create(method: "meta[name='DCTERMS.alternative']", field: schema_field)

schema_field = Field.create(name: 'location', schema: schema)
ScrapeMethod.create(method: "meta[name='DCTERMS.spatial']", field: schema_field)

schema_field = Field.create(name: 'extent', schema: schema)
ScrapeMethod.create(method: "meta[name='DCTERMS.extent']", field: schema_field)

schema_field = Field.create(name: 'abstract', schema: schema)
ScrapeMethod.create(method: "meta[name='DCTERMS.abstract']", field: schema_field)

schema_field = Field.create(name: 'subject', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.subject']", field: schema_field)

schema_field = Field.create(name: 'document_type', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.type']", field: schema_field)

schema_field = Field.create(name: 'keywords', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_keywords']", field: schema_field)

schema_field = Field.create(name: 'identifier_uri', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.identifier']", field: schema_field)

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
ScrapeMethod.create(method: "meta[name='DC.Creator.PersonalName']", field: schema_field)

schema_field = Field.create(name: 'title', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.Title']", field: schema_field)

schema_field = Field.create(name: 'title_subtitle', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.Subtitle']", field: schema_field)

schema_field = Field.create(name: 'identifier_uri', schema: schema)
ScrapeMethod.create(method: "meta[name='DC.Identifier.URI']", field: schema_field)

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
ScrapeMethod.create(method: "meta[name='DC.Source.Volume']", field: schema_field)

schema_field = Field.create(name: 'date_published', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_issue']", field: schema_field)

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
ScrapeMethod.create(method: ".tituloRevista caja", field: schema_field)

schema_field = Field.create(name: 'volume_and_issue', schema: schema)
ScrapeMethod.create(method: ".pag a", field: schema_field)

schema_field = Field.create(name: 'date_published', schema: schema)
ScrapeMethod.create(method: ".elsevierItemFechas", field: schema_field)



schema = Schema.create!(name: 'og', identifier: 'og:url')
schema_field = Field.create(name: 'creator', schema: schema)
ScrapeMethod.create(method: "meta[name='dc.creator']", field: schema_field)

schema_field = Field.create(name: 'title', schema: schema)
ScrapeMethod.create(method: "meta[name='dc.title']", field: schema_field)

schema_field = Field.create(name: 'abstract', schema: schema)
ScrapeMethod.create(method: "meta[name='dc.description']", field: schema_field)

schema_field = Field.create(name: 'subject', schema: schema)
ScrapeMethod.create(method: "meta[name='prism.section']", field: schema_field)

schema_field = Field.create(name: 'document_type', schema: schema)
ScrapeMethod.create(method: "meta[name='dc.type']", field: schema_field)

schema_field = Field.create(name: 'keywords', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_keywords']", field: schema_field)

schema_field = Field.create(name: 'issn', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_issn']", field: schema_field)

schema_field = Field.create(name: 'journal_title', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_journal_title']", field: schema_field)

schema_field = Field.create(name: 'volume_and_issue', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_volume']", field: schema_field)

schema_field = Field.create(name: 'date_published', schema: schema)
ScrapeMethod.create(method: "meta[name='dc.date']", field: schema_field)

schema = Schema.create!(name: 'ojs3', identifier: 'gs_meta_revision')
schema_field = Field.create(name: 'creator', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_author']", field: schema_field)

schema_field = Field.create(name: 'title', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_title']", field: schema_field)

schema_field = Field.create(name: 'abstract', schema: schema)
ScrapeMethod.create(method: "meta[name='dc.description']", field: schema_field)

schema_field = Field.create(name: 'issn', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_issn']", field: schema_field)

schema_field = Field.create(name: 'journal_title', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_journal_title']", field: schema_field)

schema_field = Field.create(name: 'volume_and_issue', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_volume']", field: schema_field)

schema_field = Field.create(name: 'date_published', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_date']", field: schema_field)

schema = Schema.create!(name: 'Springer', identifier: '/springerlink-static/658791758/images/favicon/favicon.ico')

schema_field = Field.create(name: 'creator', schema: schema)
ScrapeMethod.create(method: ".authors__name", field: schema_field)

schema_field = Field.create(name: 'title', schema: schema)
ScrapeMethod.create(method: ".ArticleTitle", field: schema_field)

schema_field = Field.create(name: 'abstract', schema: schema)
ScrapeMethod.create(method: ".Abstract", field: schema_field)

schema_field = Field.create(name: 'keywords', schema: schema)
ScrapeMethod.create(method: ".Keyword", field: schema_field)

schema_field = Field.create(name: 'issn', schema: schema)
ScrapeMethod.create(method: "meta[name='citation_issn']", field: schema_field)

schema_field = Field.create(name: 'journal_title', schema: schema)
ScrapeMethod.create(method: ".JournalTitle", field: schema_field)

schema_field = Field.create(name: 'volume_and_issue', schema: schema)
ScrapeMethod.create(method: ".ArticleCitation_Volume", field: schema_field)

schema_field = Field.create(name: 'date_published', schema: schema)
ScrapeMethod.create(method: ".ArticleCitation_Year", field: schema_field)

schema_field = Field.create(name: 'extent', schema: schema)
ScrapeMethod.create(method: ".ArticleCitation_Pages", field: schema_field)

schema_field = Field.create(name: 'contact', schema: schema)
ScrapeMethod.create(method: ".authors__contact", field: schema_field)

