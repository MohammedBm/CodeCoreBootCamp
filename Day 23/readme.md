# Day 23

## All of today exercies were added to awesome_answers and amazon app repos.

#### ORM - Object-Relational Mapping

##### Naming convention

  Naming model is singular, and naming the tables is always plural.

  e.g<br>
   Question -----> questions<br>
   Category -----> categories<br>
   wolf     -----> wolves


### Migrations
Migrations are used to change the structure of the database. We mean by structure things like: adding table, removing table, adding indexes, removing indexes, adding contraints, removing contraints...etc


Note that at the begining of every migratrions file there is a number that is generated from a timestamp. This is important to keep migratrions at the same order so they are run correctly

<hr>


#### The code below explain the migration file in a brief way inside the comments

```ruby
# Migrations are used to change the structure of the database. We mean by structure things like: adding table, removing table, adding indexes, removing indexes, adding contraints, removing contraints...etc

# Note that at the begining of every migratrion file there is a number that is genreated from a timestamp. This is importnat to keep migratrions at the same order so they are run correcly

class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    #The code you define within `change`method will be the code that gets executed when you run `rails db:migrate` and it will run the opposite of it when you run `rails db:rollback`

    #the code below is called a DSL(Domain Specific Language), it's all ruby code that is written in a certain way to ease writing migrations.

    # `craete_table` method will generate a table with the name you give it each table will have an `autoincrement` filed `id` of type `integer`
    create_table :questions do |t|
      t.string :title
      t.text :body

      #This will generate two fields `created_at` and `update_at` that are automaticly set  by rails and they come in handy when dealing with records

      t.timestamps
    end
  end
end
```
<hr>

### Rails c Commands

- We can use `.create`  to Create a new element in the database. After creating that we need to save it using the command `save`









```ruby
search_term = are

Question.where(["title ILIKE ? OR body ILIKE ?", "%#{search_term}%", "%#{search_term}%"]).count #Result will be 17 in the current database
```
👆 this code above can be used to search for specific search term



```ruby
Question.where(['body ILIKE ?', '%Hacking%']).order({ view_count: :desc }).limit(20)
```
👆 It will look in all question bodies that have the word hacking and order from the highest to the smallest
]

<hr>
### Vaidations

We can define validations here, validations will be called before saving or before creating a record and will prevent the saving or creation from happing if the validation rules are not met.

we can call `.save` we will get back `true` if it completes successfully and will get back `false` if validations fail

To add validations we need to put the code below in the following location `project/app/models/question.rb`(or what everyou called it in you project)

```ruby
class Question < ApplicationRecord

  validates({title: true});
end

```
To create a model we can use the following code `rails generate model product title:string description:text price:integer`
