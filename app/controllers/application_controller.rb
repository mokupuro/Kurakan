class ApplicationController < ActionController::Base
  unless Rails.env.development?
    rescue_from Exception,                      with: :_render_500
    rescue_from ActiveRecord::RecordNotFound,   with: :_render_404
    rescue_from ActionController::RoutingError, with: :_render_404
  end

  def routing_error
    raise ActionController::RoutingError, params[:path]
  end

  def after_sign_in_path_for(resource)
    circles_path
  end

  private
    def _render_404(e = nil)
      logger.info "Rendering 404 with excaption: #{e.message}" if e

      if request.format.to_sym == :json
        render json: { error: "404 Not Found" }, status: :not_found
      else
        render template: 'errors/404.html', status: 404, layout: 'application', content_type: 'text/html'
      end
    end

    def _render_500(e = nil)
      logger.error "Rendering 500 with excaption: #{e.message}" if e

      if request.format.to_sym == :json
        render json: { error: "500 Internal Server Error" }, status: :internal_server_error
      else
        render template: 'errors/500.html', status: 404, layout: 'application', content_type: 'text/html'
      end
    end

    def sign_in_required
      redirect_to new_user_session_url unless user_signed_in?
    end 
end
