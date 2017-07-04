class ScraperController < ApplicationController
  def index
    page = params[:pagina]
    unless page.nil?
      page = URI.parse(page)

      doc = Nokogiri::HTML(open(page))
      render json: Parser.parse(doc)
    end
  end
end
