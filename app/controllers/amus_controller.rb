class AmusController < ApplicationController
  before_action :set_amu, only: [:show, :edit, :update, :destroy]

  # GET /amus
  # GET /amus.json
  def index
    @amus = Amu.all
  end

  # GET /amus/1
  # GET /amus/1.json
  def show
  end

  # GET /amus/new
  def new
    @amu = Amu.new
  end

  # GET /amus/1/edit
  def edit
  end

  # POST /amus
  # POST /amus.json
  def create
    @amu = Amu.new(amu_params)

    respond_to do |format|
      if @amu.save
        format.html { redirect_to @amu, notice: 'Amu was successfully created.' }
        format.json { render action: 'show', status: :created, location: @amu }
      else
        format.html { render action: 'new' }
        format.json { render json: @amu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /amus/1
  # PATCH/PUT /amus/1.json
  def update
    respond_to do |format|
      if @amu.update(amu_params)
        format.html { redirect_to @amu, notice: 'Amu was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @amu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amus/1
  # DELETE /amus/1.json
  def destroy
    @amu.destroy
    respond_to do |format|
      format.html { redirect_to amus_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amu
      @amu = Amu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def amu_params
      params.require(:amu).permit(:name, :age)
    end
end
