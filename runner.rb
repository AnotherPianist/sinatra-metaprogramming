# frozen_string_literal: true

require_relative 'my_sinatra'

get '/hello' do
  puts 'Hello world!'
end

before '/hello' do
  puts 'Before filter'
end

run '/hello'
