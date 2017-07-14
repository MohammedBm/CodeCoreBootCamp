# User Authentication
#### Everything mentioned below was added to the awesome answers project


To create user Authentication in rails we will need first to write this command in our root file inside the terminal `rails g model user first_name last_name email password_digest` this line will create a model called user that stores the user first_name, last_name, email and password and decrypt the password.


First, we will go to the `user.rb` model inside the model file and add the following model
```ruby
has_secure_password
# has_secure_password is a built-in rails method that provides
# use authentication features for the model its called in
# 1. It will automatically add a presence validator for the password field
# 2. It will create two virtual fields: password & password_confirmation
# 3. When given a pasword, it will generate a salt. Then, it will hash the hash
#    salt and password combo, store the result in the password_digest column
#    (using `bcrypt`.)
# 4. If you skip the `password_confirmation` field, then it won't give you
#    a validation error for that, but if you provide it, it will validate that
#    the `password` & `password_confirmation` are the same.
# 5. The user instance gets the `authenticate` method which will allow
#    us to verify if a user entered the correct password. It returns `false` if
#    the password in incorrect and the user if correct.

VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/
validates :email, presence: true, uniqueness: true, format: VALID_EMAIL_REGEX

validates :first_name, :last_name, presence: true


```

Then we will make a user controller we will use this command in the terminal `rails g controller users` and we will add the following code to the `user_controller.rb` file
```rb

def new
  @user = User.new
end

def create
  @user =  User.new user_params

  if @user.save
    # The flash is temporary that will last until the next
    # request ends. We typically use it to store information
    # to display to the user about what just happened.

    # flash[:notice] = 'Thank you for signing up!'
    # When using `redirect_to`, we can include the flash as an argument
    # instead of writing in a single as above ð
    redirect_to home_path, notice: 'Thank you for signing up!'
  else
    #sometimes we want the flash message to appear in the current request and not the next one. User `flash.now[...]` in that sitaution

    flash.now[:alert] = @user.errors.full_messages.join(', ')
    render :new
  end
end


private

def user_params
  params.require(:user).permit(
    :first_name,
    :last_name,
    :email,
    :password,
    :password_confirmation
  )
end
```
Now with the code above we can create users with first name,last name, password and email and save them into a database



We will also add the following code to the `application.html.erb` file to show the flash
```HTML
<div class='flash'>
  <% if flash[:notice] %>
    <%= flash[:notice] %>
  <% elsif flash[:alert] %>
    <%= flash[:alert] %>
  <% end %>
</div>


```


Now if we want to create i sing in page we will need to create a controller with the following command `rails g controller sessions new`


After that we will go to the routes file and add the following code
```ruby
resource :session, only: [:new, :create, :destroy]

```

When we create a sessions we will need to change our resources to resource since the user will need only to sing in once and have one session since every user should only have one profile and sing in once with one account instead of have multiple sessions or sing ins.

Even though resource is a singular and gave an argument (i.e session) that is singular, it sill expects the controller to be named in plural (i.e. sessionsContoller)



To sign in to the session we will go to the `sessions_contoller.rb` and add the following file
```ruby
def new
end


def create
  # We have the users email and password from the params
  #1. first find the user by their email
  #2. if found, we authenticate the user with the given password
  #3. if authentication not successful, we alert the user with wrong credentionls
  user = User.find_by(email: params[:email])

  if user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to home_path, notice: 'Thank you for signing in! ❤️'
  else
    flash.now[:alert = 'Wrong email or password!!!']
    render :new
  end

end


def destroy

end

```
