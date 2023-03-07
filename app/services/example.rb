# frozen_string_literal: true

class Example < Patterns::Service
  # rubocop:disable Lint/MissingSuper
  def initialize(user)
    @user = user
  end
  # rubocop:enable Lint/MissingSuper

  def call
    some_example_logic
  end

  private

  def some_example_logic
    @user.created_at
  end
end
