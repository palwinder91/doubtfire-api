class TeachingPeriodSerializer < ActiveModel::Serializer
  attributes :id, :period, :year, :start_date, :end_date, :active_until, :active, :breaks, :units

  def active
    object.active_until > DateTime.now
  end
end
