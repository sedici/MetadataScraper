class ScraperController < ApplicationController
  def index
    page = params[:pagina]
    unless page.nil?
      page = URI.parse(page)
      host = page.host.sub(/^www\./, '')
      site = Site.by_host(host).first

      doc = Nokogiri::HTML(open(page))
      render json: site.parser.parse(doc, site.fields)
    end
  end
end
