module Adapter
  def adapter_for(*adapted_attributes)
    adapted_attributes.each do |attribute|
      alias_attribute attribute.to_s, Adapter::legacize(attribute) 
    end
  end
  def self.legacize(attribute)
    'Z' + attribute.to_s.gsub(/_/, '').upcase 
  end
end
