class TodoList

	def initialize(list_item)
		@get_items = list_item.split(", ")
	end

	def add_item(list_item)
	@todo_list << list_item
	end

	def delete_item(list_item)
	@todo_list.delete(list_item)
	end

	def get_items
	@todo_list
	end

end

# list = TodoList.new("do the dishes, mow the lawn")

# list.get_items
# list.add_item("mop")
# list.delete_item("do the dishes")

# puts "Here is the list of things to do #{list.get_items}"



