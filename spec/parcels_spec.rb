require('rspec')
require('parcels')

describe('Parcels') do
  describe('initialize') do
    it('initializes a new parcel with length, width, height, and weight') do
      test_parcel = Parcels.new(12,4,4,10)
      expect(test_parcel).to be_an_instance_of Parcels
    end
  end
  describe('volume') do
    it('returns the volume according to the dimensions') do
      test_parcel = Parcels.new(12, 4, 4, 10)
      expect(test_parcel.volume).to eq(192)
    end
  end

  describe('cost_to_ship') do
    it('returns a shipping cost according to the volume and a shipping formula') do
      test_parcel = Parcels.new(12, 4, 4, 10)
      expect(test_parcel.cost_to_ship).to eq(7.6)
    end
  end
end
