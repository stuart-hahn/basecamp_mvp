class Api::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render json: { message: "Signed up successfully.", user: resource }, status: :ok
  end

  def respond_with(resource, _opts = {})
    render json: { message: "Account deleted successfully." }, status: :ok
  end
end
