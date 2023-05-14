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
        beats = []
        current_node = @head
        until current_node == nil
            beats << current_node.data
            current_node = current_node.next_node
        end
        beats.join(" ")
    end

    def prepend(data)
        if @head.nil?
        new_node = Node.new(data, nil)
        @head = new_node
        else
            new_node = Node.new(data, @head)
            @head = new_node
        end
        @count += 1
        return data
    end

    def insert(index, data)
        if @head.nil?
            new_node = Node.new(data, nil)
            @head = new_node
        else
            current_node = @head
            new_node = Node.new(data, nil)
            (index - 1).times do
                current_node = current_node.next_node
            end
            new_node.next_node = current_node.next_node
            current_node.next_node = new_node
        end
        return data
    end

    
end

