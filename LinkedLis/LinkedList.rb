class Element
  attr_accessor :prev, :next, :data
  def initialize(data)
    @data = data
  end
end

class Liste
  attr_accessor :head, :tail
  def add(element)
    if @head == nil
      @tail = @head = Element.new(element)
    elsif @tail.next == nil
      node = nil
      while (node = @head.next)
        node = @head.next
      end
      node
    end
  end
end
