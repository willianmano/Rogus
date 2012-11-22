module FuncionariosHelper
  def string_to_date(text)
  	date_parts = text.split('/')
  	Date.new(date_parts[2].to_i, date_parts[1].to_i, date_parts[0].to_i)
  end
end
