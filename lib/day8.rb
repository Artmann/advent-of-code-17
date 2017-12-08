
class Day8

  def initialize
    @registers = {}
    @highest_register_value = 0
  end

  def compute_instructions(&block)
    instance_eval(&block)
  end

  def get(key)
    return @registers[key] || 0
  end

  def inc(a, b)
    v1 = @registers[a] || 0
    @registers[a] = v1 + b
    @highest_register_value = highest_register if highest_register > @highest_register_value
  end

  def dec(a, b)
    v1 = @registers[a] || 0
    @registers[a] = v1 - b
    @highest_register_value = highest_register if highest_register > @highest_register_value
  end

  def highest_register
    @registers.max_by{|k,v| v}.last
  end

  def highest_register_value
    @highest_register_value
  end
end