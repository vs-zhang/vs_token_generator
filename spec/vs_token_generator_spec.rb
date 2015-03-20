require 'spec_helper'

describe VsTokenGenerator do
  describe '#new' do
    let(:length)     {30}
    let(:group_size) {10}

    it 'expect to create a token class' do
      a = VsTokenGenerator::Token.new
      expect(a.class).to eq VsTokenGenerator::Token
    end

    it 'should be able to set the length and group_size of token' do
      a = VsTokenGenerator::Token.new(length:length, group_size:group_size)
      expect(a.length).to eq length
    end

    it 'expect the token class can generate token' do
      a = VsTokenGenerator::Token.new(length:12, group_size:2)
      result = a.length + (a.length/a.group_size).floor - 1
      expect(a.generate.length).to eq result
    end
  end
end