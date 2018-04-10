class StackQueue
    def initialize
        @in_stack = []
        @out_stack = []
    end

    def enqueue
        @in_stack.push(val)
    end

    def dequeue
        until @in_stack.empty?
            @out_stack.push(@in_stack.pop)
        end
        @out_stack.pop
    end
end