require 'rspec'
require 'binary_tree'

describe BinaryTree::Node do
  before :each do
    @binary_tree = BinaryTree::Node.new(10)
    @binary_tree.add(8)
    @binary_tree.add(12)
    @binary_tree.add(11)
    @binary_tree.add(3)
  end

  it "should maintain the binary order of a series of numbers" do
    expect(@binary_tree.left.item).to eql(8)
    expect(@binary_tree.left.left.item).to eql(3)
    expect(@binary_tree.right.item).to eql(12)
    expect(@binary_tree.right.left.item).to eql(11)
    expect(@binary_tree.item).to eql(10)
  end

  it "should be able to find a number if it exists" do
    expect(@binary_tree.find(3)).to eql(3)
    expect(@binary_tree.find(11)).to eql(11)
    expect(@binary_tree.find(13)).to eql(nil)
  end

  it "should be able to print tree in ascending order" do
    expect(@binary_tree.print_asc).to eql("3,8,10,11,12")
  end
end
