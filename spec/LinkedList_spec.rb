require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
    list = LinkedList.new

    xit 'exists' do
        expect(list).to be_an_instance_of(LinkedList)
    end

    xit 'returns nil if head is empty' do
        expect(list.head).to eq(nil)
    end

    xit 'can append a value' do

        expect(list.append("doop")).to eq("doop")
    end

    xit 'can count the number of nodes in a list' do

    expect(list.count).to eq(1)
    end 

    xit 'converts list to a string' do

        expect(list.to_string).to eq("doop")
    end

    xit 'creates a new node' do
        expect(list.append("deep")).to eq("deep")
        expect(list.head.data).to eq("doop")
    end

    xit 'returns a new string with both nodes' do
        
        expect(list.to_string).to eq("doop deep")
    end

    xit 'prepends a node' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.head.data).to eq("dop")
        expect(list.to_string).to eq("dop plop suu")
        expect(list.count).to eq(3)
    end

    xit 'can insert data at any point in the list' do
        list = LinkedList.new
        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        expect(list.insert(1, "woo")).to eq("woo")
        expect(list.to_string).to eq("dop woo plop suu")
    end

    it 'can find a value at an index' do
        list_2 = LinkedList.new
        list_2.append("deep")
        #puts list_2.head.data
        list_2.append("woo")
        #puts list.head.data
        list_2.append("shi")
        #puts list.head.data
        list_2.append("shu")
        #puts list.head.data
        list_2.append("blop")
        #puts list.head.data
        #puts list_2.to_string
        expect(list_2.find(2, 1)).to eq("shi")
        expect(list_2.find(2, 3)).to eq("shi shu blop")
    end


end