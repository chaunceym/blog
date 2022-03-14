class ApplicationController < ActionController::API
  def render_resource(source)
    if source.errors.empty?
      render json: { resource: source }, status: 200
    else
      render json: { errors: source.errors }, status: 400
    end
  end

end
