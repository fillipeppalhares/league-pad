class Note < ApplicationRecord
  belongs_to :champion
  belongs_to :adversary_champion, class_name: "Champion", foreign_key: "adversary_champion_id"
end
