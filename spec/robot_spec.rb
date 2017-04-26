
# Manage robot factory settings.

# When robots come off the factory floor, they have no name.

# The first time you boot them up, a random name is generated in the format of
# two uppercase letters followed by three digits, such as RX837 or BC811.

# Every once in a while we need to reset a robot to its factory settings, which
# means that their name gets wiped. The next time you ask, it will respond with
# a new random name.

# The names must be random: they should not follow a predictable sequence.
# Random names means a risk of collisions. Your solution should not allow the
# use of the same name twice when avoidable. In some exercism language tracks
# there are tests to ensure that the same name is never used twice.


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
