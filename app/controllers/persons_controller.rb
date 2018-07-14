class PersonsController < ApplicationController
  # Devise авторизация
  # в версии 5.1 before_filter был изменен на before_action
  # если нам нужно определить именно для отдельных методов, то используем
  # before_action :authenticate_user!, except => [:show, :index]
  before_action :authenticate_user!
  
  def index
  end
end
