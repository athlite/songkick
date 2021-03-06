
module StringExt
  refine String do
    def camelize
      self.split("_").map( &:capitalize ).join
    end

    # courtesy of Rails/ActiveSupport :-D
    def underscore
      self.gsub(/::/, '/').
      gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
      gsub(/([a-z\d])([A-Z])/,'\1_\2').
      tr("-", "_").
      downcase
    end
  end
end