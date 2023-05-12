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
end