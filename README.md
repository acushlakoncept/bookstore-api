# BOOKSTORE CMS RESTful JSON API

The is a simple restful JSON API for managing [bookstore CMS client](https://github.com/acushlakoncept/bookstore) side application built with Redux and React

## Built With

- Ruby v2.6.5
- Ruby on Rails v6.0.3.2
- RSpec-Rails

## Current API Endpoints

Our API will expose the following RESTful endpoints.

| Endpoint                  | Functionality                |
|---------------------------|------------------------------|
| POST /api/v1/books        | Add book                     |
| GET /api/v1/books         | Get all books                |
| GET /api/v1/books/:id     | Get a book                   |
| PUT /api/v1/books/:id     | Update a book                |
| DELETE /api/v1/books/:id  | Delete a book                |
| GET /category             | Get all categories           |
| GET /category/:id         | Get a category               |

### Example

~~~json
// POST /api/v1/books
    {
        "title": "The Shining",
        "author": "Stephen King",
        "category_id": 2
    }


// Results

{
    "id": 4,
    "title": "The Shining",
    "author": "Stephen King",
    "category_id": 2,
    "created_at": "2020-12-01T02:55:22.010Z",
    "updated_at": "2020-12-01T02:55:22.010Z"
}
~~~

## Live Version

[Live API](https://bookstore-api-ud.herokuapp.com/api/v1/books)
## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby: 2.6.5
Rails: 6.0.3.2
Postgres: >=9.5

### Setup

~~~bash
$ git clone https://github.com/acushlakoncept/bookstore-api
$ cd bookstore-api
~~~

Install gems with:

```
bundle install
```

Setup database with:

> make sure you have postgress sql installed and running on your system

```
   rails db:create
   rails db:migrate
   rails db:seed
```

### Usage

Start server with:

```
    rails server
```

Open `http://localhost:3000/` in your browser.

### Deploy to a live server

Deploying to a live server like Heroku is easy, make sure you have the necessary credentials setup on your local machine

```bash
heroku create
heroku rename app-new-name
git push heroku $BRANCH_NAME:master 
```
if you are already in master branch no need to add $BRANCH_NAME, just use `git push heroku master`

```bash
heroku run rails db:migrate
heroku run rails db:seed
heroku open
```

Enjoy your newly deployed rails API


### Run tests

```
    rpsec 
```

# Authors

👤 **Uduak Essien**

- Github: [@acushlakoncept](https://github.com/acushlakoncept/)
- Twitter: [@acushlakoncept](https://twitter.com/acushlakoncept)
- Linkedin: [acushlakoncept](https://www.linkedin.com/in/acushlakoncept/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!
