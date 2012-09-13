require "grab/version"

module Grab
  def grab(*keys)
    keys.map { |k| self[k] }
  end

  def grab!(*keys)
    keys.map { |k| self.fetch(k) }
  end
end

class Hash
  include Grab
end
