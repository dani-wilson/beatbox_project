require './lib/node'

RSpec.describe Node do

node = Node.new
    
    it 'exists' do
    expect(node).to be_an_instance_of(Node)
    end
    #expect(node.data).to eq("plop")

end