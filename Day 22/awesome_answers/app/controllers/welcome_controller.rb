class WelcomeController < ApplicationController
  #This is the `index` action in our Welcome controller
  def index
    #This will send an http response that has simple text: Hello World!!
    # render plain: 'Hello Word!'

    # render 'welcome/index'
  end
end
