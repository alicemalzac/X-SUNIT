class SuvivorsController < ApplicationController
  before_action :set_suvivor, only: [:show, :edit, :update, :destroy]

  # GET /suvivors
  # GET /suvivors.json
  def index
    @suvivors = Suvivor.all
  end

  # GET /suvivors/1
  # GET /suvivors/1.json
  def show
  end

  # GET /suvivors/new
  def new
    @suvivor = Suvivor.new
  end

  # GET /suvivors/1/edit
  def edit
  end

  # POST /suvivors
  # POST /suvivors.json
  def create
    @suvivor = Suvivor.new(suvivor_params)

    respond_to do |format|
      if @suvivor.save
        format.html { redirect_to @suvivor, notice: 'Suvivor was successfully created.' }
        format.json { render :show, status: :created, location: @suvivor }
      else
        format.html { render :new }
        format.json { render json: @suvivor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /suvivors/1
  # PATCH/PUT /suvivors/1.json
  def update
    respond_to do |format|
      if @suvivor.update(suvivor_params)
        format.html { redirect_to @suvivor, notice: 'Suvivor was successfully updated.' }
        format.json { render :show, status: :ok, location: @suvivor }
      else
        format.html { render :edit }
        format.json { render json: @suvivor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /suvivors/1
  # DELETE /suvivors/1.json
  def destroy
    @suvivor.destroy
    respond_to do |format|
      format.html { redirect_to suvivors_url, notice: 'Suvivor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_suvivor
      @suvivor = Suvivor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def suvivor_params
      params.require(:suvivor).permit(:name, :age, :gender)
    end
end
