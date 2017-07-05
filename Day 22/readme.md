# Day 22

### MVC


By default setting a method like
```ruby
def index

end
```
this method above 👆 will look for a file called `index.html.rb`

To generate a controller in rails we can use `rails g controller welcome`.
it will generate multiple file to us.

To check your file or see them in your project file, you can see them inside `project/app/controller` and to check the html `project/app/views`.

#### Creating a page on ruby
Go to `project/config/routes.rb`


```ruby
get( '/', {to: 'wecome#index'})
```
This rules defines the following: wwhen we recive a `GEt` request to '/' which is the home page, send the request to the `Welcome ` cotroller and `index` action within that controller. An action is a public instance method that is defined within the controller.

<br>

```ruby
class WelcomeController < ApplicationController
  #This is the `index` action in our Welcome controller
  def index
    #This will send an http response that has simple text: Hello World!!
    render plain: 'Hello Word!'
  end
end
```

Ideally We don't want to render a plain simple text. We would rather to render an html page. First, we need to create an html page inside of `project/app/views/welcome`

```ruby
class WelcomeController < ApplicationController
  #This is the `index` action in our Welcome controller
  def index
    #This will send an http response that has simple text: Hello World!!
    # render plain: 'Hello Word!'

    render 'welcome/index'
  end
end
```
Instead we would rather use the code above.

The code will work and render the `index.html.erb` that we created inside the `views/welcome`. Because it will automatically will render the template `.html.erb` extension that is in a folder named after the controller within the `views` folder.
In this case the file to be rendered will be `app/views/welcome/index.html.erb` as i mentioned above.

the layout will contain the HTML `<head>` and usually contains the page's header and footer. The content of the view file will go in the place of `<%= yield %>` inside the layout file. The route for the layout is `project/app/views/layout/application.html.erb`

<br/>

#### Creating Contact Page

Now we will crate another controller using `rails g controller contact`, after that we will go to `project/config/routes.rb` and add this line  ` get('/contact', { to: 'contact#new' })`. Next, we will go to `app/views/contact` and create a file called `new.html.erb`. After that we need to add the following code inside the html.erb file we created
```html
<h1>Contact Us</h1>
```

Also we will need to add the code below to the `contact_controller.rb`
```ruby
class ContactController < ApplicationController
  def new
  end
end
```

We will also create a nav bar on our `application.html.erb` to navigate between our home page and contact page by adding the following code.
```html
<a href="/">Home</a>
|
<a href="/contact">Contact Us</a>
<hr/>
```
In ERB I can embed Ruby code by using `<%= ..%> ` link_to is a Rails View helper that generate `<a>` tag for us. Rails comes with many built-in view helpers that makes it easy to generate different HTML elements. The `link_to` first argument is the anchor text, the second argument is the URL or URL helper

And so we will modify the code to the
```html
<body>
  <a href="/">Home</a>
  |
  <a href="/contact">Contact Us</a>
  |
  <%= link_to('Contact Us',contact_path)%>
  <hr />
  <%= yield %>
</body>

```
By using the code above we will git two `Contact Us` links one of them using an anchor tag `<a>` and the other by embeding ruby into the html file using `<%= link_to('Contact Us',contact_path)%>`

### Building a Form
First we will go to the `new.html.erb` in the directory `app/views/contact` and add the following code
```HTML
<h1>Contact Us</h1>

<%= form_tag URL_TO_SUBMIT_TO do %>

<% end %>
```
Next, we will add our routes in the `congifg/routes.rb`, and we will add the following code
```ruby
post('/contact_submit',{to: 'contact#create'})
```
we will add a button to the `new.html.erb`
```html
<h1>Contact Us</h1>

<%= form_tag contact_submit_path do %>
  <%= submit_tag 'Submit Contact Form' %>
<% end %>

```
We will also add the following piece of code to the `contact_controller.rb`
```ruby
class ContactController < ApplicationController
  def new
  end
  #when reciving: POST/contact_submit
  def create
    #by default this will rneder `app/views/contact/create.html.erb`
  end
end
```

After this we will create a file called `create.html.erb` inside of the follwing directory `project/views/contact` and add the follwing code
```html
<h1>Thank you for contacting us.</h1>
```

To add a label and a text area to the `new.html.erb` we will need to the following code
```html
<h1>Contact Us</h1>


<%= form_tag contact_submit_path do %>
  <div>
    <%= label_tag :name %>
    <%= text_field_tag :name %>
  </div>

  <div>
    <%= label_tag :message %>
    <%= text_area_tag :message %>
  </div>
  <%= submit_tag 'Submit Contact Form' %>
<% end %>

```

We get all the parameters in Rails controllers to the `params` hash which can be accessed by Strings or Symbols as their keys
When you define an instance variable, you can access that variable in the view file being rendered which is `create.html.erb` in this case

So we will go to the `create_controller.rb` and add the follwing code inside the `create` method
```html
# we get all the parameters in Rails controllers to the `params` hash which can be accessed by Strings or Symbols as their keys
# When you define an instance variable, you can access that variable in the view file being rendered which is `create.html.erb` in this case
@name = params[:name]
# by default this will render: app/views/contact/create.html.erb
```


After that we go to the `create.html.erb` and add edit the `<h1>` tags we have to the follwing code
```html
<h1>Thank you <%= @name %> for contacting us.</h1>
```

Now when we submit a name and message we will get back our name as output as:


*Thank you `Name input` for contacting us.*
