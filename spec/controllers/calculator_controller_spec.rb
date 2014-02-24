require 'spec_helper'

describe CalculatorController do

  describe "GET 'calculate'" do
    it "returns http success" do
      get 'calculate'
      expect(response).to be_success
    end

    it "sets the operands nil" do
      get 'calculate'
      expect(@operand1).to be_nil
    end
  end

  describe "POST 'calculate'" do
    it "multiplies the operands and then by 10" do
      post 'calculate', :op1 => "1", :op2 => "2"
      expect(assigns(:result)).to eq(2)
    end
    
    it "displays error if the operands are not numbers" do
      post 'calculate', :op1 => "a", :op2 => "boom"
      expect(assigns(:results)).to eq('error')
    end
  end 

end
