# Project Name

> TrainTrack is a time-tracking mobile web application for recording time spent training or caring for a pet.

![screenshot](./public/product_mockup.jpg)

> Using TrainTrack, you and your friends or family can see the amount of time you've devoted to caring for a pet animal. This application is designed for mobile use and is based on a [design](https://www.behance.net/gallery/19759151/Snapscan-iOs-design-and-branding?tracking_source=) by [Gregoire Vella](https://www.behance.net/gregoirevella).

## Built With

- Ruby on Rails
- Sass
- RSpec, Rubocop, Stylelint
- Google Chrome
- MacOS Catalina

## Live Demo

Check out the [Live Demo](https://intense-beach-76998.herokuapp.com/), deployed on Heroku.


## Getting Started

While the Live Demo provides a demonstration of how the application functions, local installation is recommended for a more stable, long-term user experience. 

### Prerequisites

The prerequisites for local installation include [Ruby on Rails](http://railsinstaller.org/en), [Ruby](https://www.ruby-lang.org/en/downloads/), PostgreSQL. 

PostgreSQL, which handles TrainTrack's database, is listed with all the other prerequisite gems in the Gemfile. These may be installed en masse using [Bundler](https://bundler.io/).

### Setup

1. Open a Terminal and navigate to the location in your system where you would like to download the project. **New to Terminal? [Learn here](https://www.freecodecamp.org/news/conquering-the-command-line-f85f5e46c07c/).**

2. Enter the following line of code to clone this repository:

`git clone git@github.com:Joseph-Burke/TrainTrack.git`

3. Enter the following line of code to move inside the downloaded repo:

`cd TrainTrack`

4. To install all of the project's gems, run the following:

`bundle install`

5. To set up the project's databases, run the following: 

`rails db:setup ; rails db:create ; rails db:migrate`

**Congratulations!** TrainTrack is now ready to roll!

### Usage

Accessing the application requires a running server. This can easily be achieved from the project's root directory by running `rails s`. The app will now be accessible at the following URL: `http://localhost:3000/`.

### Run tests

TrainTrack's tests are managed by the rspec-rails gem. Running tests is as easy as entering `rspec` in the project's root directory. For more information on rspec-rails, take a look at their [GitHub repo](https://github.com/rspec/rspec-rails).


## Author

👤 **Joseph Burke**

  **Say hello! I don't bite.**

- Github: [@Joseph-Burke](https://github.com/Joseph-Burke)
- Twitter: [@__joeburke](https://twitter.com/__joeburke)
- LinkedIn: [Joseph Burke](https://www.linkedin.com/in/joseph-burke-b7a8261a5)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- **[Gregoire Vella](https://www.behance.net/gregoirevella)** created the design this application was based on. Thanks!
- This project was created as part of the Ruby on Rails module on **[Microverse](https://www.microverse.org/)**'s Web Development course.
- Thanks to my Microverse team-mates **[Amita Roy](https://github.com/Amita-Roy)**, **[Oyeleke Ayomide](https://github.com/Haywhizzz)**, **[Robert Loterh](https://github.com/rloterh)**, **[Eyüp Sercan](https://github.com/eypsrcnuygr)** and my coding partner **[Maryjane Akpagbue](https://github.com/maryjanee)**, all fantastic and highly-recommended developers.
- Special thanks to **[Brandon Defoe](https://github.com/defoebrand)** for personal and technical support throughout the completion of this project.

## 📝 License

This project is [MIT](lic.url) licensed.
