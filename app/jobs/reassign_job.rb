class ReassignJob < ActiveJob::Base
  queue_as :mailer

  def perform(record_class, record_id, transition_id, host_url)
    NotificationMailer.reassign(record_class, record_id, transition_id, host_url).deliver
  end
end