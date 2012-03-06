class MockController < ApplicationController
  def top
  end
  def job_index
    @category = params[:category]
  end
end
