class Robot
  attr_accessor :name
  def initialize
    num = Random.new
    num1 = sprintf('%03d', num.rand(1000))
    alp2 = num.rand(26)
    alp3 = num.rand(26)
    alpha1 = alp2.to_s(26).each_char.map {|i| ('A'..'Z').to_a[i.to_i(26)]}.join
    alpha2 = alp3.to_s(26).each_char.map {|i| ('A'..'Z').to_a[i.to_i(26)]}.join
    name = "#{alpha1}#{alpha2}#{num1}"
    @name = name
  end

  def reset
    num = Random.new
    num1 = sprintf('%03d', num.rand(1000))
    alp2 = num.rand(26)
    alp3 = num.rand(26)
    alpha1 = alp2.to_s(26).each_char.map {|i| ('A'..'Z').to_a[i.to_i(26)]}.join
    alpha2 = alp3.to_s(26).each_char.map {|i| ('A'..'Z').to_a[i.to_i(26)]}.join
    name = "#{alpha1}#{alpha2}#{num1}"
    @name = name
  end

end
