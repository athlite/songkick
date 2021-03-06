class Songkick::Client
  
  using StringExt

  attr_accessor :api_key
  
  def initialize(api_key)
    raise "api_key not set" if api_key.nil?
    @api_key = api_key
  end

  def method_missing(klass_name, *args, &block)
    klass = Songkick::Api.const_get(klass_name.to_s.camelize)
    klass.new(self)
  end
end