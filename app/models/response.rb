class Response < ApplicationRecord
  belongs_to :game

  def by_sender(id)
    where(sender_id: id)
  end

  def active
    where(active: true)
  end
end
