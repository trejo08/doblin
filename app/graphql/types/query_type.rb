Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :users, Types::UserType do
    description 'Fetch users list'
    resolve ->(obj, args, ctx) {
      User.all
    }
  end
end
