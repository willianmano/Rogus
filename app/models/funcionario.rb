class Funcionario < ActiveRecord::Base
  attr_accessible :nome, :ativo, :contratacao, :departamento_id

  belongs_to :departamento

  validates :nome, :presence => {:message => "Informe o seu nome"}
  validates :departamento_id, :presence => {:message => "Departamento invalido"}
  validates :contratacao, :presence => {:message => "Informe a data de contratacao"}
  validates :ativo, :inclusion => { :in => [true, false], :message => "Status do funcionario invalido"}

end