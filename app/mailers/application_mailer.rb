# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: "from@new_project_host"
  layout "mailer"
end

