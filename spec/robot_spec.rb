require_relative '../robot.rb'

describe Robot do
  describe 'Initialization' do
    it 'should create new robot with name' do
      r1 = Robot.new
      expect(r1).to have_attributes(name: 'AB123')
    end
  end


  describe 'Reset' do
    it 'should create new name for robot' do
      r1 = Robot.new
      r1.reset
      expect(r1.name).not_to eq('AB123')
    end
  end

end
