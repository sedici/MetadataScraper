class ManejadorPortalOjs < ManejadorPadre

	def initialize
		metadatos = [
			'DC.Contributor.Sponsor',
			'citation_fulltext_html_url',
			'citation_pdf_url',
			'citation_keywords',
			'citation_language',
			'citation_abstract_html_url',
			'citation_doi',
			'DC.Type.articleType',
			'DC.Type',
			'DC.Title.Alternative',
			'DC.Title',
			'DC.Subject',
			'DC.Source.Volume',
			'DC.Source',
			'DC.Language',
			'DC.Identifier.URI',
			'DC.Identifier.DOI',
			'DC.Identifier.pageNumber',
			'DC.Identifier',
			'DC.Format',
			'citation_journal_title',
			'citation_title',
			'citation_date',
			'citation_volume',
			'citation_issue',
			'citation_firstpage',
			'citation_lastpage',
			'citation_author_institution',
			'citation_author',
			'citation_issn',
			'DC.Source.URI',
			'DC.Source.Issue',
			'DC.Source.ISSN',
			'DC.Rights',
			'DC.Description',
			'DC.Date.modified',
			'DC.Date.issued',
			'DC.Date.dateSubmitted',
			'DC.Date.created',
			'DC.Creator.PersonalName'];

		name = "DC.Title";
		#manejador = ManejadorPortalOjsNuevo.new
		#super(metadatos, name, manejador)
	end
end


# 	def test(doc)
# 		title = doc.at("meta[name='DC.Title']")['name'];
# 		@@metadatos.each do |i|
# 			if i == title
# 				parseador = parseador2(doc);
# 			end
# 		end
# 		if parseador == nil
# 			manejadorOJS = ManejadorOJS3.new();
# 			manejadorOJS.test;
# 		end
# 		return "";
# 	end


# 	def parseador2(doc)
# 	json =[];
# 	@@metadatos.each do |metadato|
# 		meta = doc.at("meta[name='"+metadato+"']");
# 		if  meta != nil
# 			json.push(meta['name']+"-"+meta['content']);
# 		end
# 	end
# 		return json;
# 	end
# end

