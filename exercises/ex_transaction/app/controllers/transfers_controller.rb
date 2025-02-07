class TransfersController < ApplicationController
  def index
    @transfers = Transfer.includes(:from_account, :to_account)
  end

  def new
    @transfer = Transfer.new
  end

  def create
    @transfer = Transfer.new(transfer_params)


    Transfer.transaction do
      if @transfer.save!

        @transfer.deduct_from_account
        @transfer.deduct_from_account_balance
        @transfer.add_to_account

        redirect_to transfers_path, notice: "Transfer created successfully!"
      else
        flash[:alert] = "Failed to create transfer: #{@transfer.errors.full_messages}"
        render :new
      end
    end
  rescue ActiveRecord::RecordInvalid => e
    render :new
    flash[:alert] = "Failed to create transfer: #{e.message}"
  end

  private
  def transfer_params
    params.require(:transfer).permit(:from_account_id, :to_account_id, :amount)
  end
end
