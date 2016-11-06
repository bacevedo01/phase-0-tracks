

car = {
	'exterior' => ['chrome', 'headlights', 'paint', 'trim'],
	'engine' => ['carburetor', 'pistons'],
	'coolant' => {
			'water' => "radiator",
			'oil' => 'oil reserve',
			'coolant' => 'anti-freeze',
			},
	'interior' => ['seats', 'steering wheel', 'radio', 'air conditioner'],
	'drivetrain' => ['transmission', 'axle', 'wheels'],
}

p car['exterior'][2]
p car['engine'].first
p car['coolant']['oil']
p car['interior'].last
p car['drivetrain'][-1]
#should be nil