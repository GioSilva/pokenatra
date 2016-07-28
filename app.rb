require 'bundler/setup'
require 'pg'
require 'active_record'
require 'pry'
require 'sinatra'
require 'sinatra/reloader'

require_relative 'db/connection'
require_relative 'models/pokemon'
require_relative 'models/trainer'

get '/pokemons' do
  @pokemons = Pokemon.all
  erb :"pokemons/index"
end

get '/pokemons/new' do
  erb :"pokemons/new"
end

get '/pokemons/:id' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/show"
end

post '/pokemons' do
  pokemon = Pokemon.create(params[:pokemon])
  redirect "/pokemons/#{pokemon.id}"
end

get '/pokemons/:id/edit' do
  @pokemon = Pokemon.find(params[:id])
  erb :"pokemons/edit"
end

get '/' do
  redirect '/pokemons'
end
