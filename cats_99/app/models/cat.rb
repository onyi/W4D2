class Cat < ApplicationRecord
  COLORS = %w(red blue yellow black orange white pink)
  # COLORS = ["red", "blue",  "yellow",  "black", "orange", "white", "pink"]
  validates :color, inclusion: COLORS, presence: true

  validates :birth_date, timeliness: { on_or_before: lambda { Date.current },                                       type: :date }

  validates :sex, inclusion: {in: %w(M F),message: "%{value} is not a valid sex"}


  def age
    current_date = Date.current
    birth_date = self.birth_date

    age = 0
    if current_date.year > birth_date.year
      age = current_date.year - birth_date.year
    end

    return age
  end

  def colors
    COLORS
  end
end
