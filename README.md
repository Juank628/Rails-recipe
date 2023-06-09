<a name="readme-top"></a>

<div align="center">

  <img src="logo.png" alt="logo" width="220"  height="auto" />
  <h1><b>Recipes for Cooking</b></h1>

</div>


<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Key Features](#key-features)
    - [Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Project Name

## Recipes for Cooking using Rails

## About this project

This is a Recipe App built with `Rails` framework to let users sign up, login, add and interact with recipes, see others public recipes, add available food items of the user, and generate a shopping list with all food items they need.

## 🛠 Built With <a name="built-with"></a>

- `Ruby`, `Ruby on Rails`, `JavaScript`, `HTML`, `CSS`

<!-- Features -->

### Key Features <a name="key-features"></a>

> Key features of the application.

- A full stack app where users can add their recipes and share with others.
- Users can add recipes, see others public recipes, interact with own's recipe, can make a recipe public or vice versa.
- Users can see the public recipes along with their price and number of food items.
- Users will be able to authenticate their accounts.
- Users can add their available food items with quantity and per unit price. They also can generate a shopping list containing necessary food items and total amount to buy.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

Live demo is available [here](https://kitchen-recipe-rails.onrender.com). Due to free accounts, hosted website may occur in inaccessibilty. Kindly take a look at the UI below:

| Food Page  | Recipe Page |
| ------------- | ------------- |
| ![image](https://user-images.githubusercontent.com/64170307/235312165-da258f53-379d-4668-951e-82944bcd3cb8.png)  | ![image](https://user-images.githubusercontent.com/64170307/235312192-58ffe70a-604f-4e5e-93b8-83987c264edd.png)  |

| Public Recipe Page  | Second Header |
| ------------- | ------------- |
| ![image](https://user-images.githubusercontent.com/64170307/235312244-9ad98c4f-3fc8-44bb-89ba-73e53a4a5490.png)  | ![image](https://user-images.githubusercontent.com/64170307/235312259-4a872441-e0af-4abe-a0aa-ba4066b91a94.png)  |

| Personal Recipe Details  | Public Recipe Details |
| ------------- | ------------- |
| ![image](https://user-images.githubusercontent.com/64170307/235312282-a6ceb2b8-ad70-4089-9cb8-dfac04bd2b8d.png)  | ![image](https://user-images.githubusercontent.com/64170307/235312302-ef5c0f4b-4c4f-45a6-847f-e9983121472c.png)  |

<!-- GETTING STARTED -->

## 💻 Getting Started
To clone the repository in local environment try following steps.

### Prerequisites

- [x] A code editor like Visual Studio Code with Git and Node.js.

You can check if Git is installed by running the following command in the terminal.
```
$ git --version
```

Likewise for `Ruby` and `gem` for package installation.
```
$ ruby --version && gem --version
```
**Note: This project is built with `Ruby` version 3.1.3**
### Setup

Clone the repository using [this link](https://github.com/Juank628/Rails-recipe).

### Install

In the terminal, go to your file directory and run this command.

```
$ git clone https://github.com/Juank628/Rails-recipe
```
### Get into development

In the terminal, run these commands to get into development.
```
$ cd Rails-recipe

$ bundle init

$ bundle install (install dependencies)
```
**Note: You might need to update [database.yml](./config/database.yml) for development and testing environments with necessary username and password for your database in their respective positions. Because of free deployment, sending of user confirmation email option can take several hours to reach to the user mail box.**
```
$ rails db:create

$ rails db:migrate

$ rails server
```
### Usage <a href="usage" name="usage"></a>

This website is applicable for both mobile and desktop version.

### Run Test <a href="run-test" name="run-tests"></a>

```
$ rspec
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Prangon Ghose**

- GitHub: [@PrangonGhose](https://github.com/PrangonGhose)
- LinkedIn: [Prangon Ghose](https://www.linkedin.com/in/prangon-ghose/)

👤 **Juan Carlos Sanchez**
- GitHub: [@Juank628](https://github.com/Juank628)
- LinkedIn: [LinkedIn](https://linkedin.com/in/juan-carlos-sanchez-zunino)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Add inventory to buy food items from**
- [ ] **Enable users to like and comment to others public recipes**
- [ ] **Enable users to add profile pictures and picture of the dish**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome! Add suggestions by opening new issues.

Feel free to check the [issues page](https://github.com/Juank628/Rails-recipe/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

Authors would like to thank:
- [Microverse](https://www.microverse.org/)
- Code Reviewers
- Coding Partners

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.
