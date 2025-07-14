# require_relative '../services/calculator'

class CalculatorsController < ApplicationController
  # GET /calculators
  # Render the form to input numbers
  def index
  end

  # POST /calculators
  # Add the numbers and show result
  def create
    @sum = Calculator.new.add(params[:numbers])
    render :show
  rescue => e
    @error = e.message
    render :index
  end

  # GET /calculators/show
  # Show the sum of the numbers
  def show
  end
end