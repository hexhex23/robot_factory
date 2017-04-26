require_relative '../robot.rb'

describe Robot do
  before(:context) do
    @r1 = Robot.new('AB123')
    @r2 = Robot.new('CD321')
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
end
