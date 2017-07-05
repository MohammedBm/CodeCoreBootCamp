Rails.application.routes.draw do

  get( '/', {to: 'welcome#index'})
  get('/contact', { to: 'contact#new' })


  post('/contact_submit',{to: 'contact#create'})

end
