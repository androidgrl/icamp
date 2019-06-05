require 'rspec'
require_relative 'binary_search_tree'

describe Tree do
  let(:tree) { described_class.new }
  let(:one) { Node.new(1) }
  let(:two) { Node.new(2) }
  let(:three) { Node.new(3) }
  let(:four) { Node.new(4) }

  describe '#append' do
    context 'when tree is empty' do
      before { tree.append(one) }

      it 'creates head' do
        expect(tree.head.data).to be == 1
      end
    end

    context 'when tree has nodes' do
      before do
        tree.append(two)
        tree.append(one)
        tree.append(three)
      end

      it 'appends to the correct node' do
        expect(tree.head.right_node.data).to be == 3
        expect(tree.head.left_node.data).to be == 1
      end
    end
  end

  describe '#find_node' do
    context 'when tree is empty' do
      it 'returns nil' do
        expect(tree.find_node(3)).to be nil
      end
    end

    context 'when node is head' do
      before { tree.append(two) }

      it 'returns two' do
        expect(tree.find_node(2)).to be == two
      end
    end

    context 'when node does not exist' do
      before do
        tree.append(two)
        tree.append(one)
        tree.append(three)
      end

      it 'returns nil' do
        expect(tree.find_node(4)).to be nil
      end
    end

    context 'when node is present' do
      before do
        tree.append(two)
        tree.append(one)
        tree.append(three)
      end

      it 'returns node' do
        expect(tree.find_node(3)).to be == three
      end
    end
  end

  describe '#delete' do
    before do
      tree.append(two)
      tree.append(one)
      tree.append(three)
      tree.append(four)
    end

    context 'when deleteing a leaf node' do
      before { tree.delete(one) }

      it 'deletes node' do
        expect(two.left_node).to be nil
      end
    end

    context 'when deleting a node with one child' do
      before { tree.delete(three) }

      it 'deletes node' do

      end
    end

    context 'when deleting a node with two children' do
      before { tree.delete(two) }

      it 'deletes node' do

      end
    end
  end
end
