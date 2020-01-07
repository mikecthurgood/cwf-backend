Review.all.map(&:destroy)
Wall.all.map(&:destroy)
User.all.map(&:destroy)
City.all.map(&:destroy)


london = City.create(name: 'London')

mike = User.create(username: 'MikeTest', email: 'm@m.m', password: 'm', password_confirmation: 'm', city: london, bio: 'test user testing the shit out of this website')

wall1 = Wall.create(name: 'Stronghold Climbing Centre', area: 'Tottenham Hale', description: 'Stronghold Climbing Centre is one of the UK`s largest indoor bouldering centres offering hundreds of bouldering problems for climbers of all abilities, London`s largest circuit board and a large, open-plan training area. At Stronghold, we want to enhance the climbing community that we are part of, and the local community too. We believe climbing centres are more than just places to hone climbing skills – which is why you`ll find numerous areas to hang out and socialise. We want to promote climbing as part of a healthy lifestyle. This is why you`ll also find a climbing-centric gym, fully equipped changing and shower facilities, event spaces and a well-stocked café. Our shop also has a full range of climbing and health-related products. Whether it`s finding the perfect fit for your climbing shoes, or a balm to soothe your hands, our staff will be eager to help.', weekday_opening: 'Midday', weekday_closing: '10pm', weekend_opening: '9am', weekend_closing: '7pm',  website_url: 'https://www.thestrongholduk.com/', image_url: 'https://assets.londonist.com/uploads/2018/08/i875/stronghold.jpg', bouldering_only: true, address_line_1: '18 Ashley Road', address_line_2: 'Tottenham Hale', address_line_3: '', postcode: 'N17 9LJ', city: london)
wall2 = Wall.create(name: 'Harrowall', area: 'Harrow', description: 'As the UK`s largest bouldering centre, HarroWall has been designed to set new benchmarks for indoor climbing. Whether an adult keen to stay healthy and fit but bored of the normal gym to children looking to take their first climbing steps. HarroWall is BIG!! Our c.40,000 sq ft centre has climbing activities for people of all ages and abilities. Whether you have never climbed before or you are a seasoned pro, HarroWall aims to cater for all your climbing desires!
HarroWall is primarily a climbing centre with its main objective of encouraging people of all ages to experience the wonderful sport of climbing. The Centre is predominantly devoted to low level climbing (bouldering) with problems ranging from those for beginners through to the hardest problems in the country. It is currently the largest bouldering Centre in the UK and has a huge range of training and gym facilities aimed at the climber who wants to get fitter, stronger and better at the sport.', weekday_opening: '10am', weekday_closing: '11pm', weekend_opening: '9am', weekend_closing: '9pm',  website_url: 'https://www.harrowall.co.uk/', image_url: '', bouldering_only: false, address_line_1: 'Unit 2a & 3a,', address_line_2: 'Neptune Trading Estate, Neptune Rd,', address_line_3: 'Harrow,', postcode: 'HA1 4HX', city: london)
wall3 = Wall.create(name: 'VauxEast', area: 'Lambeth', description: 'Whether you have never bouldered before or you are a seasoned pro, VauxWall aims set new benchmarks in terms of accessibility, quality of climbing and standard of environment. We look to cater for all your climbing desires! Our incredibly convenient location, fantastic facilities and extended opening hours will ensure you can always get your climbing fix.', weekday_opening: 'Midday', weekday_closing: '10pm', weekend_opening: '9am', weekend_closing: '7pm',  website_url: 'https://www.vauxeast.co.uk/', image_url: '', bouldering_only: true, address_line_1: '1 Cabanel Pl,', address_line_2: 'Lambeth,', address_line_3: '', postcode: 'SE11 6BD', city: london)
wall4 = Wall.create(name: 'RavensWall', area: 'Hammersmith', description: 'Whether you have never bouldered before or you are a seasoned pro, RavensWall aims set new benchmarks in terms of accessibility, quality of climbing and standard of environment. We look to cater for all your climbing desires! Our incredibly convenient location, fantastic facilities and extended opening hours will ensure you can always get your climbing fix.

Lockers are available but remember to bring a padlock. Padlocks can also be purchased from the reception for £3. Freshen up after your climb with our spacious showers. Remember you can get unlimited towel hire with memberships or £1.50 per towel hire.
', weekday_opening: '6am', weekday_closing: '10.30pm', weekend_opening: '9am', weekend_closing: '9pm',  website_url: 'https://www.ravenswall.co.uk/', image_url: '', bouldering_only: true, address_line_1: 'Arch 105', address_line_2: 'Ravenscourt Road', address_line_3: '', postcode: 'W6 0UQ', city: london)
wall5 = Wall.create(name: 'CroyWall', area: 'Croydon', description: 'Whether you have never bouldered before or you are a seasoned pro, CroyWall aims set new benchmarks in terms of accessibility, quality of climbing and standard of environment. We look to cater for all your climbing desires! Our incredibly convenient location, fantastic facilities and extended opening hours will ensure you can always get your climbing fix.', weekday_opening: '6am', weekday_closing: '10pm', weekend_opening: '9am', weekend_closing: '9pm',  website_url: 'https://www.croywall.co.uk/', image_url: '', bouldering_only: true, address_line_1: 'Unit 7 New South Quarter', address_line_2: 'Whitestone Way', address_line_3: '', postcode: 'CR0 4WN', city: london)
wall6 = Wall.create(name: 'The Reach Climbing Centre', area: 'Woolwich', description: 'The Reach has an incredibly experienced and welcoming team, offering a fantastic space for beginners and experienced climbers to excel. We are the largest & friendliest indoor climbing centre in South London.
We have over 50 top rope lines, the majority can also be led, 4 dedicated lead walls, including an impressive & unique 16m roof overhang, 12 TruBlue auto belays & 4 bouldering areas with a dedicated training room and yoga studio.  

We also have fantastic cafe on site, serving delicious homemade food & cakes, all freshly baked on the premises.
', weekday_opening: '10am', weekday_closing: '10pm', weekend_opening: '10am', weekend_closing: '7pm',  website_url: 'https://www.thereach.org.uk/', image_url: '', bouldering_only: false, address_line_1: 'Unit 6, Mellish Estate', address_line_2: 'Harrington Way', address_line_3: '', postcode: 'SE18 5NR', city: london)
wall7 = Wall.create(name: 'The Climbing Hangar', area: 'Parsons Green', description: 'We believe climbing together helps people lead happier, healthier, more connected lives. Our dedicated bouldering walls are home to absolute beginners and world champions; whoever you are, we`ll help you find your place. The Hangar Loindon is the Hangar`s city pied a terre – small but perfectly formed. We`ve been open since 2015, adding more climbing space and carving out our own chilled little niche in the hectic metropolis. ', weekday_opening: '7am', weekday_closing: '10pm', weekend_opening: '9am', weekend_closing: '8pm',  website_url: 'https://www.theclimbinghangar.com/', image_url: '', bouldering_only: true, address_line_1: '5, Parsons Green Depot', address_line_2: '33-35 Parsons Green Lane', address_line_3: '', postcode: 'SW6 4HH', city: london)
wall8 = Wall.create(name: 'Mile End Climbing Centre', area: 'Mile End', description: 'The Mile End Climbing Wall is maintained by the registered charity `DEVELOPMENT through CHALLENGE` - promoting personal development through challenging physical activity, especially to the young person. By climbing at our centre, our customers help us to offer opportunities for youth groups, vulnerable young people, groups with special educational needs, and more.
We opened to the public in the late eighties and are housed inside an old pipe engineering works which is located within Mile End Park, a five-minute walk from Mile End Tube Station. It has grown to the current size, sporting approx. 16,000 sq. ft (1500 sq. m) of climbing surface.
We cater for the complete novice through to the seasoned professional offering a range of courses on and off site. The centre is widely used by other development charities, groups, schools and recreational climbers.
There is extensive bouldering (low level climbing without ropes) at all levels, top-roped and lead climbing as well as more advanced training areas - The Board Room, and our famous Monkey House.', weekday_opening: '10am', weekday_closing: '9:30pm', weekend_opening: '10am', weekend_closing: '6pm',  website_url: 'https://www.mileendwall.org.uk/', image_url: '', bouldering_only: false, address_line_1: 'Haverfield Rd', address_line_2: '', address_line_3: '', postcode: 'E3 5BE', city: london)
wall9 = Wall.create(name: 'White Spider Climbing', area: 'Tolworth', description: 'White Spider is one of the UK`s largest climbing centres:
It`s really spacious, bright, comfy with lots of climbing and bouldering:
Climbing: Over 360 routes on 104 lines, up to 20 metres on our stalactite roof, grades from 3 to 8b.
Bouldering: Over 200 boulder problems, including a massive comp wall, big cave and dedicated training area.
Regular route setting from some of the biggest names in the industry including Yann Genoux, Evie Cotrulia, Gaz Parry and Nathan Phillips
Great facilities, cafe, kids castle and slackline.
', weekday_opening: 'Mon 2pm, Tues - Fri 10am', weekday_closing: '10pm', weekend_opening: '10am', weekend_closing: '7:30pm',  website_url: 'https://spiderclimbing.com/white-spider/', image_url: '', bouldering_only: false, address_line_1: '225 Hook Rise South', address_line_2: 'SURBITON', address_line_3: 'Greater London', postcode: 'KT6 7LD', city: london)
wall10 = Wall.create(name: 'Hackney Wick Boulder Project', area: 'Hackney Wick', description: 'We are a brand new bouldering wall 1min from Hackney Wick Overground. We love climbing, and climbing walls. Most of our adventures started with a chat "down the wall", and ended in some wild and rocky place. Our other passions are good music, good coffee and good cake! We may not be the biggest climbing wall. But we think you will agree that we punch above our weight :)', weekday_opening: '12:30pm', weekday_closing: '10pm', weekend_opening: '10am', weekend_closing: '7pm',  website_url: 'https://hackneywickboulder.co.uk/', image_url: '', bouldering_only: true, address_line_1: '117 Wallis Road', address_line_2: '', address_line_3: '', postcode: 'E9 5LN', city: london)
wall11 = Wall.create(name: 'Arch Climbing Wall - Building 1', area: 'Bermondsey', description: 'London`s bouldering centres. 3 climbing gyms under one membership. Building One + features 15,000 square feet of modern bouldering and training areas in a former Damien Hirst gallery. Reimagined, expanded and relaunched in summer 2018.

Telephone: 0207 237 4418 (please note that we may be unable to answer your call at peak times) 
Email: info@archclimbingwall.com
Bicycle parking is provided on the right hand side of the yard, in front of Workspace reception, and there are a further 40 spaces immediately behind the Workspace reception block. Cark park info can be found here.
Public transport Bermondsey (Underground), Canada Water (Underground + Overground), Surrey Quays (Overground)', weekday_opening: '6:30am', weekday_closing: '10:30pm', weekend_opening: '10am', weekend_closing: '9pm',  website_url: 'https://www.archclimbingwall.com/', image_url: '', bouldering_only: true, address_line_1: 'Drummond Road', address_line_2: 'Tower Bridge Business Centre', address_line_3: '', postcode: 'SE16 4DG', city: london)
wall12 = Wall.create(name: 'Arch Climbing Wall - Arch Acton', area: 'Acton', description: 'Telephone: 020 3198 2530 (please note that we may be unable to answer your call at peak times)
Email: info@archclimbingwall.com
Bicycle parking is provided directly outside the front doors. We do not have onsite car parking, but there are metered car parks in the surrounding streets, and day long spaces available at www.justpark.com
Public transport Acton Town (Underground - District & Piccadilly lines) 12 minute walk, Acton Central (Overground) 3 minute walk', weekday_opening: '10am', weekday_closing: '10pm', weekend_opening: '10am', weekend_closing: '9pm',  website_url: 'https://www.archclimbingwall.com/acton-centre-info', image_url: '', bouldering_only: true, address_line_1: '20-24 High Street', address_line_2: 'Acton', address_line_3: '', postcode: 'W3 6LJ', city: london)
wall13 = Wall.create(name: 'Arch Climbing Wall - Arch North', area: 'Burnt Oak', description: 'Telephone: 020 8205 6387 (please note that we may be unable to answer your call at peak times) 
Email: info@archclimbingwall.com
Bicycle parking is provided directly in front of the centre.
Public transport: Burnt Oak (Northern Line) 7 minute walk', weekday_opening: '10am', weekday_closing: '10pm', weekend_opening: '10am', weekend_closing: '9pm',  website_url: 'https://www.archclimbingwall.com/north-centre-info', image_url: '', bouldering_only: true, address_line_1: '5 Burnt Oak Broadway', address_line_2: 'Edgware', address_line_3: '', postcode: 'HA8 5LD', city: london)
wall14 = Wall.create(name: 'The Castle Climbing Centre', area: 'Islington', description: 'The Castle is a dedicated climbing centre and is one of the premier centres in Europe. Since it first opened its doors to the public in October 1995 the Castle has grown, and is still growing! The centre is now spread over 5 floors...with more yet to come. Housing over 450 roped and lead routes from 8m to 13m in height and an extensive range of bouldering surfaces we have something to suit everyone`s ability, from beginners to experts, from the very young to the not so sprightly.', weekday_opening: 'Midday', weekday_closing: '10pm', weekend_opening: '9am', weekend_closing: '7pm',  website_url: 'https://www.castle-climbing.co.uk/', image_url: '', bouldering_only: false, address_line_1: 'Green Lanes', address_line_2: 'Stoke Newington', address_line_3: '', postcode: 'N4 2HA', city: london)
wall15 = Wall.create(name: 'WestWay Climbing', area: 'White City', description: 'At Westway Climbing there`s something for every kind of climber. 350 climbing routes on 110 ropes lines up to 13.5m. Bouldering with up to 150 boulder problems. Resetting every month. 4 auto-belay machines. Training rooms including a systems board and circuit board. Campus board, gymnastic rings, Lapis balls, quadruple Beastmaker finger boards, pull-up bar and stretching mat. UK renowned coaching and junior programme.

We`ve got a huge route-setting programme providing regular changes, with some of the most respected setters in the country, including national and international competition setters, gracing our walls. We aim to set 90 new routes per month and 150 boulder problems every four weeks.', weekday_opening: '9:30am (Thursdays: 8am)', weekday_closing: '10pm', weekend_opening: '8am', weekend_closing: '8pm',  website_url: 'https://www.everyoneactive.com/centre/westway-sports-fitness-centre/climbing/', image_url: '', bouldering_only: false, address_line_1: 'Westway Sports and Fitness Centre', address_line_2: '1 Crowthorne Rd', address_line_3: '', postcode: 'W10 6RP', city: london)
wall16 = Wall.create(name: 'Craggy Island (Craggy 2)', area: 'Sutton', description: 'Craggy Sutton is a dedicated bouldering and caving centre, plus a fantastic kids` party destination.
Craggy Sutton has four rooms:
The Cave Room – an extensive caving system with chambers and passageways
The Rock Room – 70+ boulder routes plus sculpted grit, slate and limestone features
The Competition Room – 70+ boulder routes on a variety of angled walls from slabs to very steep overhangs, all set regularly by our team of professional route setters.
The Party Room – a space specially designed for the best parties!
', weekday_opening: 'Midday', weekday_closing: '10pm', weekend_opening: '10am', weekend_closing: '7pm',  website_url: 'https://www.craggy-island.com/about-craggy-island/craggy-island-sutton/', image_url: '', bouldering_only: true, address_line_1: 'Oaks Sports Centre', address_line_2: 'Woodmansterne Rd', address_line_3: 'Banstead, Carshalton', postcode: 'SM5 4AN', city: london)
wall17 = Wall.create(name: 'VauxWall', area: 'Vauxhall', description: 'Our aim is to set a new benchmark in terms of accessibility, quality of climbing and standard of environment.
Online pre-registration with our induction video, a self-check-in service, air conditioning and chalk extraction are just some of the elements we have added to achieve this.
Whether you have never bouldered before or you are a seasoned pro, VauxWall aims to cater for all your climbing desires! Our incredibly convenient location, fantastic facilities and extended opening hours will ensure you can always get your climbing fix.', weekday_opening: '6am', weekday_closing: '11pm', weekend_opening: '6am', weekend_closing: '11pm',  website_url: 'https://www.vauxwest.co.uk/', image_url: '', bouldering_only: true, address_line_1: 'Arch 46 – 47a,', address_line_2: 'South Lambeth Road,', address_line_3: 'Vauxhall,', postcode: 'SW8 1SR', city: london)

Review.create(user: mike, wall: wall1, rating: 4, content: 'Wow what an awesome wall. If stronghold were a person it would be called Awesome Wells')