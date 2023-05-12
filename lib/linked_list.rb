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
            old_head = @head
            @head = Node.new(data, old_head)
        end
        return @head.data
    end

    def count
        if !@head.nil?
            @count += 1
        end
        
    end




    

end