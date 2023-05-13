require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
    list = LinkedList.new

    it 'exists' do
        expect(list).to be_an_instance_of(LinkedList)
    end

    it 'returns nil if head is empty' do
        expect(list.head).to eq(nil)
    end

    it 'can append a value' do

        expect(list.append("doop")).to eq("doop")
    end

    it 'can count the number of nodes in a list' do

    expect(list.count).to eq(1)
    end 

    it 'converts list to a string' do

        expect(list.to_string).to eq("doop")
    end

    it 'creates a new node' do
        list.append("deep")
        expect(list.append("deep")).to eq("deep")
        expect(list.head.data).to eq("doop")
    end

    it 'returns a new string with both nodes' do
        
        expect(list.to_string).to eq("doop deep")
    end

    it 'prepends a node' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.head.data).to eq("dop")
        expect(list.to_string).to eq("dop plop suu")
        expect(list.count).to eq(3)
    end

    it 'can insert data at any point in the list' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(1, "woo")
        expect(list.insert(1, "woo")).to eq("woo")
        expect(list.to_string).to eq("dop woo plop suu")
    end

end