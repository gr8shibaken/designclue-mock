class MockController < ApplicationController
  def top
  end
  def job_index
    @category = params[:category]
  end
  def job_detail    
    @contest = Mock::Contest.find(params[:id])
  end
  def job_post_1 
  end
  def designer_index
  end
  def designer_detail
    @designer = Mock::Designer.find(params[:id])
  end
  def job_application
    @id = params[:id]
  end
end
