# coding: utf-8
require 'spec_helper'

describe References do
	before :each do
	@referencia = References::Reference.new(["Dave Thomas", "Andy Hunt", "Chad Fowler"],
			"Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide",
			"The Facets of Ruby",
			"Pragmatic Bookshelf",4,Date.new(2013,7,7),
			["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"])
	end
  it 'has a version number' do
    expect(References::VERSION).not_to be nil
  end

  it 'Debe existir uno o mas autores' do
	@referencia.cantidadAuthors.should>=1
  end

	it 'Debe existir un titulo' do
	@referencia.hasTitle.should==true
  end

	 it 'Debe existir o no una serie' do
	@referencia.cantidadSeries.should >=0
	@referencia.cantidadSeries.should <2
  end

	it 'Debe existir una editorial' do
	@referencia.hasEdition.should==true
  end

  it 'Debe existir un numero de edicion' do
	@referencia.hasEditionnumber.should==true
  end

	it 'Debe existir una fecha' do
	@referencia.hasDate.should==true
  end

	it 'Debe existir uno o mas numeros ISBN' do
	@referencia.cantidadIsbn.should >=1
  end

	it 'Existe un metodo para obtener el listado de autores' do
	@referencia.authors.should==["Dave Thomas", "Andy Hunt", "Chad Fowler"]
  end

	it 'Existe un metodo para obtener el tıtulo' do
	@referencia.title.should=="Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide"
  end

	it 'Existe un metodo para obtener la serie' do
	@referencia.serie.should=="The Facets of Ruby"
  end

	it 'Existe un metodo para obtener la edicion' do
	@referencia.edition.should=="Pragmatic Bookshelf"
  end

	it 'Existe un metodo para obtener el numero de edicion' do
	@referencia.editionnumber.should==4
  end

	it 'Existe un metodo para obtener la fecha de publicacion' do
	@referencia.date.should==Date.new(2013,7,7)
  end

	it 'Existe un metodo para obtener el ISBN' do
	@referencia.isbn.should==["ISBN-13: 978-1937785499", "ISBN-10: 1937785491"]
  end

# 	it 'Existe un metodo para obtener la referencia formateada' do
# 	@referencia.formatref.should=="Dave Thomas, Andy Hunt, Chad Fowler.
# Programming Ruby 1.9 & 2.0: The Pragmatic Programmers’ Guide
# (The Facets of Ruby)
# Pragmatic Bookshelf; 4 edition (Jul 07, 2013)
# ISBN-13: 978-1937785499
# ISBN-10: 1937785491"
#   end

end
