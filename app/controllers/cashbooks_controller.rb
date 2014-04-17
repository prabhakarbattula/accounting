class CashbooksController < ApplicationController
  before_action :set_cashbook, only: [:show, :edit, :update, :destroy]

OPENING_BALANCE = 10000.00
  
  # GET /cashbooks
  # GET /cashbooks.json
  def index
    @opening_balance = OPENING_BALANCE
    @cashbooks = Cashbook.all
    @cash_credits = Cashbook.where(credit_id: 1)
    @cash_debits = Cashbook.where(debit_id: 1)
  end

  # GET /cashbooks/1
  # GET /cashbooks/1.json
  def show
  end

  # GET /cashbooks/new
  def new
    @cashbook = Cashbook.new
  end

  # GET /cashbooks/1/edit
  def edit
  end

  # POST /cashbooks
  # POST /cashbooks.json
  def create
    @cashbook = Cashbook.new(cashbook_params)

    respond_to do |format|
      if @cashbook.save
        format.html { redirect_to @cashbook, notice: 'Cashbook was successfully created.' }
        format.json { render :show, status: :created, location: @cashbook }
      else
        format.html { render :new }
        format.json { render json: @cashbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashbooks/1
  # PATCH/PUT /cashbooks/1.json
  def update
    respond_to do |format|
      if @cashbook.update(cashbook_params)
        format.html { redirect_to @cashbook, notice: 'Cashbook was successfully updated.' }
        format.json { render :show, status: :ok, location: @cashbook }
      else
        format.html { render :edit }
        format.json { render json: @cashbook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashbooks/1
  # DELETE /cashbooks/1.json
  def destroy
    @cashbook.destroy
    respond_to do |format|
      format.html { redirect_to cashbooks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashbook
      @cashbook = Cashbook.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cashbook_params
      params.require(:cashbook).permit(:date, :debit_id, :credit_id, :amount)
    end
end
