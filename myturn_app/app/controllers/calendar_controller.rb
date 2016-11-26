class CalendarController < ApplicationController
  def show
    @date = params[:date] ? Date.parse(params[:date]) : Date.today
    @agendamentos_by_date = Agendamento.group_by(&:date)
  end
  
  def agendamentos_by_date
    
  end
end