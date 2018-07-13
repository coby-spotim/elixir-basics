class MySet
    attr_reader :items

    def initialize()
        @items = []
    end

    def push(item)
        items.push(item) unless items.include?(item)
    end
end

set = MySet.new
set.push("apple")
puts "Initialized set: #{set.items}"

new_set = MySet.new
new_set.push("pie")
puts "Initialized new_set: #{new_set.items}"

set.push("apple")
puts "Attempted to add \"apple\" to set with result: #{set.items}"

new_set.push("apple")
puts "Attempted to add \"apple\" to new_set with result: #{new_set.items}"
