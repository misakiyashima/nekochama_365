class Cat < ApplicationRecord
  validates :name, presence: true
  validates :birthday, presence: true

  def days_since_birth
    return nil unless birthday
    (Date.today - birthday).to_i # => (365/1)  Rational（= 365.0）を整数に変換 "日数"が入る
  end

  def cat_age_in_human_years
    days = days_since_birth
    return nil unless days
    months = (days / 30.44)  # 1か月≒30.44(平均値)

    if months < 12
     (15 * (months / 12)).round
    elsif months < 24
     (15 + 9 * ((months - 12) / 12)).round
    else
     (24 + 4 * ((months - 24) / 12)).round
    end
  end

  def cat_age
    days = days_since_birth
    return nil unless days
    years = (days / 365.25).floor  # 年を整数で出す
    remain = days - (years * 365.25).round  # 年分を引いた残りの日数

    months = (remain / 30.44).floor # 月を出す
    remain = remain - (months * 30.44).round  # 日数から月分の日数を引いた残りの日数

    days_left = remain.to_i
    
    { years: years, months: months, days: days_left }
  end
end
