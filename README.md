# _Food Delivery Service Manager_
-------------------

![alt text](/img/homepage.png)

#### _Using Ruby on Rails basic framework and seeds to build a food production web application, 11.17.2017_

#### By _Michael A. Brooks_

## Description

_A Website for Mario's Food Production company for products to be posted, edited and updated with user reviews._

## Specs

#### Products

* Site needs to include a products section with a list of the tasty products that Mario sells. Each product should be clickable with a detail view.

* Site admins should be able to add, update and delete new products. (Don't worry about user authentication; assume everyone who visits the site is an admin for now).
Users should be able to click an individual product to see its detail page. (You will not be expected to show the product's average rating; that's included in the further exploration section.)
Users should be able to add a review to a product.

#### Scopes

* Site should use scopes to display the following information on the site:

* The product with the most reviews.
The three most recently added products.
All products made in the USA for buyers that want to buy local products.

#### Validations

* Site should include validations for the following:

* All fields should be filled out, including rating.
Rating can only be an integer between 1 and 5.
The review's content_body must be between 50 and 250 characters.

#### Seeding

* Project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database.

## Setup/Installation Requirements

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

Open terminal on your computer,
Navigate to the folder you would like to clone the project into and run:

`git clone https://github.com/MikeAlphaBravo/Speciality_Foods`

`cd Speciality_Foods`

`bundle install`

`rails db:create db:test:prepare`

`rails server`

Open a tab in your browser and navigate to `localhost:3000` You should be taken to the Home Page of Mario's Product web application and can log in at the top right.

## User experience screenshots:

![alt text](/img/productlist.png)

![alt text](/img/productdescription.png)

![alt text](/img/newproduct.png)

![alt text](/img/signin.png)

## Known Bugs

_Currently testing for bugs and running different user scenarios, please submit or contact us if you find any._

## Support and contact details

_Updates or suggestions please contact any of our contributors or make a contribution yourself._

## Built With

* [Ruby](https://www.ruby-lang.org/en/)
* [Rails](http://rubyonrails.org/)
* [JavaScript ES6](https://www.javascript.com/) - Script language
* [Atom](https://atom.io/) - Text editor
* HTML6 & CSS - Browser implementation and styling

### License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
Copyright (c) 2017 Michael A. Brooks
