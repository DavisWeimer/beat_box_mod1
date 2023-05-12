class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(music)
    if @head == nil
      @head = Node.new(music)
    end
  end

end