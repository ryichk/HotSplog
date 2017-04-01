class HotspringsController < ApplicationController

  before_action :set_hotspring, only: [:show, :edit, :update, :destroy]

  # GET /notes
  # GET /notes.json
  def index
    @hotsprings = Hotspring.all
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
  end

  # GET /notes/new
  def new
    @hotspring = Hotspring.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @hotspring = Hotspring.new(hotspring_params)

    respond_to do |format|
      if @Hotspring.save
        format.html { redirect_to @hotspring, notice: 'Hotspring was successfully created.' }
        format.json { render :show, status: :created, location: @hotspring }
      else
        format.html { render :new }
        format.json { render json: @hotspring.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @hotspring.update(hotspring_params)
        format.html { redirect_to @note, notice: 'Hotspring was successfully updated.' }
        format.json { render :show, status: :ok, location: @hotspring }
      else
        format.html { render :edit }
        format.json { render json: @hotspring.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @hotspring.destroy
    respond_to do |format|
      format.html { redirect_to hotsprings_url, notice: 'Hotspring was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hotspring
      @hotspring = Hotspring.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hotspring_params
      params.require(:hotspring).permit(:title, :text)
    end
end
