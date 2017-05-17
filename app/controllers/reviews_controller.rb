class ReviewsController < ApplicationController
  def create
    puts params.inspect
    @product = Product.find(params[:product_id])
    @review = Review.new #pass params coming from user
    @review.user = current_user
    @review.save

    if (@product.reviews)
      redirect_to product_reviews_path(params[:product_id])
    else
      redirect_to product_path(params[:product_id])
    end
  end
end
