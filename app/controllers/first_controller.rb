class FirstController < ApplicationController
  def hello
    @xxx = '我是 hello 的内部变量'
   render 'first/hello' 
  end
end