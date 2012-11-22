# encoding: UTF-8

require 'funcionarios_helper'

class FuncionariosController < ApplicationController
  include FuncionariosHelper

  def index
    @funcionarios = Funcionario.all
  end

  def show
    @funcionario = Funcionario.find(params[:id])
  end

  def new
    @departamentos = Departamento.all
    @funcionario = Funcionario.new
  end

  def edit
    @funcionario = Funcionario.find(params[:id])
    @departamentos = Departamento.all
  end

  def create
    @funcionario = Funcionario.new(params[:funcionario])
    @funcionario.contratacao = string_to_date(params[:funcionario][:contratacao])

    respond_to do |format|
      if @funcionario.save
        format.html {redirect_to @funcionario, notice: "Funcionario adicionado com sucesso."}
      else
        @departamentos = Departamento.all
        format.html {render action: "new"}
      end
    end
  end

  def update
    @funcionario = Funcionario.find(params[:id])

    if @funcionario.update_attributes(params[:funcionario])
      redirect_to @funcionario, notice: "Funcionário atualizado com sucesso."
    else
      @departamentos = Departamento.all
      render action: "edit"
    end
  end

  def destroy
    @funcionario = Funcionario.find(params[:id])

    @funcionario.destroy

    redirect_to funcionarios_url
  end

  def email
  end

  def send_email
    email = DepartamentoMailer.enviar_relatorio params[:email]

    email.deliver

    redirect_to email_url, notice: "Email enviado."
  end
end
