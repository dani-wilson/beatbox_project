require './lib/node'

Rspec.describe Node do
    node = Node.new("plop")
    expect(node).to be_an_instance_of(Node)
    expect(node.data).to eq("plop")

end