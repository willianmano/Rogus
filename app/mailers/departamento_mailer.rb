class DepartamentoMailer < ActionMailer::Base
  default from: "'Relatorio de departamentos - Rogus' <willianmanoaraujo@gmail.com>"

  def enviar_relatorio(email)
  	@departamentos = Departamento.includes(:funcionarios)

  	mail(:to => email,
  		 :subject => "Relatorio de departamentos e funcionarios")

  end
end