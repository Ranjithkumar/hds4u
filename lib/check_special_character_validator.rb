class CheckSpecialCharacterValidator < ActiveModel::EachValidator
  
  def validate_each(object, attribute, value)
    special_characters = ["\"", "'" , "~", "!", "@", "#", "%", "?", "+", "=", "|", "," , "$", "^", "&", "*", "(" , ")" , "{" , "}" , "[" , "]" , "<" , ">" , "\/", " " ]
    flag = false
    
    special_characters.each do |char|
      if value.strip.include?(char)
        flag = true
        break
      end
    end
    
    object.errors[attribute] << (options[:message] || "is Invalid entry(should not have special characters)") if flag
  end
  
end