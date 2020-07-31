require 'sinatra/base'
require './lib/diary'
require './database_connection_setup.rb'

class DiaryApp < Sinatra::Base
  enable :sessions, :method_override

  get '/' do
    erb :index
  end

  get '/entries' do
    @entries = Diary.all
    erb :entries
  end

  get '/entries/new' do
    erb :"entries/new"
  end

  post '/entries' do
    Diary.create_entry(entry: params[:entry])
    redirect '/entries'
  end

  delete '/entries/:id' do
    Diary.delete(id: params[:id])
    redirect '/entries'
  end

  run! if app_file == $0

end
