require 'minitest_helper'
require './stitch'

describe Stitch do
  before do
    @one = 1
  end

  it "must do stuff" do
    @one.must_equal 1
  end
end