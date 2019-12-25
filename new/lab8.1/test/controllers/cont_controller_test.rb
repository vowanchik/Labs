# frozen_string_literal: true

require 'test_helper'

class ContControllerTest < ActionDispatch::IntegrationTest
  test 'should get main' do
    get '/'
    assert_response :success
  end

  test 'should get answer' do
    get '/answer?arr=1'
    assert_response :success
  end

  test 'check max sequence' do
    get answer_path, params: { arr: '1 2 3 4 5 6 -1 -2 0 1 2' }
    expect = (1..6).to_a
    assert_equal(expect, assigns[:max])
  end

  test 'check all result sequences' do 
    get answer_path, params: { arr: '1 2 3 4 5 6 -1 -2 0 1 2' }
    expect = [
      (1..6).to_a,
      [-1],
      [-2, 0, 1, 2]
    ]
    assert expect == assigns[:sequences]
  end
end
