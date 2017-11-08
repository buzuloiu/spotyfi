class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

class Song <ApplicationRecord
end

class User <ApplicationRecord
end
