class Request < ActiveRecord::Base
  belongs_to :refugee, class_name: :user, foreign_key: :refugee_id
  belongs_to :dutchy, class_name: :user, foreign_key: :dutchy_id
end
