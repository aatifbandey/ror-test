class LoanRequestsController < ApplicationController
  def index
    @loan_requests = LoanRequest.all
  end

  def show
    @loan_request = LoanRequest.find(params[:id])
  end

  def new
    @loan_request = LoanRequest.new
  end

  def create
    @loan_request = LoanRequest.new(loan_requests_params)
    if @loan_request.save
      redirect_to '/products', notice: "Request was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def loan_requests_params
      params.expect(loan_request: [ :name, :email, :phone, :loanAmount, :collegeName])
  end
 
end
