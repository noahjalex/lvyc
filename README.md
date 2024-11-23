# README

# Lake Vernon Yacht Club (LVYC)

Welcome to the Lake Vernon Yacht Club demo website! This is a fictional yacht club project built with Ruby on Rails. It serves as a portfolio piece to demonstrate my skills in web development and Ruby on Rails. While this is a demo project, it can also be used by anyone who wants to showcase a basic yacht club website.

Lake Vernon is a lake I grew up on in Muskoka, Ontario that _currently_ doesn't have

## Features

- User authentication (sign up, login, logout) for administrators
- Members management (CRUD for members) for members of the yacht club
- Course management (CRUD for courses)
  - Planned: Members and non-members can read courses
  - Planned: Administrators can create, read, update and destroy
- Planned: Basic dashboard for club admins to view and manage registrations for courses and memberships

## Technologies Used

- Ruby on Rails (Backend)
- SQLite3 (Database)
- HTML, CSS, and JavaScript (Frontend)
- Tailwind CSS (Styling)
- Planned: Devise (Authentication)

## Installation

To run this project locally, follow these steps:

### Prerequisites

Ensure you have the following installed:

- Ruby (version 3.x or higher)
- Rails (version 7.x or higher)
- SQLite3
- Node.js and Yarn (for JavaScript dependencies)

### Steps

1. Clone the repository:

   ```bash
   git clone https://github.com/noahjalex/lvyc.git
   cd lvyc
   ```

2. Install the required gems:

   ```bash
   bundle install
   ```

3. Set up the database:

   ```bash
   bin/rails db:create
   bin/rails db:migrate
   ```

4. Install JavaScript dependencies:

   ```bash
   yarn install
   ```

5. Start the Rails server:

   ```bash
   bin/rails server
   ```

6. Visit `http://localhost:3000` in your browser to see the site in action.

## Usage

- **Admin Account**: The application allows for the management of yacht club memberships, courses, course registrations and events (planned). The admin can add, edit, and delete records.
- **Public Access**: The homepage showcases a list of upcoming events and the yacht club’s features. A user can sign up and log in to join the club and manage their account.

## Screenshots

Will include screenshots here.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE.txt) file for details.

## Acknowledgements

- Thanks to the Ruby on Rails community for their continued support and excellent documentation.
- Tailwind for providing an easy-to-use CSS framework.

Feel free to use, modify, and distribute this project as you like. If you'd like to collaborate or contribute, feel free to open an issue or pull request!

---

TODO:

- [x] Write README, add license type and information.
- [x] Add users for controlling admins
- [x] Add tests for admin users
- [x] Add tests for courses
- [x] Add MVC for course_registrations

- [x] Add memberships MVC
- [x] Add memberships MVC testing
- [x] Add handling for user side and admin side.
- [x] Fix sign_out route invalid for users.
- [ ] Add memberships boolean to users. Add conditional views to show forms if user is not a member.

- [ ] Add event MVC, for users to post events and only users can modify their own events.

* ...
