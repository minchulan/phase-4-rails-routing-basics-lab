Rails.application.routes.draw do
  # Create a route for making a GET request to /students
  # Generate a StudentsController with an index action for handling the route
  # In the index action, return JSON data representing a list of all students
  get 'students', to: 'students#index'

  # Create a route for making a GET request to /students/grades
  # add a grades action in the StudentsController for handling that route 
  # in the grades action, return JSON data representing a list of all students, ordered by grade from highest to lowest 
  get 'students/grades', to: 'students#grades'

  # Create a route for making a GET request to /students/highest-grade
  # Add a highest_grade action in the StudentsController for handling that route
  # In the highest_grade action, return JSON data representing the one student with the highest grade
  # Note: while the other two routes should return an array of data, this route should return just one student object!
  get 'students/highest-grade', to: 'students#highest_grade'


end


# Rails router recognizes URLs and dispatches them to a controller's action, or to a Rack application. It can also generate paths and URLs, avoiding the need to hardcode strings in your views. 

## CONNECTING URLS TO CODE: 
# I.e., When your Rails app receives an incoming request for: GET /patients/17
  # it asks the router to match it to a controller action. If the first matching route is: get '/patients/:id', to: 'patients#show'
  # the request is dispatched to the patients controller's show action with { id: '17' } in params. 


# User makes a HTTP request / performs CRUD Action 
# Rails app receives a specific incoming request 
# Router maps to controller#action 
# If route matches, the request is dispatched to its corresponding controller's action with {attribute} in params. 

# Router uses the HTTP verb and URL to match inbound requests.
# Resource router uses the HTTP verb and URL to match inbound requests, therefore 4 URL's map to 7 different actions. 



