module PaginatedResponder
  def to_html
    if get? && resource.is_a?(ActiveRecord::Relation)
      controller.paginated_scope(resource)
    end
    super
  end
end

class ApplicationController < ActionController::Base
  def paginated_scope(relation)
    instance_variable_set "@#{controller_name}", relation.paginate(params[:page])
  end
  hide_action :paginated_scope
  
  def responder
	myResponder
  end
  
  protect_from_forgery
end

