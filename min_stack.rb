class MinStack

=begin
    initialize your data structure here.
=end
    def initialize()
        @store = []
    end
=begin
    :type x: Integer
    :rtype: Void
=end
    def push(x)
        @store << x
        
    end


=begin
    :rtype: Void
=end
    def pop
        @store.pop
        
    end


=begin
    :rtype: Integer
=end
    def top
        @store.last
        
    end


=begin
    :rtype: Integer
=end
    def get_min
        minimum = @store.pop
        until @store.empty?
            element = @store.pop
            if minimum > element
                minimum = element
            end
        end
        minimum
    end


end

stack = MinStack.new
stack.push(1)
stack.push(3)
stack.push(-1)
p stack
p stack.top
p stack.get_min