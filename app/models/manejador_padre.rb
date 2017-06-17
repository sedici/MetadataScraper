class ManejadorPadre
	# JSON = "{'hola':'1','chau':'2'}'
  # HASH = "{'hola'=>'1', 'chau'=>'2}'

	# getters y setters de variables
	attr_reader :valores, :siguiente_manejador

	def initialize(valores,siguiente_manejador)
		@valores = valores
		@siguiente_manejador = siguiente_manejador
	end

 	def test(doc)
 		#p "tu hermana"
		#tags = JSON.parse(@valores)
		begin
			tags = valores
			datos_parseados = nil
			title =  doc.at("meta[name='"+tags['title']+"']")['name']
			tags.each do |tag|
				if tag[1] == title
					parsear(doc)
				end
			end
		rescue
			if datos_parseados.nil?
				siguiente_manejador.test(doc)
			end
		end

	end

	def parsear(doc)
		datos_exportados = {}
		#tags = JSON.parse(@valores)
		tags = valores
		tags.each do |valor|
			meta = doc.at("meta[name='"+valor[1]+"']")
			if  meta != nil
				datos_exportados[valor[0]] = meta['content']
			end
		end
		ResultContainer.setResult(datos_exportados)
	end
end

