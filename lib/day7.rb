class Node
  attr_accessor :name, :weight, :parent

  def initialize(name, weight, parent = nil)
    self.name = name
    self.weight = weight
    self.parent = parent
  end
end

class Tree
  def initialize
    @nodes = {}
  end

  def add(node)
    if @nodes[node.name]
      @nodes[node.name].weight = node.weight if node.weight
      @nodes[node.name].parent = node.parent if node.parent
    else
      @nodes[node.name] = node
    end
  end

  def root_node
    @nodes.values.select { |n| n.parent.nil? }.first
  end

  def balanced?(name)
    weights = @nodes
      .values
      .select { |n| n.parent == name }
      .map { |n| weight(n.name) }

      return weights.uniq.size < 2
  end

  def weight(name)
    node = @nodes[name]
    return node.weight if children(name).empty?

    return node.weight + children(name).map { |c| weight(c.name) }.sum
  end

  def find(name)
    @nodes[name]
  end

  def children(name)
    @nodes.values.select { |n| n.parent == name }
  end

  def find_unbalances_nodes
    @nodes
      .values
      .select { |n| not balanced?(n.name) }
      .map { |n| n.name }
  end
end