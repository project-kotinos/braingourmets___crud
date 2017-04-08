# frozen_string_literal: true

module Admin
  # espresso CRUD
  class EspressosController < ApplicationController
    before_action :set_espresso, only: %i[edit update destroy]

    # GET /admin/espressos
    def index
      @espressos = Espresso.all
    end

    # GET /admin/espressos/new
    def new
      @espresso = Espresso.new
    end

    # GET /admin/espressos/1/edit
    def edit; end

    # POST /admin/espressos
    def create
      @espresso = Espresso.new(espresso_params)

      if @espresso.save
        redirect_to admin_espressos_url,
                    notice: 'Espresso was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /admin/espressos/1
    def update
      if @espresso.update(espresso_params)
        redirect_to admin_espressos_url,
                    notice: 'Espresso was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /admin/espressos/1
    def destroy
      @espresso.destroy
      redirect_to admin_espressos_url,
                  notice: 'Espresso was successfully destroyed.'
    end

    private

      # Use callbacks to share common setup or constraints between actions.
      def set_espresso
        @espresso = Espresso.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the whitelist
      # through.
      def espresso_params
        params.require(:espresso).permit(:title)
      end
  end
end
