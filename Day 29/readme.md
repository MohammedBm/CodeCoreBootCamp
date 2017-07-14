#Day 29

#### Everything was done here was added to the awesome_anwers project



We need to add more security to our application so we will need to create more authorizetion to users first we will add a piece of code to prevent other user to delete or edit other people answers. We will add the following code to the `show.html.erb` file
```ruby
<% if user_signed_in? && @question.user == current_user %>
<%= link_to 'Delete',
  question_path(@question),
  method: :delete %>

  <% end %>
<% end %>

```
This line was added before the delete methd and ended right after it

Now we will use this gem called `cancancan` to add more type of users admin, mods and super user

After adding the gem we will need to write this command in the terminal `rails g cancancan:ability ` this will generate a model called `ability.rb` in the following file we will add the following code
```ruby
def initialize(user)

  # user -> current_user
  # if the user is not signed in then `user` will be `nil`

  # it usually recommended that you initialize the `user` argument to a new
  # User so we don't have to check if `user` is nil all the time.
  user ||= User.new

  # DSL -> Domain Specific Language: Ruby code written in a certain way to
  #                                  looks like its own language but keep in
  #                                  mind it's just Ruby code

  # in this rule we're saying: the user can `manage` meaning do any action on
  # the question object if `ques.user == user` which means if the owner of
  # the question is the currently signed in user
  can :manage, Question do |ques|
    ques.user == user
  end

  # remember that this only defines the rules, you still have to enforce the
  # rules yourself by actually using those rules in the controllers and views
  # the advantage is that all of our authoization rules are in one file so we
  # only have to come and change this file when authoization rules change.

end


```

If we want to change our rules we can always come to this file and change our rules to add more or less authorizetion to the users

Now lets try and use our gem that we installed, we will go to the file `show.html.erb` and change the last line we added to check if the answer belonged to the author or not and change it to this line
```html
<%# can? is a helper method that came from the CanCanCan gem which will check the
    rules in our /app/models/ability.rb file %>
<% if user_signed_in? && @can?(;manage, @question) %>
```

after that we will go to the `qeution_contoller.rb`
and change the code we added to this

```ruby

def authorize_user!
  # head :unauthorized unless can?(:manage, @question)
  unless can?(:manage, @question)
    # redirect_to root_path, alert: 'Access denied'

    # head will send an empty HTTP response, it takes one argument as a symbol
    # and the argument will tell Rails to send the desired HTTP response code
    # 	:unauthorized -> 401
    # you can see more code on this page:
    # http://billpatrianakos.me/blog/2013/10/13/list-of-rails-status-code-symbols/
    head :unauthorized
  end
end

```
remember that if a `before_action` dose `render`, `redirect_to` or ` head`. it will stop the request from getting tot he action (it will basically halt the request right there)

We will add theses following code to the `ability.rb` file
```rb

can :manage, Question do |ques|
  ques.user == user
end


can :destroy, Answer do |ans|
  ans.user == user || ans.question.user == user
end

```
The first method will check if the user is the owner if the question if it's it will show the user the delete and edit button if not it will show nothing. The second method will show the delete button on the comment for the author of the question and the the owner of the comment only.

To implement this method we will need to add the following codes to multiple file

firstly, we will need to add this code to the `show.html.erb` file
```html
<% if user_signed_in? && can?(:manage, @question) %>
  <% if user_signed_in? %>
    <%= link_to 'Edit', edit_question_path(@question) %>
<%# When you use `method: :delete`, Rails will use
Javascript to mimick a delete request to the server %>
    <%= link_to 'Delete',
      question_path(@question),
      method: :delete %>

  <% end %>
<% end %>

<!-- AND  -->

<% if user_signed_in? %>
  <strong>Created at:</strong> <%= answer.created_at.to_formatted_s(:long) %>
  <% if user_signed_in? && can?(:destroy, answer) %>
    <%= link_to 'Delete', question_answer_path(@question, answer),
      method: :delete, data: { confirm: 'Are you sure?'} %>
  <% end %>
<% end %>


```
Also we will need to go to the following controllers `Question_contoller.rb` and ` asnwer_conroller.rb`

for the `Question_contoller` we will add the following code to the under the `private` and will create a private methods. Also we will add a `before_action` in the begging of the file
```rb
before_action :authorize_user!, only: [:edit, :destroy, :update]


def authorize_user!
  # if @question.user != current_user
  # head :unauthorized unless can?(:manage, @question)
  unless can?(:manage, @question)
    # redirect_to root_path, alert: 'Access denied'


    #head will send an empty http response, it takes one argument as a symbol and the argument will tell Rails
    # to send dseired HTTP response code

    # :unauthorized -> 401
    # you can see more code in this page:
    #http://billpatrianakos.me/blog/2013/10/13/list-of-rails-status-code-symbols/

    head :unauthorized

  end
end

```
For the `answer_controller.rb` we will add the following code to the `destroy` method
```ruby  
def destroy
    answer = Answer.find params[:id]
    if can?(:destroy, answer)
      answer.destory
      redirect_to question_path(answer.question)
    else
      head :unauthorized
    end

  end


```


To add admin user first we will need to use this code in the terminal ` rails g migration add_is_admin_to_users is_admin:boolean` and then go to the migration file and add `default: false` to the end of the line.

after that we will go to the `ability.rb` and add the following code
```rb

    # this says that if the `is_admin?` methods returns true then the user is
    # is able to `manage` meaning do any action of any model in the application
    if user.is_admin?
      can :manage, :all
    end


```
