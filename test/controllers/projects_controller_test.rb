require 'test_helper'

class ProjectsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project = projects(:one)
  end

  test "should get index" do
    get projects_url
    assert_response :success
  end

  test "should get new" do
    get new_project_url
    assert_response :success
  end

  test "should create project" do
    assert_difference('Project.count') do
      post projects_url, params: { project: { client_id: @project.client_id, delivery_date: @project.delivery_date, freelance_id: @project.freelance_id, project_amount: @project.project_amount, project_delete: @project.project_delete, project_details: @project.project_details, project_paid: @project.project_paid, project_status: @project.project_status } }
    end

    assert_redirected_to project_url(Project.last)
  end

  test "should show project" do
    get project_url(@project)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_url(@project)
    assert_response :success
  end

  test "should update project" do
    patch project_url(@project), params: { project: { client_id: @project.client_id, delivery_date: @project.delivery_date, freelance_id: @project.freelance_id, project_amount: @project.project_amount, project_delete: @project.project_delete, project_details: @project.project_details, project_paid: @project.project_paid, project_status: @project.project_status } }
    assert_redirected_to project_url(@project)
  end

  test "should destroy project" do
    assert_difference('Project.count', -1) do
      delete project_url(@project)
    end

    assert_redirected_to projects_url
  end
end
