class Admin::EspressosController < ApplicationController
  before_action :set_espresso, only: [:show, :edit, :update, :destroy]

  # GET /admin/espressos
  # GET /admin/espressos.json
  def index
    @espressos = Espresso.all
  end

  # GET /admin/espressos/1
  # GET /admin/espressos/1.json
  def show
  end

  # GET /admin/espressos/new
  def new
    @espresso = Espresso.new
  end

  # GET /admin/espressos/1/edit
  def edit
  end

  # POST /admin/espressos
  # POST /admin/espressos.json
  def create
    @espresso = Espresso.new(espresso_params)

    respond_to do |format|
      if @espresso.save
        format.html { redirect_to admin_espressos_path, notice: 'Espresso was successfully created.' }
        format.json { render :show, status: :created, location: @espresso }
      else
        format.html { render :new }
        format.json { render json: @espresso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/espressos/1
  # PATCH/PUT /admin/espressos/1.json
  def update
    respond_to do |format|
      if @espresso.update(espresso_params)
        format.html { redirect_to admin_espressos_path, notice: 'Espresso was successfully updated.' }
        format.json { render :show, status: :ok, location: @espresso }
      else
        format.html { render :edit }
        format.json { render json: @espresso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/espressos/1
  # DELETE /admin/espressos/1.json
  def destroy
    @espresso.destroy
    respond_to do |format|
      format.html { redirect_to admin_espressos_path, notice: 'Espresso was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_espresso
      @espresso = Espresso.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def espresso_params
      params.require(:espresso).permit(:title)
    end
end
