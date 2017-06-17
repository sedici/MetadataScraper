class ManejadorSedici < ManejadorPadre

	def initialize
		sitio = Sitio.where(nombre: 'sedici').first
		manejador = ManejadorElsevier.new
		super(sitio.valores, manejador)
	end

end
