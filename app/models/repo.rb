class Repo < Activity
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paranoia

  belongs_to :goal

  field :route, type: String

  validates :route, presence: true

  def id
    route
  end
end
