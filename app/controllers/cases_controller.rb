class CasesController < ApplicationController
  def new
    session[:case] = Case.new
  end

  def create
    @case = session[:case]
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

  def geoloc
    #catch number of people reaching this step
  end

  def add_names

  end

  def case_end
  end
end
