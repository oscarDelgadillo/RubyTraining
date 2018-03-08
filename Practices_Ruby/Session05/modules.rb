# Create two modules :
# 1. Module to handle time conversions (each one should be a different method) :
#     From minutes to hours
#     From hours to days
#     From days to month

module Time_conversion
  def minutes_to_hours(minutes)
    minutes / 60.to_f
  end

  def hours_to_day(hours)
    hours / 24.to_f
  end

  def days_to_month(days)
    days / 31.to_f
  end
end

# 2. Module to handle distance conversions (each one should be a different method)
#     From Millimeters to centimeters
#     From centimeter to meters
#     From meters to Kilometers

module Distance_conversion
  def millimeters_to_centimeters(millimeters)
    millimeters / 10.to_f
  end

  def centimeters_to_meters(centimeters)
    centimeters / 100.to_f
  end

  def meters_to_kilometers(meters)
    meters / 1000.to_f
  end
end
