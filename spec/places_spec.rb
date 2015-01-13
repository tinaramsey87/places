require('rspec')
require('places')
require('pry')


describe(Place) do
  before() do
    Place.clear()
  end

  describe('#description') do
    it("lets you read the name of place") do
      test_place = Place.new("Portland")
      expect(test_place.description()).to(eq("Portland"))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Place.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('saves the place name to the places array') do
      test_place = Place.new("Portland")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe('.clear') do
    it('empties out all of the saved places in the places array') do
      Place.new("Portland").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
