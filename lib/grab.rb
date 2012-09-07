require "grab/version"

class Hash
  alias_method :old_values, :values

  def grab(*keys)
    keys.map { |k| self.fetch(k) }
  end

  def values(*args)
    if args.nil?
      old_values
    else
      args.map { |k| self[k] }
    end
  end
end