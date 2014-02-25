class CalculatorController < ApplicationController
  def calculate    
    @result = params[:op1].to_i * params[:op2].to_i + 1 if params[:op1]
  end
end
