class Person
  #your code here
  def self.to_attr key
    attr_accessor key.to_sym
  end

  def initialize attributes
    attributes.each do |key,value|
      self.class.to_attr key
      self.send(("#{key}="),value)
    end
  end

end
