require 'test_helper'

class CashbooksControllerTest < ActionController::TestCase
  setup do
    @cashbook = cashbooks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cashbooks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cashbook" do
    assert_difference('Cashbook.count') do
      post :create, cashbook: { amount: @cashbook.amount, date: @cashbook.date, debit_or_credit: @cashbook.debit_or_credit, ledger_id: @cashbook.ledger_id }
    end

    assert_redirected_to cashbook_path(assigns(:cashbook))
  end

  test "should show cashbook" do
    get :show, id: @cashbook
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cashbook
    assert_response :success
  end

  test "should update cashbook" do
    patch :update, id: @cashbook, cashbook: { amount: @cashbook.amount, date: @cashbook.date, debit_or_credit: @cashbook.debit_or_credit, ledger_id: @cashbook.ledger_id }
    assert_redirected_to cashbook_path(assigns(:cashbook))
  end

  test "should destroy cashbook" do
    assert_difference('Cashbook.count', -1) do
      delete :destroy, id: @cashbook
    end

    assert_redirected_to cashbooks_path
  end
end
