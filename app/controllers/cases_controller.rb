class CasesController < ApplicationController
  def new
    session[:case] = Case.new
    @screen_width = session[:screen_width]
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
    @address = "68 rue marcel sembat, 33130 Bègles"
    housing = {:latitude => 44.818006, longitude: -0.5434985, address: "68 rue marcel sembat, 33130 Bègles"}


  end

  def add_names

  end

  def case_end
  end
end
