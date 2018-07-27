class Person
  attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
:weight, :handed, :complexion, :t_shirt_size,
:wrist_size, :glove_size, :pant_length, :pant_width

# attributes = (name:, birthday:, hair_color:, eye_color:, height:,
# weight:, handed:, complexion:, t_shirt_size:,
# wrist_size:, glove_size:, pant_length:, pant_width:)

  def initialize(attributes)
    @name = name
    @birthday = birthday
    @hair_color = hair_color
    @eye_color = eye_color
    @height = height
    @weight = weight
    @handed = handed
    @complexion = complexion
    @t_shirt_size = t_shirt_size
    @wrist_size = wrist_size
    @glove_size = glove_size
    @pant_length = pant_length
    @pant_width = pant_width
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end
  def get_married(person)
    self.partner = person
    if person.class != Person
      begin
      raise PartnerError
    rescue PartnerError => error
      puts error.message
    end
    else
      person.partner = self
    end
  end

class PartnerError < StandardError
  def message
    "you must give the get_married method an argument of an instance of the person class!"
end
end
  #your code here
end
