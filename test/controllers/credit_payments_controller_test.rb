require 'test_helper'

class CreditPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @credit_payment = credit_payments(:one)
  end

  test "should get index" do
    get credit_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_credit_payment_url
    assert_response :success
  end

  test "should create credit_payment" do
    assert_difference('CreditPayment.count') do
      post credit_payments_url, params: { credit_payment: { amount: @credit_payment.amount, invoice_id: @credit_payment.invoice_id, payment_id: @credit_payment.payment_id } }
    end

    assert_redirected_to credit_payment_url(CreditPayment.last)
  end

  test "should show credit_payment" do
    get credit_payment_url(@credit_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_credit_payment_url(@credit_payment)
    assert_response :success
  end

  test "should update credit_payment" do
    patch credit_payment_url(@credit_payment), params: { credit_payment: { amount: @credit_payment.amount, invoice_id: @credit_payment.invoice_id, payment_id: @credit_payment.payment_id } }
    assert_redirected_to credit_payment_url(@credit_payment)
  end

  test "should destroy credit_payment" do
    assert_difference('CreditPayment.count', -1) do
      delete credit_payment_url(@credit_payment)
    end

    assert_redirected_to credit_payments_url
  end
end
