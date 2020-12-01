# frozen_string_literal: true

module Api::V1
  class BooksController < ApplicationController
    before_action :set_book, only: %i[show update destroy]

    # GET /books

    def index
      @books = Book.includes(:category)
      # json_response(@books)
      render status: '200', json: @books, include: { category: { only: :name }, message: 'success' }, except: %i[category_id created_at updated_at]
    end

    # POST /books
    def create
      @book = Book.create!(book_params)
      json_response(@book, :created)
    end

    # GET /books/:id
    def show
      render json: @book, include: { category: { only: :name } }, except: %i[category_id created_at updated_at]
    end

    # PUT /books/:id
    def update
      @book.update(book_params)
      head :no_content
    end

    # DELETE /books/:id
    def destroy
      @book.destroy
      head :no_content
    end

    private

    def book_params
      params.permit(:title, :author, :category_id)
    end

    def set_book
      @book = Book.find(params[:id])
    end
  end
end
