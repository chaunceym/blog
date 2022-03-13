class FirstController < ApplicationController
  def hello
   render plain: 'Hello World' 
  end
end