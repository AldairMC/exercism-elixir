defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    total_discount = before_discount * (discount / 100)
    before_discount - total_discount
  end

  def monthly_rate(hourly_rate, discount) do
    total_hourly_rate = daily_rate(hourly_rate) * 22
    total_discount = apply_discount(total_hourly_rate, discount)
    trunc(Float.ceil(total_discount))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    total_hourly_rate = daily_rate(hourly_rate)
    total_discount = apply_discount(total_hourly_rate, discount)
    Float.floor(budget / total_discount, 1)
  end
end
