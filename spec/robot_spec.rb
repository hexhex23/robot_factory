require_relative '../robot.rb'

describe Robot do
  before(:context) do
    @r1 = Robot.new
    @r2 = Robot.new
  end
  describe 'Initialization' do
    it 'should create new robot with name' do
      @r1 = Robot.new
      expect(@r1).to be_instance_of(Robot)
    end
    it 'check that robot names are random' do
      @r2 = Robot.new
      expect(r1.name).not_to eql(r2.name)
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
