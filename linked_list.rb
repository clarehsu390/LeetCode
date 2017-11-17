class Node
    attr_accessor :key, :val, :next
    def initialize(key, val)
        @key = key
        @val = val
        @next = nil
    end