require 'test_helper'

class JobseekerMailerTest < ActionMailer::TestCase
  test "notification" do
    mail = JobseekerMailer.notification
    assert_equal "Notification", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "job_suggestions" do
    mail = JobseekerMailer.job_suggestions
    assert_equal "Job suggestions", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
