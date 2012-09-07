require "grab/version"

module Grab
  def grab(*keys)
    keys.map { |k| self.fetch(k) }
  end

  def values(*args)
    args.map { |k| self[k] }
  end
end

class Hash
  include Grab

  def values(*args)
    args = keys if args.empty?
    super
  end
end
