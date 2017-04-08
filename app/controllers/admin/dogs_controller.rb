# frozen_string_literal: true

module Admin
  # dogs CRUD
  class DogsController < ApplicationController
    before_action :set_dog, only: %i[edit update destroy]

    # GET /admin/dogs
    def index
      @dogs = Animal::Dog.all
    end

    # GET /admin/dogs/new
    def new
      @dog = Animal::Dog.new
    end

    # GET /admin/dogs/1/edit
    def edit; end

    # POST /admin/dogs
    def create
      @dog = Animal::Dog.new(dog_params)

      if @dog.save
        redirect_to admin_dogs_url,
                    notice: 'Dog was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /admin/dogs/1
    def update
      if @dog.update(dog_params)
        redirect_to admin_dogs_url,
                    notice: 'Dog was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /admin/dogs/1
    def destroy
      @dog.destroy
      redirect_to admin_dogs_url,
                  notice: 'Dog was successfully destroyed.'
    end

    private

      # Use callbacks to share common setup or constraints between actions.
      def set_dog
        @dog = Animal::Dog.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the whitelist
      # through.
      def dog_params
        params.require(:dog).permit(:title)
      end
  end
end
