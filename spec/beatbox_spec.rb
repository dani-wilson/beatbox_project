require './lib/node'
require './lib/linked_list'
require './lib/beatbox'

RSpec.describe Beatbox do
    bb = Beatbox.new
    list = LinkedList.new

    it 'exists' do

        expect(bb).to be_an_instance_of(Beatbox)
        expect(list).to be_an_instance_of(LinkedList)
    end

    it 'can append more than one data at a time' do
        expect(bb.append("deep doo ditt")).to eq("deep doo ditt")
        expect(bb.list.head.data).to eq("deep")
        expect(bb.list.next_node.data).to eq("doo")
        expect(bb.append("woo hoo shu")).to eq("woo hoo shoo")
        expect(bb.count).to eq(6)
    end
end