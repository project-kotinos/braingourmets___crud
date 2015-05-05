class Admin::DogsController < ApplicationController
  before_action :set_dog, only: [:edit, :update, :destroy]

  # GET /admin/dogs
  # GET /admin/dogs.json
  def index
    @dogs = Animal::Dog.all
  end

  # GET /admin/dogs/new
  def new
    @dog = Animal::Dog.new
  end

  # GET /admin/dogs/1/edit
  def edit
  end

  # POST /admin/dogs
  # POST /admin/dogs.json
  def create
    @dog = Animal::Dog.new(dog_params)

    respond_to do |format|
      if @dog.save
        format.html { redirect_to admin_dogs_url, notice: 'Dog was successfully created.' }
        format.json { render :show, status: :created, location: @dog }
      else
        format.html { render :new }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/dogs/1
  # PATCH/PUT /admin/dogs/1.json
  def update
    respond_to do |format|
      if @dog.update(dog_params)
        format.html { redirect_to admin_dogs_url, notice: 'Dog was successfully updated.' }
        format.json { render :show, status: :ok, location: @dog }
      else
        format.html { render :edit }
        format.json { render json: @dog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/dogs/1
  # DELETE /admin/dogs/1.json
  def destroy
    @dog.destroy
    respond_to do |format|
      format.html { redirect_to admin_dogs_url, notice: 'Dog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dog
      @dog = Animal::Dog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dog_params
      params.require(:dog).permit(:title)
    end
end
