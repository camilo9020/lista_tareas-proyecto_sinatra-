require 'sinatra'
require 'make_todo'


get '/?' do
  @title="Lista de Tareas"
  @items = Tarea.all  
  erb :index
end 

post '/' do
  n=Tarea.create(params[:content])
  redirect '/'
 end

 patch '/' do
 	Tarea.update(params[:done])
 	redirect '/'
 end

delete '/' do
	Tarea.destroy(params[:id])
	redirect '/'
end	

  

