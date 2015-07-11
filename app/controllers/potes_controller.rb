class PotesController < ApplicationController
  before_action :set_pote, only: [:show, :edit, :update, :destroy]

  # GET /potes
  # GET /potes.json
  def index
    @potes = Pote.all
  end

  # GET /potes/1
  # GET /potes/1.json
  def show
  end

  # GET /potes/new
  def new
    @pote = Pote.new
  end

  # GET /potes/1/edit
  def edit
  end

  # POST /potes
  # POST /potes.json
  def create
    @pote = Pote.new(pote_params)
    if @pote.save
      redirect_to @pote, notice: 'Pote est créé man!'
    else
      render :new
    end

  end

  # PATCH/PUT /potes/1
  # PATCH/PUT /potes/1.json
  def update
    respond_to do |format|
      if @pote.update(pote_params)
        format.html { redirect_to @pote, notice: 'Pote was successfully updated.' }
        format.json { render :show, status: :ok, location: @pote }
      else
        format.html { render :edit }
        format.json { render json: @pote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /potes/1
  # DELETE /potes/1.json
  def destroy
    @pote.destroy
    respond_to do |format|
      format.html { redirect_to potes_url, notice: 'Pote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pote
      @pote = Pote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pote_params
      params.require(:pote).permit(:name, :age, :avatar)
    end
end
