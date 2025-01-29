# frozen_string_literal: true

class ApplicationPolicy
  attr_reader :admin, :record

  def initialize(admin, record)
    @admin = admin
    @record = record
  end

  class Scope
    def initialize(admin, scope)
      @admin = admin
      @scope = scope
    end

    def resolve
      raise NotImplementedError, "You must define #resolve in #{self.class}"
    end

    private

    attr_reader :admin, :scope
  end
end
