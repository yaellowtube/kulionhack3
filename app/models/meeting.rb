class Meeting < ApplicationRecord
    acts_as_votable
    has_many :meeting_replies, dependent: :destroy
end
