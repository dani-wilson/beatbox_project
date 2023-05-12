class LinkedList
    attr_accessor :head

    def initialize
        self.head = nil
        @count = 0
    end

    def append(data)
        if @head.nil?
            self.head = Node.new(data, nil)
        else
            new_node = Node.new(data, nil)
            @head.next_node = new_node
        end
        @count += 1
        return data
    end

    def count
        @count
    end

    def to_string
        x = @head.data
        x.to_s
    end

    

end