module Mutations
  class BaseMutation < GraphQL::Schema::RelayClassicMutation
    argument_class Types::BaseArgument
    field_class Types::BaseField
    input_object_class Types::BaseInputObject
    object_class Types::BaseObject

    protected

    def current_user
      context[:current_user]
    end

    def current_user_present
      return true if current_user.present?

      raise GraphQL::ExecutionError, 'User not authorized'
    end

    def authorize_user(event)
      return true if current_user.present? && current_user.id == event.user_id

      raise GraphQL::ExecutionError, 'User not authorized'
    end
  end
end
