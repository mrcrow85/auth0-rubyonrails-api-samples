# frozen_string_literal: true
class PrivateController < ActionController::API
  include Secured

  # I would avoid using reserved words as function names,
  # this is technically allowed, but I don't think it's a good practice
  def private
    render json: { message: 'Hello from a private endpoint! You need to be authenticated to see this.' }
  end

  def private_scoped
    render json: { message: 'Hello from a private endpoint! You need to be authenticated and have a scope of read:messages to see this.' }
  end
end
