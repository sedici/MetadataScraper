class ManejadorElsevier

  attr_reader :valores, :siguiente_manejador

  def initialize
    sitio = Sitio.where(nombre: 'elsevier').first
    @siguiente_manejador = ManejadorPortalOjs.new
    @valores = sitio.valores
  end

  def test(doc)
      #tags = JSON.parse(@valores)
      begin
        tags = valores
        datos_parseados = nil
        title =  doc.at("span[class='"+tags["creator"]+"']")["class"]
        tags.each do |tag|
          if tag[1] == title
            parsear(doc)
          end
        end
      rescue
       if datos_parseados.nil?
         siguiente_manejador.test
       end
      end
  end

  def parsear(doc)
      datos_exportados = {}
      #tags = JSON.parse(@valores)   .children[1].text
      tags = valores
      tags.each do |valor|
        metaDiv = doc.at("div[class='"+valor[1]+"']")
        metaSpan = doc.at("span[class='"+valor[1]+"']")
        meta = doc.at("meta[name='"+valor[1]+"']")
        if meta != nil
          datos_exportados[valor[0]] = meta['content']
        end
        if metaSpan != nil
          datos_exportados[valor[0]] = metaSpan.text.strip
        elsif metaDiv != nil
          begin
            datos_exportados[valor[0]] = metaDiv.children[1].text.strip
          rescue
            datos_exportados[valor[0]] = metaDiv.text.strip
          end
        end
      end
      ResultContainer.setResult(datos_exportados)
  end
end
