class LeaguesController < ApplicationController
  before_action :set_league, only: [:show, :edit, :update, :destroy]

  def index
    @leagues = League.all
  end

  def show
  end
  
  def new
    @league = League.new
  end
  
  def edit
  end
 
  def create
    @league = League.new(league_params)
    if @league.save
        redirect_to @league, notice: 'League was successfully created.'
      else
        render action: 'new' 
      end
    end
 

  # PATCH/PUT /leagues/1
  # PATCH/PUT /leagues/1.json
  def update
      if @league.update(league_params)
        redirect_to @league, notice: 'League was successfully updated.'
      else
        render action: 'edit'
      end
    end

  # DELETE /leagues/1
  # DELETE /leagues/1.json
  def destroy
    @league.destroy
    redirect_to leagues_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_league
      @league = League.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def league_params
      params.require(:league).permit(:league_name)
    end
end
