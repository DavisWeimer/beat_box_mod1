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

  it 'can push multiple node data to a string' do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")

    expect(list.to_string).to eq("doop deep")
  end
end

RSpec.describe LinkedList do
  # ITERATION 2 TESTS
  it 'can append plop string' do
    list = LinkedList.new
    list.append("plop")
    
    expect(list.head.data).to eq("plop")
    expect(list.head.next_node).to eq nil
  end

  it 'can push node data to a string' do
    list = LinkedList.new
    list.append("plop")
    
    expect(list.to_string).to eq("plop")
  end

  it 'can append suu string' do
    list = LinkedList.new
    list.append("plop")
    
    expect(list.head.data).to eq("plop")
    expect(list.head.next_node).to eq nil
    
    list.append("suu")
    
    expect(list.head.next_node.data).to eq("suu")
    expect(list.head.next_node.next_node).to eq nil
  end

  it 'can prepend dop string when head is nil' do
    list = LinkedList.new
    list.prepend("dop")
    
    expect(list.head.data).to eq("dop")
  end

  it 'can prepend dop string when head is not nil' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")

    expect(list.head.data).to eq("dop")
    expect(list.head.next_node.data).to eq("plop")
    expect(list.head.next_node.next_node.data).to eq("suu")
    expect(list.head.next_node.next_node.next_node).to eq nil
  end

  it 'can push node data to a string' do
    list = LinkedList.new
    list.append("plop")
    expect(list.to_string).to eq("plop")
    
    list.append("suu")
    expect(list.to_string).to eq("plop suu")
    
    list.prepend("dop")
    expect(list.to_string).to eq("dop plop suu")
  end

  it 'can insert node at indexed position' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")
    expect(list.insert(1, "woo")).to eq(list.head.next_node.next_node)
  end
  
  it 'can push inserted node data to a string' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    expect(list.to_string).to eq("dop woo plop suu")
  end
end