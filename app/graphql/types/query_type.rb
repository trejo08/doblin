Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :users, types[Types::UserType] do
    description 'Fetch users list'
    resolve ->(obj, args, ctx) {
      User.order(created_at: :desc)
    }
  end

  field :me, Types::UserType do
    description 'Fetch who I am'
    argument :id, types.Int
    resolve ->(obj, args, ctx) {
      User.find(args[:id])
    }
  end

  field :totalUsers, types.Int do
    description 'returns total users count'
    resolve ->(obj, args, ctx){
      User.count
    }
  end



end
