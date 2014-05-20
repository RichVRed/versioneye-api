require 'grape'
require_relative 'project_dependency_entity.rb'

module EntitiesV2
  class ProjectEntity < Grape::Entity
    expose :id
    expose :project_key
    expose :name
    expose :project_type
    expose :public
    expose :private_project, :as => :private_scm
    expose :period
    expose :source
    expose :dep_number
    expose :out_number
    expose :created_at
    expose :updated_at
    expose :dependencies, :using => ProjectDependencyEntity, :if => { :type => :full}
  end
end
