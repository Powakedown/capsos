class CasesController < ApplicationController
  def new
  end

  def create
    @case = Case.new
    @photo = params[:case][:photo]
    @photo = JSON.parse(@photo)[0][:secure_url]
    redirect_to add_names_path
  end

  def show
    #recup des names, age, phone
    #envoie des données

  end

  def add_names

  end

  def case_end

  end
end
