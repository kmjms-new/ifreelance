require 'test_helper'

class PaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment = payments(:one)
  end

  test "should get index" do
    get payments_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_url
    assert_response :success
  end

  test "should create payment" do
    assert_difference('Payment.count') do
      post payments_url, params: { payment: { archive_number: @payment.archive_number, client_id: @payment.client_id, credit_applied: @payment.credit_applied, invoice_id: @payment.invoice_id, notes: @payment.notes, paid_full: @payment.paid_full, payment_amount: @payment.payment_amount, payment_date: @payment.payment_date, payment_method: @payment.payment_method, payment_type: @payment.payment_type, send_payment_notification: @payment.send_payment_notification, status: @payment.status } }
    end

    assert_redirected_to payment_url(Payment.last)
  end

  test "should show payment" do
    get payment_url(@payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_url(@payment)
    assert_response :success
  end

  test "should update payment" do
    patch payment_url(@payment), params: { payment: { archive_number: @payment.archive_number, client_id: @payment.client_id, credit_applied: @payment.credit_applied, invoice_id: @payment.invoice_id, notes: @payment.notes, paid_full: @payment.paid_full, payment_amount: @payment.payment_amount, payment_date: @payment.payment_date, payment_method: @payment.payment_method, payment_type: @payment.payment_type, send_payment_notification: @payment.send_payment_notification, status: @payment.status } }
    assert_redirected_to payment_url(@payment)
  end

  test "should destroy payment" do
    assert_difference('Payment.count', -1) do
      delete payment_url(@payment)
    end

    assert_redirected_to payments_url
  end
end
