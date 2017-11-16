Types::UserType = GraphQL::ObjectType.define do
  name 'User'
  field :id, !types.ID
  field :username, types.String
  field :lastname, types.String
  field :email, !types.String
end
