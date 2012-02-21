require 'test_helper'

class ArticleMailTest < ActionMailer::TestCase
  test "shared" do
    mail = ArticleMail.shared
    assert_equal "Shared", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
