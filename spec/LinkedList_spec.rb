require './lib/linked_list'
require './lib/node'

RSpec.describe LinkedList do
    list = LinkedList.new

    it 'exists' do
        expect(list).to be_an_instance_of(LinkedList)
    end



end