
sedici_parser = Meta.create!

sedici_fields = {"created"=>"DCTERMS.created", "available"=>"DCTERMS.available", "issued"=>"DCTERMS.issued", "identifier"=>"DC.identifier", "abstract"=>"DCTERMS.abstract", "extent"=>"DCTERMS.extent", "language"=>"citation_language", "title"=>"DC.title", "type"=>"DC.type", "creator"=>"DC.creator", "subject"=>"DC.subject", "license"=>"DCTERMS.license", "isPartOf"=>"DCTERMS.isPartOf", "issn"=>"citation_issn", "pdf_url"=>"citation_pdf_url", "abstract_html_url"=>"citation_abstract_html_url", "publication_date"=>"citation_publication_date", "journal_title"=>"citation_journal_title", "author"=>"citation_author", "citation_title"=>"citation_title", "online_date"=>"citation_online_date", "keywords"=>"citation_keywords", "volume"=>"citation_volume"}

Site.create!(name: 'Sedici',
             url: 'sedici.unlp.edu.ar',
             parser_id: sedici_parser.id,
             fields: sedici_fields)

elsevier_parser = Http.create!

elsevier_fields = {}
elsevier_fields['journal_title'] = 'meta[name=citation_journal_title]'
elsevier_fields['journal_abbrev'] = ''
elsevier_fields['publisher'] = ''
elsevier_fields['author'] = ''
elsevier_fields['author_email'] = ''
elsevier_fields['author_institution'] = ''
elsevier_fields['title'] = ''
elsevier_fields['firstpage'] = ''
elsevier_fields['doi'] = ''
elsevier_fields['fulltext_html_url'] = ''
elsevier_fields['pdf_url'] = ''
elsevier_fields['issn'] = ''
elsevier_fields['language'] = ''
elsevier_fields['fulltext_world_readable'] = ''
elsevier_fields['elsevierItemCabecera'] = ''
elsevier_fields['titulo'] = ''
elsevier_fields['elsevierItemTituloAlternativo'] = ''
elsevier_fields['creator'] = ''
elsevier_fields['elsevierItemFechas'] = ''
elsevier_fields['elsevierItemsResumenIdioma'] = ''
elsevier_fields['abstract'] = ''
elsevier_fields['elsevierItemPalabrasClaveIdioma'] = ''
elsevier_fields['elsevierItemPalabrasClave'] = '.elsevierItemPalabrasClave'
elsevier_fields['elsevierItemTextoCompletoTexto'] = ''
elsevier_fields['license'] = ''

Site.create!(name: 'Elsevier',
             url: 'elsevier.es',
             parser_id: elsevier_parser.id,
             fields: elsevier_fields)
