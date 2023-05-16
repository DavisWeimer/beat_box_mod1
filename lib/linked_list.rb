class LinkedList
  attr_reader :head
  def initialize
    @head = head
  end

=begin
            APPEND
This method checks is @head is nil, 
if true instantiates new Node.
Else while the @head loops until 
it's nil and instantiates new Node on tail
=end

  def append(str)
    if @head == nil
      @head = Node.new(str)
    else
      curr_node = @head
      while curr_node.next_node != nil
        curr_node = curr_node.next_node
      end
      curr_node.next_node = Node.new(str)
    end
  end

=begin
            PREPEND
This method checks is @head is nil, 
if true instantiates new Node.
Else a new Node is instantiated and it's next_node
is made the @head and then it's made the @head
=end

  def prepend(str)
    if @head == nil
      @head = Node.new(str)
    else
      node = Node.new(str)
      node.next_node = @head
      @head = node
      
    end
  end
  
=begin
            COUNT
This method takes @head runs a loop
until the @head == nil and adds +1 to
the node_counter each time 
then returning the counter integer
=end

  def count
  curr_node = @head
  node_counter = 0
    until curr_node == nil
      node_counter += 1
      curr_node = curr_node.next_node
    end
    node_counter
  end

=begin
            TO STRING
This method return the @head.data + and array(data_str) to
a string. The loop runs until @head == nil and shovels

=end
  
  def to_string
  data_str = []
  curr_node = @head
    until curr_node == nil
      data_str << curr_node.data
      curr_node = curr_node.next_node
    end
    data_str * " "
    require 'pry'; binding.pry
  end
end