require "grab/version"

module Grab
  class ::Hash
    alias_method :orig_values, :values

    def grab(*keys)
      keys.map { |k| self.fetch(k) }
    end

    def values(*args)
      if args.empty?
        orig_values
      else
        args.map { |k| self[k] }
      end
    end
  end
end

class Hash
  include Grab
end