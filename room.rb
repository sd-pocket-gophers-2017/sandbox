class Bed
  attr_accessor :size

  def initialize(args)
    self.size = args.fetch(:size)
  end
end

class TV
  attr_reader :brand, :size

  def initialize(args)
    @brand = args.fetch(:brand)
    @size = args.fetch(:size)
  end
end

class Room
  attr_accessor :beds, :tables, :tv, :lamp

  # This is a class method, for the sake of having a class method
  def Room.lamp
    puts "I love lamp"
  end

  # This is the exact same class method as above...it will override it
  # because it is written second
  def self.lamp
    puts "I still love lamp"
  end
  #
  # def lamp=(lamp)
  #   @lamp = lamp
  # end
  #
  # def lamp
  #   @lamp
  # end

  def initialize(args)
    self.beds = args.fetch(:beds,[])
    self.tables = args.fetch(:tables,[])
    self.tv = args.fetch(:tv, nil)
    self.lamp = args.fetch(:lamp, nil)
  end

end

queen_bed = Bed.new({ size: 'Queen' })
king_bed = Bed.new(size: 'King')


queen_bed.class

set_of_beds = [queen_bed, king_bed]

arguments = {
  beds: set_of_beds,
  tables: [],
  tv: nil,
  lamp: nil
}

bedroom = Room.new(arguments)
puts bedroom.inspect

tv_hash = { brand: 'LG', size: 'big' }
instance_of_tv = TV.new(tv_hash)

arguments = {
  beds: [],
  tables: [],
  tv: instance_of_tv,
  lamp: nil
}

family_room = Room.new({ tv: instance_of_tv })
puts family_room.inspect
sleep(0.1)
family_room.lamp = true
puts family_room.inspect
# family_room = bedroom.beds.first
puts family_room.inspect
puts family_room.class
puts family_room.tv.inspect
puts family_room.tv.brand
