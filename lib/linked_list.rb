require 'pry'

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
            current_node = @head
            new_node = Node.new(data, nil)
            #print "Current Node Data - "
            #puts current_node.data
            #print "New Node Data - "
            #puts new_node.data
            until current_node.next_node.nil?
            #print "Is nil? - "
            #puts current_node.data
            current_node = current_node.next_node
            end
            #print "This is the nil node - "
            #puts current_node.data
            current_node.next_node = new_node
            #print "this is the next node - "
            #puts current_node.next_node.data
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
            until counter == position
                #print "current node data - "
                #puts current_node.data
                current_node = current_node.next_node
                #"new current node - "
                #puts current_node.data
                counter += 1
            end
            return_array = []
            length.times do
                return_array << current_node.data
                current_node = current_node.next_node
            end
            return return_array.join(" ")
    end

    def includes?(data)
        node = self.head
        while(!node.nil?)
            if(node.data == data)
                return true
            end
            node = node.next_node
        end
        false
    end

    def pop
        current_node = @head
        #tail = current_node.next_node.nil?
        previous_node = nil
        until current_node.next_node == nil
            previous_node = current_node
            current_node = previous_node.next_node
        end
        #return_string = []
        #return_string << current_node.data
        #puts current_node.data
        #return current_node.data
        return_string = current_node.data
        #current_node = previous_node
        previous_node.next_node = nil
        #puts current_node.data
        @count -= 1
        return return_string
    end




end

