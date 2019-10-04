require 'grape-swagger'

module API
    class Root < Grape::API
      # http://localhost:3000/api/


      mount API::V1::Root
      add_swagger_documentation
    end
  end