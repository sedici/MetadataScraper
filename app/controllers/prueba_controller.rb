class PruebaController < ApplicationController

	@metadatos = ["DC.creator", "DC.title"]

  def index
  	@pagina = params[:pagina]
  	if @pagina != nil
  		doc = Nokogiri::HTML(open(@pagina))
			#@title = doc.at("meta[name='citation_author']")['content']
			#render :text => title
      #asd
			manejador1 = ManejadorSedici.new()
			manejador1.test(doc)
			render :json => ResultContainer.getResult
  	end
  end

end

