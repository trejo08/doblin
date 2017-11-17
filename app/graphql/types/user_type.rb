Types::UserType = GraphQL::ObjectType.define do
  name 'User'

  field :id, !types.ID
  field :name, types.String #, property: :name
  field :lastname, types.String #, property: :lastname
  field :email, !types.String #, property: :email
  # field :products types[Types::Product]
end
