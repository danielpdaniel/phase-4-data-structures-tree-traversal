 require "pry"

class Tree
  def initialize(root = nil)
    @root = root
  end

  def get_element_by_id(string)
    nodes_to_search = [@root]
    results = []

    while nodes_to_search.length > 0
      current_node = nodes_to_search.shift
      results.push(current_node[:tag_name])
      if current_node[:id] == string
        return current_node
      else
      nodes_to_search = nodes_to_search + current_node[:children]
      end
    end
  end
end