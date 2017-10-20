class CasesController < ApplicationController
  before_action :session_case, only: [:create, :show, :edit, :update, :update_way, :update_agent, :edit_photo, :update_photo]

  def new
    @case = Case.new
    @case.save!
    session[:case_id] = @case.id
    @screen_width = session[:screen_width]
  end

  def show
    #recup des names, age, phone
    #envoie des données
  end

  def geoloc
    #catch number of people reaching this step
    @address = "68 rue marcel sembat, 33130 Bègles"
    housing = {:latitude => 44.818006, longitude: -0.5434985, address: "68 rue marcel sembat, 33130 Bègles"}
    @screen_width = params[:gui][:screen_width]
  end

  def time_win
    #capter l'adresse
    #capter le nombre de gens qui arrive là vs le nombre qui ont commencé

  end

  def edit_agent

  end

  def update_agent
    @agent = params[:commit]
    @case.agent = @agent
    @case.save!
    redirect_to edit_way_path
  end

  def edit_way

  end

  def update_way
    @way = params[:commit]
    @case.way = @way
    @case.save!
    redirect_to edit_photo_path
  end

  def edit_photo

  end

  def update_photo
    @case.update(params_case)
    redirect_to edit_case_path(@case)
  end

  def update
    @case.update(params_case)
    redirect_to case_end_path
  end

  def case_end
  end

  private

  def session_case
    @case = Case.find(session[:case_id])
  end

  def params_case
    params.require(:case).permit(:name, :age, :age_type, :phone, :photo_cache, :photo)
  end

end
