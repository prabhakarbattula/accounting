class DebitsController < ApplicationController
  before_action :set_debit, only: [:show, :edit, :update, :destroy]

  # GET /debits
  # GET /debits.json
  def index
    @debits = Debit.all.order("name")
  end

  def summary
    debit = Debit.where(:id => params[:debit_id]).first
    @transactions_debit = debit.cashbooks
  end

  # GET /debits/1
  # GET /debits/1.json
  def show
  end

  # GET /debits/new
  def new
    @debit = Debit.new
  end

  # GET /debits/1/edit
  def edit
  end

  # POST /debits
  # POST /debits.json
  def create
    @debit = Debit.new(debit_params)

    respond_to do |format|
      if @debit.save
        format.html { redirect_to @debit, notice: 'Debit was successfully created.' }
        format.json { render :show, status: :created, location: @debit }
      else
        format.html { render :new }
        format.json { render json: @debit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /debits/1
  # PATCH/PUT /debits/1.json
  def update
    respond_to do |format|
      if @debit.update(debit_params)
        format.html { redirect_to @debit, notice: 'Debit was successfully updated.' }
        format.json { render :show, status: :ok, location: @debit }
      else
        format.html { render :edit }
        format.json { render json: @debit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /debits/1
  # DELETE /debits/1.json
  def destroy
    @debit.destroy
    respond_to do |format|
      format.html { redirect_to debits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_debit
      @debit = Debit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def debit_params
      params.require(:debit).permit(:name)
    end
end
