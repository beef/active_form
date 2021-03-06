require 'validatable'

class ActiveForm
  def initialize(attributes = nil)
    self.attributes=(attributes)
    yield self if block_given?
  end

  def attributes=(attributes)
    attributes.each do |key, value|
      self[key] = value
    end if attributes
  end

  def attributes
    attributes = instance_variables
    attributes.delete("@errors")
    Hash[*attributes.collect { |attribute| [attribute[1..-1].to_sym, instance_variable_get(attribute)] }.flatten]
  end

  def [](key)
    instance_variable_get("@#{key}")
  end

  def []=(key, value)
    instance_variable_set("@#{key}", value)
  end

  def method_missing(method_id, *params)
    # Implement _before_type_cast accessors
    if md = /_before_type_cast$/.match(method_id.to_s)
      attr_name = md.pre_match
      return self[attr_name] if self.respond_to?(attr_name)
    end
    super
  end

  def to_xml(options = {})
    options[:root] ||= self.class.to_s.underscore
    attributes.to_xml(options)
  end

  alias_method :respond_to_without_attributes?, :respond_to?

  def new_record?
    true
  end

  def raise_not_implemented_error(*params)
    self.class.raise_not_implemented_error(params)
  end

  alias save raise_not_implemented_error
  alias save! raise_not_implemented_error
  alias update_attribute raise_not_implemented_error
  alias update_attributes raise_not_implemented_error

  include Validatable

  alias save valid?
  alias save! raise_not_implemented_error
  alias update_attribute raise_not_implemented_error
  alias update_attributes raise_not_implemented_error

  class <<self
    def self_and_descendants_from_active_record
      [self]
    end

    def human_name(*args)
      name.humanize
    end

    def human_attribute_name(attribute_key_name)
      attribute_key_name.humanize
    end

    def raise_not_implemented_error(*params)
      raise NotImplementedError
    end
  end
end
