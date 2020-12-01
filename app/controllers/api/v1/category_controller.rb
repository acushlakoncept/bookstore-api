# frozen_string_literal: true

module Api::V1
  class CategoryController < ApplicationController
    before_action :set_category, only: %i[show]

    # GET /category

    def index
      @categories = Category.all
      render json: @categories, except: %i[created_at updated_at]
    end

    # GET /category/:id
    def show
      render json: @category, except: %i[created_at updated_at]
    end

    private

    def set_category
      @category = Category.find(params[:id])
    end
  end
end
