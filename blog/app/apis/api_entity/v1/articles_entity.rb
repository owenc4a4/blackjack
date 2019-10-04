module ApiEntity
    module V1
      class ArticlesEntity < Grape::Entity
        expose :id, documentation: { type: 'Integer', desc: 'User ID' }
        expose :title, documentation: { type: 'String', desc: 'User Email' }
      end
    end
  end
