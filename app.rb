require 'sinatra/base'
require './lib/diary'
require './database_connection_setup'

class DiaryApp < Sinatra::Base

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



  run! if app_file == $0

end
