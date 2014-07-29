class Parcels
  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def volume
   @length * @width * @height
  end

  def cost_to_ship
    (volume / 5 * @weight * 0.02).round(2)
  end
end
