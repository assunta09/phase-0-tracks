puts "Stories from a Womans Wardrobe"

wardrobe = {
	hangers: {
		section_name: "Hangers",
		types: {
			dresses: 4,
			pants: 1,
			maxi_skirts: 2,
			shirts: 2
		},
		colors: [
			"red",
			"green",
			"blue"
		]
	},
	shelf_1: {
		section_name: "Shelf 1",
		types: {
			pants: 2,
		},
		colors: [
			"red",
			"green",
		]
	 },
	shelf_2: {
		section_name: "Shelf 2",
		types: {
			jumpers: 5,
			shirts: 10
		},
		colors: [
			"red",
			"green",
			"white",
			"blue",
			"rose",
			"beige"
		]
	}
}

p wardrobe[:shelf_2][:section_name]

p wardrobe[:shelf_2][:colors]

p wardrobe[:shelf_2][:types].merge!(blouse: 1)

p wardrobe


