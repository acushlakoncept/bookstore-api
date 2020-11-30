require 'rails_helper'

RSpec.describe 'Books API', type: :request do
  # initialize test data
  let!(:books) { create_list(:book, 10) }
  let(:book_id) { books.first.id }

  # Test suite for GET /books
  describe 'GET /books' do
    # make HTTP get request before each example
    before { get '/books' }

    it 'returns books' do
      # Note `json` is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /books/:id
  describe 'GET /books/:id' do
    before { get "/books/#{book_id}" }

    context 'when the record exists' do
      it 'returns the book' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(book_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:book_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find Book/)
      end
    end
  end
end
