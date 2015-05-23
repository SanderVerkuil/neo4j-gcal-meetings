class Meeting 
  include Neo4j::ActiveNode
  property :id, type: Integer
  property :name, type: String
  property :description, type: String
  property :start, type: DateTime
  property :end, type: DateTime

  has_many :in, :attendees, type: :attendees, class_name: 'User'
end