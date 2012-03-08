class MockController < ApplicationController
  def top
  end
  def job_index
    @category = params[:category]
  end
  def job_detail
  end
  def job_post_1 
  end
  def designer_index
  end
  def designer_detail
  end
end
