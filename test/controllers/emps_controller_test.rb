require 'test_helper'

class EmpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @emp = emps(:one)
  end

  test "should get index" do
    get emps_url
    assert_response :success
  end

  test "should get new" do
    get new_emp_url
    assert_response :success
  end

  test "should create emp" do
    assert_difference('Emp.count') do
      post emps_url, params: { emp: { age: @emp.age, designation: @emp.designation, gender: @emp.gender, name: @emp.name } }
    end

    assert_redirected_to emp_url(Emp.last)
  end

  test "should show emp" do
    get emp_url(@emp)
    assert_response :success
  end

  test "should get edit" do
    get edit_emp_url(@emp)
    assert_response :success
  end

  test "should update emp" do
    patch emp_url(@emp), params: { emp: { age: @emp.age, designation: @emp.designation, gender: @emp.gender, name: @emp.name } }
    assert_redirected_to emp_url(@emp)
  end

  test "should destroy emp" do
    assert_difference('Emp.count', -1) do
      delete emp_url(@emp)
    end

    assert_redirected_to emps_url
  end
end
