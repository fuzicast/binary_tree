require "binary_tree/version"

module BinaryTree
  class Node
    attr_accessor :left, :right, :item

    def initialize(item)
      @item = item
    end

    def add(item)
      if @item > item
        if @left.nil?
          @left = BinaryTree::Node.new(item)
        else
          @left.add(item)
        end
      elsif @item < item
        if @right.nil?
          @right = BinaryTree::Node.new(item)
        else
          @right.add(item)
        end
      end
    end

    def find(item)
      if self.item == item
        self.item
      elsif self.item > item
        if self.left.nil?
          return nil
        else
          self.left.find(item)
        end
      else
        if self.right.nil?
          return nil
        else
          self.right.find(item)
        end
      end
    end

    def print_asc
      left = self.left.print_asc if !self.left.nil?
      right = self.right.print_asc if !self.right.nil?
      return [left, self.item, right].compact.join(',')
    end
  end
end
