class MockController < ApplicationController
  def top
  end
  def job_index
    @category = params[:category]
  end
  def job_post_1 
  end
end
