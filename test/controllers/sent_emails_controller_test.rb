require 'test_helper'

class SentEmailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sent_email = sent_emails(:one)
  end

  test "should get index" do
    get sent_emails_url
    assert_response :success
  end

  test "should get new" do
    get new_sent_email_url
    assert_response :success
  end

  test "should create sent_email" do
    assert_difference('SentEmail.count') do
      post sent_emails_url, params: { sent_email: { content: @sent_email.content, date: @sent_email.date, notification_id: @sent_email.notification_id, notification_type: @sent_email.notification_type, recipient: @sent_email.recipient, sender: @sent_email.sender, subject: @sent_email.subject, type: @sent_email.type } }
    end

    assert_redirected_to sent_email_url(SentEmail.last)
  end

  test "should show sent_email" do
    get sent_email_url(@sent_email)
    assert_response :success
  end

  test "should get edit" do
    get edit_sent_email_url(@sent_email)
    assert_response :success
  end

  test "should update sent_email" do
    patch sent_email_url(@sent_email), params: { sent_email: { content: @sent_email.content, date: @sent_email.date, notification_id: @sent_email.notification_id, notification_type: @sent_email.notification_type, recipient: @sent_email.recipient, sender: @sent_email.sender, subject: @sent_email.subject, type: @sent_email.type } }
    assert_redirected_to sent_email_url(@sent_email)
  end

  test "should destroy sent_email" do
    assert_difference('SentEmail.count', -1) do
      delete sent_email_url(@sent_email)
    end

    assert_redirected_to sent_emails_url
  end
end
