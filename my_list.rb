require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  
  def initialize(*list)
    @list = list
  end
end

list = MyList.new(1,2,3,4)
list.filter {|e| e.even?}