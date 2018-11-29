class FilmesController < ApplicationController
  def new
    @filme = Filme.new
  end

  def index
    @filmes = Filme.all
  end

  def import
    Filme.import(params[:file])
    redirect_to root_url, notice: "Activity Data Imported!"
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
