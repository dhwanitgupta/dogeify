require 'spec_helper'

describe Dogeify do

  subject { Dogeify.new }

  it 'has a version number' do
    expect(Dogeify::VERSION).not_to be nil
  end


  describe  '#process' do
    let(:input) { 'My grandmom gave me a sweater for christman' }
    let(:output) { subject.process(input) }

    it 'converts to lowercase' do
      expect(output.downcase).to eq(output)
    end
  end
end
