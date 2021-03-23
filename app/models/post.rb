class Post < ApplicationRecord
    self.table_name = "posts"
    before_save :set_name
    def set_name
        self.name = self.name + " 1.0"
    end
end
