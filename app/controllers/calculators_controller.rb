class CalculatorsController < ApplicationController
  def new
    @calculator = Calculator.new
  end

  def index
    @calculator = Calculator.all
  end

  def create
    @calculator = Calculator.create(calculator_params)
    if @calculator.save
      redirect_to calculator_path(@calculator), notice: "Calculation successful!"
    else
      render :new
    end
  end

  def show
    @calculator = Calculator.find(params[:id])
  end

  def destroy
    @calculator = Calculator.find(params[:id])
    @calculator.destroy
    redirect_to root_path, notice: "Record deleted"
  end

  def clear_list
    @calculator = Calculator.all
    @calculator.destroy_all
    redirect_to root_path, notice: "All records deleted"
  end

  private
    def calculator_params
      params.require(:calculator).permit(:year, :principle, :rate)
    end
end
