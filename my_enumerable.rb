module MyEnumerable
    def all?(&block)
        @list.each do |x|
            if block.call
                return true
            end
        end
    end

    def filter(&block)
        newList = @list.filter { block.call }
        return newList
    end
end