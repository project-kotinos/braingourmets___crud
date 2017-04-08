# frozen_string_literal: true

# cats CRUD
class CatsController < ApplicationController
  before_action :set_cat, only: %i[edit update destroy]

  # GET /cats
  def index
    @cats = Animal::Cat.all
  end

  # GET /cats/new
  def new
    @cat = Animal::Cat.new
  end

  # GET /cats/1/edit
  def edit; end

  # POST /cats
  def create
    @cat = Animal::Cat.new(cat_params)

    if @cat.save
      redirect_to cats_url, notice: 'Cat was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cats/1
  def update
    if @cat.update(cat_params)
      redirect_to cats_url, notice: 'Cat was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cats/1
  def destroy
    @cat.destroy
    redirect_to cats_url, notice: 'Cat was successfully destroyed.'
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_cat
      @cat = Animal::Cat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the whitelist
    # through.
    def cat_params
      params.require(:cat).permit(:title)
    end
end
