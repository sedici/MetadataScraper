title_field = Field.create(name: 'title')

ScrapeMethod.create(method: 'meta[name=DC.title]', field_id: title_field.id)
ScrapeMethod.create(method: 'meta[name=citation_journal_title]', field_id: title_field.id)
ScrapeMethod.create(method: 'meta[name=citation_journal_title]', field_id: title_field.id)
