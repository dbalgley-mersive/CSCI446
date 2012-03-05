class ArticleMail < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.article_mail.shared.subject
  #
  def shared
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
