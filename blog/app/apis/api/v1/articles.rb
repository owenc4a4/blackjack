module API
    module V1
      class Articles < Grape::API
        resource :articles do

          # GET /api/v1/articles
          # desc 'Retrun all article x', entity: ApiEntity::V1::ArticlesEntity
          desc 'Retrun all article x', {
            success: ApiEntity::V1::ArticlesEntity
          }
          get '/' do
            @arts = Article.all
            present @arts, with: ApiEntity::V1::ArticlesEntity
          end

          # GET /api/v1/articles/{:id}
          desc 'Retrun a article'
          params do
            requires :id, type: Integer
          end
          get ':id' do
            Article.find(params[:id])
          end

        end
      end
    end
  end