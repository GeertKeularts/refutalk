class Request < ActiveRecord::Base
  belongs_to :refugee, class_name: 'User', foreign_key: :refugee_id
  belongs_to :dutchy, class_name: 'User', foreign_key: :dutchy_id

  validates :message, presence: true
  validates :status, :inclusion => {in: ["pending", "declined", "accepted"]}
  validates :refugee_id, :dutchy_id, presence: true
  validates :dutchy_id, uniqueness: {scope: :refugee_id, message: "You've already send a request"}
end
