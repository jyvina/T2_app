class Program < ApplicationRecord
  belongs_to :client
  has_many :training
end
