#

# _Animal Shelter API_

## About

This is a simple api for an animal shelter

## Building the App

* Clone this repository

```
$ git clone https://github.com/BullThistle/animal_shelter_api.git
```

* Install required dependencies

```
$ bundle install
```

* Set up database

```
$ rake db:setup
$ rake db:seed
```

* To run local server

```
$ rails s
```
## Specifications
* Models
  * Cats
    * Name
    * Breed
    * Sex
  * Dogs
    * Name
    * Breed
    * Sex
    
* API endpoints
  * GET /cats
  * GET /dogs
  * GET /cat/[id]
  * GET /dog/[id]
  * GET /cat/random
  * GET /dog/random
  * GET /cat/search
  * GET /dog/search
  * POST /cat
  * POST /dog
  * PATCH /cat/[id]
  * PATCH /dog/[id]
  * DELETE /cats
  * DELETE /dogs

## Support and Contact Details

Please contact [Rafael Furry](rfurry@gmail.com) with questions or comments.


## Technologies Used

* [rails](http://rubyonrails.org/)

## Contributors

| [<img alt="Rafa" src="https://avatars0.githubusercontent.com/u/13779974?s=460&v=4" width="117">](https://github.com/bullthistle)
|:---:|
|[Rafa](https://github.com/bullthistle)|
### License

Copyright (c) 2017 **Rafael Furry**

*This software is licensed under the MIT license.*