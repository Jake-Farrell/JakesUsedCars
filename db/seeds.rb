# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#make a new customer if first 15 char  in veci deciption arethe same
require 'csv'
require 'faker'


CarSale.delete_all
CarLocation.delete_all
CarModel.delete_all
CarSeller.delete_all
Page.delete_all


CarLocation.create(
  id: 1,
  state: 'al',
  lat: 42 ,
  long: 122,
  region: 'birmingham2222',
)
CarModel.create(
  id: 1,
  year: 9999,
  manufacturer: 'chevrolet',
  modelnumber: "car",
  cylinders: 1,
  fueltype: 'fule',
)
CarSeller.create(
  id: 1,
  name: 'jake',
  email: 'test',
  phoneNumber: "204 555 6761",
)


Cars = CSV.parse(File.read(Rails.root.join('db/vehiclesfull.csv')), headers: true, encoding: 'utf-8')

#puts Cars
uniquesDese = ''
newperson = ''
Cars.each do |m|
  place = CarLocation.find_or_create_by(
    state: m['state'],
    lat: m['lat'],
    long: m['long'],
    region: m['region'],
  )
  place.save
  begin
    if m['description'][0 ,10] != uniquesDese
      newperson = CarSeller.create(
        name: Faker::Name.name,
        age: rand(18..80),
        phoneNumber: Faker::PhoneNumber.phone_number,
        email: Faker::Internet.unique.email,
      )
    end
      newperson.save
      uniquesDese = m['description'][0 ,10]
  rescue Exception => e
      puts e.message
      #puts e.backtrace.inspect
  end

  newmodle = CarModel.find_or_create_by(
      year: m['year'],
      manufacturer: m['manufacturer'],
      modelnumber: m['model'],
      cylinders: m['cylinders'],
      fueltype: m['fueltype'],
      drive: m['drive'],
      carbodytype: m['type'],
  )
  newmodle.save

  if newmodle && newmodle.valid? && place && place.valid? && newperson && newperson.valid?
    testing = CarSale.create(
      price: m['price'],
      odometer: m['odometer'],
      condition: m['condition'],
      VIN: m['VIN'],
      description: m['description'],
      transmission: m['transmission'],
      car_location_id: place['id'],
      car_model_id:  newmodle['id'],
      car_seller_id: newperson['id'],
    )

    if testing.valid?
      testing.save!
    end
    unless testing&.valid?
      #puts "invaild"
      puts m['VIN']
    next
    end

  end

end

Page.create(title: "Where got this data", content: "  The main data source I plan to use for this project is a large CSV file from Kaggle containing over 400,000 records of car sales listed on different car websites the first thing that I did was go through the data entirely I remove columns that I wouldn't need such as type since a majority of the time it was left blank or didn't provide any relevant information as well as making sure each vehicle identification number or VIN was unique after going through that process I had taken out around 300,000 rows of useless or duplicated data because individuals could post the same ad with one minor change and it would count as a completely different row which led to the database being massive in size as well as containing a lot of data that wasn't useful as well as removing columns that were mostly left blank or were irrelevant to the project as a whole also for another aspect of this project I decided to use fake are to fake seller information since since the CSV file that I was using did not contain any  seller info." ,permlink: "About")
#Page.create(title: "Contact us", content: "Good luck trying to contact me lol" ,permlink: "Contact")

puts CarLocation.count
puts CarModel.count
puts CarSeller.count
puts CarSale.count
#description: "This #{Faker::Beer.style} style beer has #{Faker::Beer.alcohol} alcohol and was brewed with #{Faker::Beer.malts}, #{Faker::Beer.yeast} yeast and a twist of #{Faker::Beer.hop} hops."
