class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
:weight, :handed, :complexion, :t_shirt_size,
:wrist_size, :glove_size, :pant_length, :pant_width

  # Initialize method takes in the unspecified, abstract argument of
  # 'attributes'. Then, the method iterates over each key/value pair in
  # the 'attributes' hash.
  #
  # The name of the key becomes the name of a setter method and the value
  # associated with the key is the name of the value you want to pass to that
  # method.
  #
  # The Ruby #send method then calls the method name that is the key’s name,
  # with an argument of the value.
  #
  # The #send method is another way of calling a method on an object.
  # Eg. Instances of the User class have a #name= method that allows the
  # setting of the name of a user to a particular 'string:'.
  def initialize(attributes)
    attributes.each do |key, value|
      self.send(("#{key}="), value)
    end
  end
end
