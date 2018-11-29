class TestesController < ApplicationController
  def index
    @testes = Teste.all
  end

  def import
    Teste.import(params[:file])
    redirect_to root_url, notice: "Activity Data Imported!"
  end
end
