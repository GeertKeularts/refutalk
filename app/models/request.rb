class Request < ActiveRecord::Base
  belongs_to :refugee, class_name: 'User', foreign_key: :refugee_id
  belongs_to :dutchy, class_name: 'User', foreign_key: :dutchy_id
end
