class SessionsController < ApplicationController
    def new
    end

    def create
        if params[:name].nil? || params[:name].empty?
            redirect_to :new
        else
            session[:name] = params[:name]
            redirect_to :show
        end
    end
    
    def show
    end

    def destroy
        session.delete :name
        redirect_to :new
    end
end