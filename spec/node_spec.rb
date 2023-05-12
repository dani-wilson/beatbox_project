require './lib/node'

RSpec.describe Node do

node = Node.new("plop")
    
    it 'exists' do
    expect(node).to be_an_instance_of(Node)
    end

    it 'passes an argument' do
    expect(node.data).to eq("plop")
    end

end