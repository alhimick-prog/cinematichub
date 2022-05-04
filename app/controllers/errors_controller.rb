class ErrorsController < ApplicationController
  def show
    error_page = Rails.root.join("app/views/errors/#{params[:id]}.html")
    error_page = Rails.root.join("app/views/errors/404.html") unless error_page.exist?
    render file: error_page, layout: false, status: :not_found
  end
end