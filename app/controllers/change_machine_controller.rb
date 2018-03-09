class ChangeMachineController < ApplicationController

  def index
    @amount = "0.00"
  end

  def get_change
    @amount = params[:amount]

    change_machine = ChangeMachine.new(Currency.instance.usd_unit)
    @result_change = change_machine.get_change(@amount)
  end
end
