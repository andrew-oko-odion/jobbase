require 'active_resource'

class Transfer < ActiveResource::Base
  self.site = "https://moneywave.herokuapp.com/v1/transfer"
  self.headers['Authorization'] = "Authorization:eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NTMzLCJuYW1lIjoiRWx4dGhlYW0iLCJhY2NvdW50TnVtYmVyIjoiIiwiYmFua0NvZGUiOiI5OTkiLCJpc0FjdGl2ZSI6dHJ1ZSwiY3JlYXRlZEF0IjoiMjAxNy0wMS0xNVQwMTowNDowOC4wMDBaIiwidXBkYXRlZEF0IjoiMjAxNy0wMS0xNVQwMTowNTo1MS4wMDBaIiwiZGVsZXRlZEF0IjpudWxsLCJpYXQiOjE0ODU3OTE3NzksImV4cCI6MTQ4NTc5ODk3OX0.8QBp3t-ffaT-wSVbgEVzWbYjz5N-n_XQi03y66bSpw0"
end
