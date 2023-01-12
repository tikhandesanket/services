class GenerateReportWorker
  include Sidekiq::Worker
    
  def perform(user_id)
    # do your reporting here
  end
end