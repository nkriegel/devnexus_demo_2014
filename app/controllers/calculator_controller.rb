class CalculatorController < ApplicationController
  def calculate
    @result = 'error' if params[:op1].match(/^\d+$/).nil? || params[:op2].match(/^\d+$/).nil?
    @result = params[:op1].to_i * params[:op2].to_i if params[:op1]
  end
end
