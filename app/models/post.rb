class GoodnessValidator < ActiveModel::Validator
    def validate(record)
        puts "check nil: #{record.title} is: #{record.title == ""}" 
      if record.title == ""
        record.errors.add :title, :null, message: "title is null"
        # record.errors.add :base, "field is null"
      end
    end
end
  

class Post < ApplicationRecord
    validates :name, presence: true, uniqueness: true, confirmation: true
    # validates :name_confirmation, presence: true
    validates :name, exclusion: { in: %w(name),
        message: "'%{value}' is reserved." }
    validates :name, length: { minimum: 2 }
    validates_with GoodnessValidator

    # before_validation :check_name_has_name_string
    after_validation :add_number_to_name, on: [:update]
    # private :check_name_has_name_string
    def check_name_has_name_string
        self.name = "name is auto" if name == "name"              
    end

    def add_number_to_name
        #GỌi 2 lần khi create
        self.name = "#{name} 1.0"
    end
end


