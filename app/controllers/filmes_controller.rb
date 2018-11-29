class FilmesController < ApplicationController
  def new
    @filme = Filme.new
  end

  def index
    @filmes = Filme.all
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
