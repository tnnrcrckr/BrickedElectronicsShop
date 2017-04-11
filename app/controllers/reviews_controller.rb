class ReviewsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  attr_accessor :content
    
    def new
        @user = User.find(params[:u_id])
        @review = @user.reviews.build
        @review.product_id = params[:p_id]
    end
    
    def create
        @review = current_user.reviews.build(review_params)
        @review.product_id = params[:p_id]
        if @review.save
            flash[:success] = "Review created!"
            redirect_to current_user
        else
            string = ""
            @review.errors.full_messages.each {|msg| string += msg + "\n"}
            flash[:danger] = string
            redirect_back(fallback_location: current_user)
        end
    end
    
    def edit
        @review = Review.find(params[:id])
        @user = @review.user
    end
    
    def update
        @review = Review.find(params[:id])
        @review.content = params[:review][:content]
        if @review.save
            flash[:success] = "Review edited!"
            redirect_to @review.user
        else
            string = ""
            @review.errors.full_messages.each {|msg| string += msg + "\n"}
            flash[:danger] = string
            redirect_to @review.user
        end
    end
    
    def destroy
        review = Review.find(params[:id])
        @user = review.user
        if( review.destroy )
            flash[:success] = "Review deleted!"
            redirect_to @user
        else
            flash[:warning] = "Review failed to delete!"
            redirect_to @user
        end
    end
    
    def index
       @reviews = Review.where('reviews.id IN (SELECT id FROM reviews ORDER BY created_at DESC LIMIT 100)').paginate(page: params[:page], :per_page => 10) 
    end
    
    private
        def review_params
            params.require(:review).permit(:content)
        end
        
        def correct_user
            @review = current_user.reviews.find_by(id: params[:id])
            redirect_to current_user if @review.nil? unless current_user.admin
        end
end
