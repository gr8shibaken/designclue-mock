class MockController < ApplicationController
  def top
    @posted = params[:posted]
    @navigation = true
  end
  def job_index
    @category = Mock::Category.find(params[:category])
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
    @contest = Mock::Contest.find(@id.first)
    logo_id = @id[2...@id.length].to_i
    next_id = (logo_id+1 == @contest.logo) ? @contest.logo : (logo_id+1)%(@contest.logo)
    prev_id = (logo_id-1 == 0) ? @contest.logo : (logo_id-1)%(@contest.logo)
    @next = @id.first+'-'+next_id.to_s
    @prev = @id.first+'-'+prev_id.to_s
    @current = logo_id
  end
  def garally
    @works = Mock::Work.all.sample(20)
  end
  def mypage
    @category = params[:category]
    @works = Mock::Work.all.sample(20)
  end
end
