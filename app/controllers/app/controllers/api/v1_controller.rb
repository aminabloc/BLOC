class App::Controllers::Api::V1Controller < ApplicationController
     protect_from_forgery with: :null_session

     before_action :destroy_session

      def destroy_session
        request.session_options[:skip] = true
      end
end
