require 'json'

class ConfigHash < Hash
  class KeyNotFound < StandardError; end

  def self.from_json_file(filename)
    from_json(File.read(filename))
  end

  def self.from_json(json)
    JSON.parse(json, symbolize_names: true, object_class: ConfigHash)
  end

  def stringify_keys
    raise NotImplementedError, "You cannot stringify the keys as we look them up as symbols"
  end

  def [](key)
    if value = super(key.to_sym)
      value
    else
      raise KeyNotFound, "Key `#{key}` not found"
    end
  end
end
