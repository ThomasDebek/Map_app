
p "Genereate Places"
Place.delete_all
Place.create!([
                { name: "Central Park", location: "New York, USA", x: 40.785091, y: -73.968285 },
                { name: "Eiffel Tower", location: "Paris, France", x: 48.8584, y: 2.2945 },
                { name: "Colosseum", location: "Rome, Italy", x: 41.8902, y: 12.4922 },
                { name: "Mount Fuji", location: "Honshu, Japan", x: 35.3606, y: 138.7274 },
                { name: "Sydney Opera House", location: "Sydney, Australia", x: -33.8568, y: 151.2153 }
              ])