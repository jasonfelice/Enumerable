module MyEnumerable
  def all?(&block)
    each do |element|
      return false unless block.call(element)
    end
    true
  end

  def any?(&block)
    each do |element|
      return true if block.call(element)
    end
    false
  end

  def filter(&block)
    new_list = []
    each { |element| new_list << element if block.call(element) }
    new_list
  end
end
