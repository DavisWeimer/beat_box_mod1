require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it 'exists' do
    list = LinkedList.new

    expect(list).to be_instance_of(LinkedList)
  end

  it 'has a head' do
    list = LinkedList.new

    expect(list.head).to eq nil
  end

  it 'can append strings' do
    list = LinkedList.new
    list.append("doop")

    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq nil
  end

  it 'counts one node in linked list' do
    list = LinkedList.new
    list.append("doop")

    expect(list.count).to eq 1
  end

  it 'can put node data to string' do
    list = LinkedList.new
    list.append("doop")

    expect(list.to_string).to eq("doop")
  end

  it 'can append more strings' do
    list = LinkedList.new
    list.append("doop")
    
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq nil
    
    list.append("deep")
    
    expect(list.head.next_node.data).to eq("deep")
    expect(list.head.next_node.next_node).to eq nil
  end

  it 'can count multiple nodes in linked list' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.count).to eq 2
  end

  it 'can multiple node data to string' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.to_string).to eq("doop deep")
  end
end