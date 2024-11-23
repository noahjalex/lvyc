
User.create!(
  email: 'user@example.com',
  first_name: 'Rob',
  last_name: 'Bos',
  password: 'password',
  password_confirmation: 'password',
  confirmed_at: Time.now

)

User.create!(
  email: 'admin@example.com',
  first_name: 'Noah',
  last_name: 'Alexander',
  password: 'password',
  password_confirmation: 'password',
  admin: true,
  confirmed_at: Time.now
)

Course.delete_all
courses = [
  {
    name: "Sail Canada Basic Coastal Navigation Course",
    image_url: "navigation.jpg",
    description: "Learn the basics of navigation theory, perfect for beginners. This course is a pre-requisite for Intermediate Coastal Navigation and Cruising Courses.",
    start_time: "June 23, 2025 10:00:00",
    end_time: "June 27, 2025 17:00:00",
    capacity: 12,
    price: 330.00
  },
  {
  "name": "Sail Canada Basic Dinghy Sailing Course",
  "image_url": "dinghy.jpg",
  "description": "Learn the fundamentals of dinghy sailing, including rigging, launching, sailing techniques, and safety procedures.",
  "start_time": "June 30, 2025 10:00:00",
  "end_time": "July 4, 2025 17:00:00",
  "capacity": 12,
  "price": 250.00
},

{
  "name": "Sail Canada Keelboat Sailing Course",
  "image_url": "keelboat.jpg",
  "description": "Master the art of sailing keelboats, covering topics like steering, trimming sails, anchoring, and docking.",
  "start_time": "July 7, 2025 10:00:00",
  "end_time": "July 11, 2025 17:00:00",
  "capacity": 5,
  "price": 400.00
},

{
  "name": "Sail Canada Lifejacket and Personal Flotation Device Course",
  "image_url": "lifejackets.jpg",
  "description": "Learn about the importance of lifejackets and PFDs, how to choose the right one, and how to use it effectively.",
  "start_time": "July 19, 2025 10:00:00",
  "end_time": "July 19, 2025 17:00:00",
  "capacity": 20,
  "price": 50.00
},

{
  "name": "Sail Canada Racing Fundamentals Course",
  "image_url": "racing.jpg",
  "description": "Learn the basics of sailboat racing, including starting procedures, tactics, and rules.",
  "start_time": "July 25, 2025 10:00:00",
  "end_time": "July 25, 2025 17:00:00",
  "capacity": 18,
  "price": 300.00
}
]
courses.each do |course_data|
  Course.create!(course_data)
end
