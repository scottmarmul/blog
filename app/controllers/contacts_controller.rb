class ContactsController < ApplicationController
	def index

	respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end
	
end
