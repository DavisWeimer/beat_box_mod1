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

  it 'counts one node in link' do
    list = LinkedList.new
    list.append("doop")

    expect(list.count).to eq 1
  end
end