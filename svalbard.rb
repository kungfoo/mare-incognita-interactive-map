#!/env/ruby

coordinates = [
	[78.323369, 15.268250],
	[78.075106, 12.730408],
	[77.269498, 12.854004],
	[75.958101, 16.501465],
	[77.346739, 24.191895],
	[78.247360, 25.114746],
	[79.076393, 21.950684],
	[79.043032, 24.763184],
	[80.024230, 28.015137],
	[80.650962, 24.719238],
	[80.841754, 20.324707],
	[80.220229, 15.534668],
	[80.016614, 10.700684],
	[79.604647, 9.602051],
	[78.930433, 11.046753],
	[78.738973, 11.354370],
	[78.526775, 11.837769],
	[78.225746, 12.573853],
	[78.065511, 12.848511],
	[78.323369, 15.268250]
]

def snippet(origin, destination, i)
%{
		{
	        origin: {
	          latitude: #{origin[0]},
	          longitude: #{origin[1]}
	        },
	        destination: {
	          latitude: #{destination[0]},
	          longitude: #{destination[1]}
	        },
	        duration: 2,
	        distance: 1000,
	        arcSharpness: 0,
	        leg: "Longyearbyen – rund Spitzbergen #{i}"
	      },
}
end


i = 1
coordinates.each_cons(2) do |slice|
	origin = slice[0]
	destination = slice[1]
	puts snippet(origin, destination, i)
	i = i+1
end