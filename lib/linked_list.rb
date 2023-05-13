class LinkedList
  attr_reader :head
  def initialize
    @head = head
    @node_counter = 1
  end

  def append(str)
    if @head == nil
      @head = Node.new(str)
    else
      @next_node = Node.new(str)
      @head.next_node = @next_node
    end
  end
  
  def count
    if @next_node != nil
      @node_counter += 1
    elsif @next_node == nil
      @node_counter
    end
  end
  
  def to_string
    if count == 1 
      @head.data
    else
      # "#{@head.data} #{@next_node.data}"
      @head.data + " " + @next_node.data
    end
  end
end