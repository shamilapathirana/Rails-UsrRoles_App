class UsrContactsController < ApplicationController

    def index
      @contacts = UsrContact.all #show all users
    end

    def new
      @contact = UsrContact.new
      @all_roles = UsrRole.all
      @contact_roles = @contact.usr_contact_roles.build
    end

    def create
      @contact = UsrContact.new(contact_params)
      params[:usr_roles][:id].each do |role|
        if !role.empty?
          @contact.usr_contact_roles.build(:usr_role_id => role)
        end
      end
      if @contact.save
        redirect_to home_path
      else
        render 'new'
      end
    end

    def show
      @contact = UsrContact.find(params[:id])
      @roles = @contact.usr_roles
    end

    private
    def contact_params
      params.require(:usr_contact).permit(:name)
    end

end
