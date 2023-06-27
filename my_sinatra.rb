# frozen_string_literal: true

module MySinatra
  def self.included(klass)
    puts "MySinatra included in #{klass}"
  end

  def run(path)
    if paths.key? path
      paths[path].call
    else
      StandardError.new "No route defined for #{path}"
    end
  end

  def paths
    @paths ||= {}
  end

  def get(path, &block)
    puts "Defining a GET request for #{path}"
    paths[path] = block
  end
end

include MySinatra
