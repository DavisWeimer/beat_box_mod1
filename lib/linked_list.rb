class LinkedList
  attr_reader :head
  def initialize
    @head = head
    @node_counter = 0
  end

  def append(music)
    if @head == nil
      @head = Node.new(music)
      @node_counter += 1
    end
  end

  def count
    @node_counter
  end

  def to_string
    @head.data
  end

end