class Request < ActiveRecord::Base
  belongs_to :refugee, class_name: :user, foreign_key: :refugee_id
  belongs_to :dutchie, class_name: :user, foreign_key: :dutchie_id
end
