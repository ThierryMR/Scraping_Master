class CurrenciesController < ApplicationController
  def new
    @currency = Currency.new
  end
  def index
    @currencies = Currency.all
  end

  def create
    @currency = Currency.new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def show
  end

end
