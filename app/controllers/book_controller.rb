# frozen_string_literal: true

class BookController < ApplicationController
    before_action :set_book, only: [:show, :update, :destroy]

    # GET /books
  def index
    @books = Book.all
    json_response(@books)
  end

  # POST /books
  def create
    @book = Book.create!(book_params)
    json_response(@book, :created)
  end

  # GET /books/:id
  def show
    json_response(@book)
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
    params.permit(:title, :author)
  end

  def set_book
    @book = Book.find(params[:id])
  end
end
