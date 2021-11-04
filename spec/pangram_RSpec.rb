require_relative 'spec_helper'
require_relative '../String/pangram'
RSpec.describe Pangram do
  context '#pangram' do
    string = 'A raposa marrom rápida salta sobre o cachorro'
    it { expect(Pangram.new.pangram(string)).to eql? 'Não é Pangram' }
  end
end
