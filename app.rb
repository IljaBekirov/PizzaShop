require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, 'sqlite3:pizzashop.db'

class Product < ActiveRecord::Base
  def find_by_id(id)
    Product.find(id: id)
  end
end

get '/' do
  @products = Product.all
  erb :index
end

get '/about' do
  erb :about
end

post '/cart' do
  orders_input = params[:orders]
  @orders = parse_orders_line(orders_input)
  erb :cart
end

def parse_orders_line(orders_input)
  arr = []
  orders_input = orders_input.split(',')
  orders_input.map do |order|
    order = order.split('=')
    product = order[0].split('_')
    id = product[1]
    cnt = order[1]
    arr << [id, cnt]
  end
  arr
end