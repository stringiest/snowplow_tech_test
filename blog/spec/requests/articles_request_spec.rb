# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Articles', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/articles'
      expect(response).to have_http_status(:success)
    end
  end
end
