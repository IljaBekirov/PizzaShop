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

class Order < ActiveRecord::Base
end

get '/' do
  @products = Product.all
  erb :index
end

get '/about' do
  erb :about
end

get '/cart' do
  @orders_input = params[:orders]
  @orders = parse_orders_line(@orders_input)
  @orders.map do |order|
    order[0] = Product.find_by_id(order[0].to_i)
  end
  erb :cart
end

post '/cart' do
  @orders_input = params[:orders]
  @orders = parse_orders_line(@orders_input)
  @orders.map do |order|
    order[0] = Product.find_by_id(order[0].to_i)
  end
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

post '/place_order' do
  @o = Order.new(params[:order])
  if @o.save
    erb :order_placed
  else
    @error = @o.errors.full_messages.first
    erb :index
  end
end

get '/orders' do
  @orders = Order.all
  erb :orders
end