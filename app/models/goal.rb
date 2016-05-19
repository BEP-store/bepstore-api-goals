# Activity goal
class Goal < Activity
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paranoia

  field :id, type: Integer
  field :title, type: String
  field :description, type: String
  field :status, type: String

  # Should be moved out of here
  field :updateText, type: RichText

  # Core team
  field :product_owner, type: Integer
  field :head_design, type: Integer
  field :head_frontend, type: Integer
  field :head_backend, type: Integer

  alias_attribute :name, :title

  validates :parents, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :status, presence: true

  def self.engine
    'goals'
  end
end
