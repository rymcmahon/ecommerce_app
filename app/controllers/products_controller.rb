class ProductsController < ApplicationController
	def home

	end

	def index
		# @title = params[:title]
		# @price = params[:price]
		# @description = params[:description]
		# @image = params[:image]
		# @category = params[:category]
		@products = Product.all
		if params[:price] == "sale"
			@products = Product.where("price < ?", 60)
		end
		if params[:sort] == "low-to-high"
			@products = Product.order(:price => :asc)
		end
		if params[:sort] == "high-to-low"
			@products = Product.order(:price => :desc)
		end
		#/products?sort=price&direction=desc
		#/products?sort=price&direction=asc
		#if params[:sort] 
		#@products = @products.order(params[:sort] => params[:direction])
		if params[:category]
			@products = Product.where("category = ?", params[:category])
		end
		# if params[:category] == "helmets"
		# 	@products = Product.where("category = ?", "helmets")
		# end
		# if params[:category] == "sticks"
		# 	@products = Product.where("category = ?", "sticks")
		# end
		if params[:search]
			@products = @products.where('title LIKE ?',"%" + params[:search] + "%")
		end
	end

	def show
		if params[:id] == "random"
			@product =Product.all.sample
		else
			@product = Product.find(params[:id])
		end
		@title = params[:title]
		@price = params[:price]
		@description = params[:description]
		@image = params[:image]
		@category = params[:category]
		@vendor = params[:vendor]
		@products = Product.all
	end

	def new
	end

	def create 
		Product.create({:title => params[:title], :price => params[:price], :description => params[:description], :image => params[:image], :category => params[:category], :vendor => params[:vendor]})
	end

	def edit
		@product = Product.find(params[:id])
	end

	def update
		# x = product.find(); x.update
		@product = Product.find(params[:id])
		@product.update ({:title => params[:title], :price => params[:price], :description => params[:description], :image => params[:image], :category => params[:category], :vendor => params[:vendor]})
	end

	def destroy
		@product = Product.find(params[:id])
		@product.destroy
		flash[:delete] = "Product Deleted"
		redirect_to '/products/1'
	end

end
