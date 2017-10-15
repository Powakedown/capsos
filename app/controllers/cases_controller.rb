class CasesController < ApplicationController
  def new
  end

  def create
    @case = Case.new
    if params[:case][:photo] && params[:case][:photo] != ""
      @photo = params[:case][:photo]
      @photo = JSON.parse(@photo)[0][:secure_url]
    end
    redirect_to case_end_path
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
