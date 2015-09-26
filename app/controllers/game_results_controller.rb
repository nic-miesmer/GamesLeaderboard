class GameResultsController < ApplicationController
  before_action :set_game_result, only: [:show, :edit, :update, :destroy]

  # GET /game_results
  # GET /game_results.json
  def index
    @game_results = GameResult.all
  end

  #Find the Game Results By Player
  def indexByPlayer
    @game_result = GameResult.find_by_player_id(game_result_params)
  end

  # GET /game_results/1
  # GET /game_results/1.json
  def show
  end

  # GET /game_results/new
  def new
    @game_result = GameResult.new
  end

  # GET /game_results/1/edit
  def edit
  end

  # POST /game_results
  # POST /game_results.json
  def create
    @game_result = GameResult.new(game_result_params)

    respond_to do |format|
      if @game_result.save
        format.html { redirect_to @game_result, notice: 'Game result was successfully created.' }
        format.json { render :show, status: :created, location: @game_result }
      else
        format.html { render :new }
        format.json { render json: @game_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_results/1
  # PATCH/PUT /game_results/1.json
  def update
    respond_to do |format|
      if @game_result.update(game_result_params)
        format.html { redirect_to @game_result, notice: 'Game result was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_result }
      else
        format.html { render :edit }
        format.json { render json: @game_result.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_results/1
  # DELETE /game_results/1.json
  def destroy
    @game_result.destroy
    respond_to do |format|
      format.html { redirect_to game_results_url, notice: 'Game result was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  #Game_result_by_user
  def user_result


  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_result
      @game_result = GameResult.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def game_result_params
      params.require(:game_result).permit(:player_id, :game_id, :date, :win)
    end
end
