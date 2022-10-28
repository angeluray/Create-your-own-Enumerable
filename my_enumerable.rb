module MyEnumerable
  # self refers to the class that includes this module
  # @list is the instance variable of the class that includes this module
  # yeild is the block that is passed to the method so yield(e) is the same as block.call(e)
  def all?
    @list.each {
      |e| # e is the condition to be checked
      return false unless yield(e) # if the condition is false, return false
    }
    true    # if all elements pass the condition
  end

  def any?
    @list.each {
      |e| # e is the condition to be checked
      return true if yield(e) # if the condition is true, return true
    }
    false    # if all elements pass the condition
  end

  def filter
    filtered_list = []
    @list.each {
      |e| # e is the condition to be checked
      filtered_list << e if yield(e) # if the condition is true, push the element to the filtered list
    }
    filtered_list
  end
end
