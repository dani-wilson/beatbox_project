require 'pry'

class LinkedList
    attr_accessor :head

    def initialize
        self.head = nil
        @count = 0
    end

    def append(data)
        current_node = @head
        if @head.nil?
            self.head = Node.new(data, nil)
        else
            new_node = Node.new(data, nil)
            until current_node.next_node.nil?
            current_node = current_node.next_node
            end
            current_node.next_node = new_node
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

    def find(position, length)
        counter = 0
        current_node = @head
        #puts current_node.data
            until counter == position
                #puts current_node.data
                current_node = current_node.next_node
                #puts current_node.data
                counter += 1
                return current_node.data
            end
    end

    # def includes?
    #     node = self.head
    #     while(!node.nil?)
    #         if(node.data == data)
    #             return true
    #         end
    #         node = node.next_node
    #     end
    #     false
    # end

end

