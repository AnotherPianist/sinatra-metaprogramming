# frozen_string_literal: true

require_relative 'my_sinatra'

get '/hello' do
  puts 'Hello world!'
end

run '/hello'
