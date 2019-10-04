module API
    module V1
      class Root < Grape::API
        # http://localhost:3000/api/v1/
        prefix 'api'
        version 'v1', using: :path
        format :json

        mount API::V1::Articles
      end
    end
  end