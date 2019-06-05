require 'rspec'
require_relative 'linked_list'

describe List do
  let(:list) { described_class.new }
  let(:bob) { Node.new('Bob') }
  let(:mary) { Node.new('Mary') }
  let(:jane) { Node.new('Jane') }
  let(:max) { Node.new('Max') }

  describe '#tail' do
    context 'when one node' do
      before { list.append(bob) }
      it 'returns the last node' do
        expect(list.tail.data).to be == 'Bob'
      end
    end

    context 'when no node' do
      it 'returns nil' do
        expect(list.tail).to be_nil
      end
    end

    context 'when more than one node' do
      before do
        list.append(bob)
        list.append(mary)
        list.append(jane)
      end

      it 'returns last node' do
        expect(list.tail.data).to be == 'Jane'
      end
    end
  end

  describe '#find_node' do
    context 'when nodes in list' do
      before do
        list.append(bob)
        list.append(mary)
        list.append(jane)
      end

      context 'when node 1' do
        it 'returns head' do
          expect(list.find_node(1).data).to be == 'Bob'
        end
      end

      context 'when node 3' do
        it 'returns 3rd node' do
          expect(list.find_node(3).data).to be == 'Jane'
        end
      end
    end

    context 'when empty list' do
      it 'returns nil' do
        expect(list.find_node(1)).to be_nil
        expect(list.find_node(4)).to be_nil
      end
    end
  end

  describe '#count' do
    context 'when nodes in list' do
      before do
        list.append(bob)
        list.append(mary)
      end

      it 'returns the count' do
        expect(list.count).to be == 2
      end
    end

    context 'when no nodes in list' do
      it 'returns 0' do
        expect(list.count).to be == 0
      end
    end
  end

  describe '#sort' do
    context 'when no nodes' do

    end

    context 'when nodes' do
      let(:result) { list.sort }

      before do
        list.append(jane)
        list.append(bob)
        list.append(mary)
      end

      it 'returns sorted list' do
        expect(result.head.data).to be == 'Bob'
        expect(result.find_node(2).data).to be == 'Jane'
        expect(result.tail.data).to be == 'Mary'
      end
    end
  end

  describe '#delete' do
    context 'when more than 1 nodes in list' do
      before do
        list.append(jane)
        list.append(bob)
        list.append(mary)
      end

      context 'when deleting head' do
        before { list.delete(1) }

        it 'deletes head' do
          expect(list.head.data).to be == 'Bob'
          expect(list.count).to be == 2
        end
      end

      context 'when deleting tail' do
        before { list.delete(3) }

        it 'deletes tail' do
          expect(list.tail.data).to be == 'Bob'
          expect(list.count).to be == 2
        end
      end

      context 'when deleting non-head or non-tail' do
        before { list.delete(2) }

        it 'deletes node' do
          expect(list.head.data).to be == 'Jane'
          expect(list.tail.data).to be == 'Mary'
          expect(list.count).to be == 2
        end
      end
    end

    context 'when only 1 node in list' do
      before do
        list.append(bob)
        list.delete(1)
      end

      it 'deletes head' do
        expect(list.head).to be_nil
      end
    end
  end

  describe '#find_location' do
    context 'when there are nodes in list' do
      before do
        list.append(bob)
        list.append(mary)
        list.append(jane)
      end

      it 'finds the location of the node' do
        expect(list.find_location(mary)).to be == 2
      end
    end
  end

  describe '#reverse' do
    before do
      list.append(bob)
      list.append(mary)
      list.append(jane)
      list.reverse
    end

    it 'reverses the list' do
      expect(list.head.data).to be == 'Jane'
      expect(list.tail.data).to be == 'Bob'
    end
  end
end
