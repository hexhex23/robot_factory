require_relative '../robot.rb'

describe Robot do
  describe 'Initialization' do
    it 'should create new robot with name' do
      r1 = Robot.new
      expect(r1.name).to eq('AB123')
    end
  end
end
