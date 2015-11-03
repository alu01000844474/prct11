require 'spec_helper'

describe Bibliografia do
	before :each do
	@referencia=Bibliografia::Bibliografia.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],
			"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide",
			"The Facets of Ruby",
			"Pragmatic Bookshelf",4,Date.new(2013,7,7),
			["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
	end
  it 'has a version number' do
    expect(Bibliografia::VERSION).to be "0.1.0"
  end

  it 'Debe existir uno o mas autores' do
	@referencia.cantidadAutores.should>=1
  end
  
	it 'Debe existir un titulo' do
	@referencia.hasTitulo.should==true
  end

	 it 'Debe existir o no una serie' do
	@referencia.cantidadSeries.should >=0
	@referencia.cantidadSeries.should <2
  end
	
	it 'Debe existir una editorial' do
	@referencia.hasEdicion.should==true
  end

  it 'Debe existir un numero de edicion' do
	@referencia.hasNumeroedicion.should==true
  end
	
	it 'Debe existir una fecha' do
	@referencia.hasFecha.should==true
  end
	
	it 'Debe existir uno o mas numeros ISBN' do
	@referencia.cantidadIsbn.should >=1
  end

	it 'Existe un metodo para obtener el listado de autores' do
	@referencia.autores.should==["Dave Thomas", "Andy Hunt", "Chad Fowler"]
  end
	
	it 'Existe un metodo para obtener el tıtulo' do
	@referencia.autores.should=="Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide"
  end

	it 'Existe un metodo para obtener la serie' do
	@referencia.series.should=="The Facets of Ruby"
  end

	it 'Existe un metodo para obtener la edicion' do
	@referencia.edicion.should=="Pragmatic Bookshelf"
  end

	it 'Existe un metodo para obtener el numero de edicion' do
	@referencia.numeroedicion.should==4
  end

	it 'Existe un metodo para obtener la fecha de publicacion' do
	@referencia.fecha.should==Date.new(2013,7,7)
  end

	it 'Existe un metodo para obtener el ISBN' do
	@referencia.isbn.should==["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"]
  end

	it 'Existe un metodo para obtener la referencia formateada' do
	@referencia.formatref.should=="Dave Thomas, Andy Hunt, Chad Fowler.
Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide
(The Facets of Ruby)
Pragmatic Bookshelf; 4 edition (July 7, 2013)
ISBN-13: 978-1937785499
ISBN-10: 1937785491"
  end

end
