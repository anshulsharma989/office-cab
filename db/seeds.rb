 car1 = Car.create( model: 'mercedes', number: 34, year:'2002', capacity: 4, color: 'red')
 car2 = Car.create( model: 'Nexon', number: 23, year:'2002', capacity: 4, color: 'black')
 car3 = Car.create( model: 'SUV', number: 65, year:'2002', capacity: 4, color: 'yellow')
 car4 = Car.create( model: 'EcoSport', number: 98, year:'2002', capacity: 4, color: 'white')
 car5 = Car.create( model: 'Ferrari', number: 66, year:'2002', capacity: 4, color: 'blue')
 
 driver1 = Driver.create( name: 'John', mobile_number:9810546789)
 driver2 = Driver.create( name: 'Alex', mobile_number:9830546789)
 driver3 = Driver.create( name: 'Steve', mobile_number:9810546783)
 driver4 = Driver.create( name: 'Peter', mobile_number:9810546781)
 driver5 = Driver.create(name: 'Bob', mobile_number:9810546780)

 Rider.create( name: 'Anita', mobile_number:876876, location: 'CP')
 Rider.create( name: 'Varsha', mobile_number:876876, location: 'Gurgaon')
 Rider.create(name: 'Vanshika', mobile_number:876876, location: 'Rohtak')
 Rider.create( name: 'Parvesh', mobile_number:876876, location: 'Pitampura')
 Rider.create( name: 'Kavya', mobile_number:876876, location: 'Hauz Khas')

 Cab.create(driver_id: driver1.id, car_id: car1.id, location: 'Hauz Khas')
 Cab.create(driver_id: driver2.id, car_id: car2.id, location: 'Gurgaon')
 Cab.create(driver_id: driver3.id, car_id: car3.id, location: 'Rohtak')
 Cab.create(driver_id: driver4.id, car_id: car4.id, location: 'Pitampura')
 Cab.create(driver_id: driver5.id, car_id: car5.id, location: 'CP')
