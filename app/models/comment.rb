# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  comment    :string           not null
#  name       :string           not null
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :bigint
#
# Indexes
#
#  index_comments_on_board_id  (board_id)
#
# Foreign Keys
#
#  fk_rails_...  (board_id => boards.id)
#
class Comment < ApplicationRecord
  belongs_to :board
end
