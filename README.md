[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
    <img src="images/microverse-logo.jpg" alt="Logo" width="80" height="80">

  <h3 align="center">AFRITREND LIFESTYLE WEB APP</h3>

  <p align="center">
    A web App created in the fulfillment of Microverse mandatory Ruby on Rails capstone project.
    <br />
    <a href="https://afritrend.herokuapp.com/users/sign_in">View Demo</a>
    ·
    <a href="https://github.com/Cyrus-Kiprop/afriTrend/issues">Report Bug</a>
    ·
    <a href="https://github.com/Cyrus-Kiprop/afriTrend/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->

## Table of Contents

- [About the Project](#about-the-project)
  - [Live Demo](#live-demo)
  - [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Roadmap](#roadmap)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)
- [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->

## About The Project

![](./images/entire-app.gif)

There are numerous lifestyle websites available on the internet today. This apps helps us plan our daily routine with ease and consume content at the comfort of our houses. I scoured the internet with aim to find lifestyle app that is well tailord based on a specific region, especially africa, however, I coul'nt find one that provided personal content based on regions. I have created and afriTrend inorder to address this shortcoming.

AfriTrend is aimed at providing the following content:

```sh
Nutrition
```

- Balanced nutrition content, which is based on africa native delicacies.
- ability to explore and compare different types of diets.
- Help in simplifying diets, by creating personalized diet based on native african recipes.

```sh
Fitness
```

- Articles related to fitness are added to the database. This provide a large pool of resources.
- One can acquire the composition of products throught the producrs.
- Articles constituting of multilevel training session for home based exercises.

```sh
Fashion
```

- Disover latest clothing trends from fashion's top designer in Africa

```sh

```

## Live Demo

Click [ here ](https://afritrend.herokuapp.com/users/sign_in) for a live demo of the app.

### Built With

The project was built using the following languages stacks:

```sh
Back-End(server)
```

- [Ruby -v 2.7.1](https://ruby-doc.org/)
- [Ruby on Rails -v 5.2+](https://rubyonrails.org/)

```sh
Front-End(client)
```

- [Bootstrap v 4](https://getbootstrap.com)
- [ERB](https://guides.rubyonrails.org/layouts_and_rendering.html)
- [Sass](https://sass-lang.com/)
- [Font Awesome Icons](https://fontawesome.com/icons?d=gallery)

```sh
Testing Frameworks
```

- [Capybara](https://github.com/teamcapybara/capybara)
- [RSpec](https://rspec.info/)

<!-- GETTING STARTED -->

## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

- Ruby -v 2.7.1 -[click here](https://www.ruby-lang.org/en/)

- Rails -v 5.2.4

```sh
gem install rails -v 5.2.4
```

- Postgresql database [click here](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-ubuntu-18-04)

### Installation

1. Clone the repo

```sh
git clone https://github.com/Cyrus-Kiprop/afriTrend.git
```

2. CD into the project root directory

```sh
cd ./afriTrend
```

3. Install Dependencies and gems

```sh
bundle install
```

4. Set the databases

```sh
rails db:create
```

5. Create database schemas

```sh
rails db:migrate
```

<!-- USAGE EXAMPLES -->

## Usage

### Fire up the server:

```JS
rails s
```

![](./images/starting-server.gif)

### Navigate to your browser and open port 3000:

```JS
http//localhost:3000
```

### Create an Admin User

![](./images/creating-admin-user.gif)

### Sign In

![](./images/successful-login.gif)

### Create Categories (Admin Only)

![](./images/creating-categories.gif)

### Create a new article

![](./images/creating-an-article.gif)

<!-- ROADMAP -->

## Roadmap

See the [open issues](https://github.com/Cyrus-Kiprop/afriTrend/issues) for a list of proposed features (and known issues).

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/NewAwesomeFeature`)
3. Commit your Changes (`git commit -m 'Add some NewAmazingFeature'`)
4. Push to the Branch (`git push origin feature/NewAmazingFeature`)
5. Open a Pull Request

<!-- CONTACT -->

## Contact

Cyrus Kiprop - cyruskiprop254@gmail.com

Project Link: [https://github.com/Cyrus-Kiprop/afriTrend](https://github.com/Cyrus-Kiprop/afriTrend)

## Authors

👤 **Cyrus Kiprop**

- Github: [Cyrus-Kiprop](https://github.com/Cyrus-Kiprop)
- Twitter: [@kipropJS](https://twitter.com/kipropJS)
- Linkedin: [Cyrus Kiprop](https://www.linkedin.com/in/cyrus-kiprop-ba7320120/)

## Acknowledgements

- [Heroku](https://afritrend.herokuapp.com)
- [Font Awesome](https://fontawesome.com)
- [Best-README-Template](https://github.com/othneildrew/Best-README-Template)
- [PNG-SVG converter](https://image.online-convert.com/convert-to-svg)

<!-- LICENSE -->

## License

Distributed under the MIT License. See [ LICENSE ](https://github.com/Cyrus-Kiprop/afriTrend/blob/master/LICENSE) for more information.

<!-- MARKDOWN LINKS & IMAGES -->

[contributors-shield]: https://img.shields.io/github/contributors/Cyrus-Kiprop/afriTrend.svg?style=flat-square
[contributors-url]: https://github.com/Cyrus-Kiprop/afriTrend/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Cyrus-Kiprop/afriTrend.svg?style=flat-square
[forks-url]: https://github.com/Cyrus-Kiprop/afriTrend/network/members
[stars-shield]: https://img.shields.io/github/stars/Cyrus-Kiprop/afriTrend.svg?style=flat-square
[stars-url]: https://github.com/Cyrus-Kiprop/afriTrend/stargazers
[issues-shield]: https://img.shields.io/github/issues/Cyrus-Kiprop/afriTrend.svg?style=flat-square
[issues-url]: https://github.com/Cyrus-Kiprop/afriTrend/issues
[product-screenshot]: /app/assets/images/screenshot.png
