class Stack
  def initialize
    # create ivar to store stack here!
    @array = []

  end

  def push(el)
    # adds an element to the stack
    array << el
    self
  end

  def pop
    # removes one element from the stack
    array.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    array.last
  end

  private
  attr_reader :array
end


class MyQueue
    def initialize
      @inner_array = []

    end

    def enqueue(ele) #Add element to back of queue
      inner_array.unshift(ele)
    end

    def dequeue # Remove and return element from front of queue
      inner_array.pop
    end

    def show 
      inner_array.dup # dup shows original array, doesn't manipulate original array
    end

    def empty?
      inner_array.empty?
    end
    def peek
    end

    private
    attr_reader :inner_array

end

class Map

    def initialize
    end

    def set(key, value)
    end


    def get(key)
    end

    def delete(key)
    end

    def show #show the entire queue but dont return it!

    end

    def set 
    end




end


