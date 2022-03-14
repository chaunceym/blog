class ApplicationController < ActionController::API
  def current_user
    @current_user ||= User.find_by_id session[:current_user_id]
  end
  def render_resource(source)
    return head 404 if source.nil?
    if source.errors.empty?
      render json: { resource: source }, status: 200
    else
      render json: { errors: source.errors }, status: 400
    end
  end

end
