require 'spec_helper'

describe Mark do
  it { should respond_to :title }
  it { should respond_to :url }
  it { should respond_to :description }
end
