#Setup Rails Project

##Setting up the server
```
rails new sneakershowoff -d postgresql
cd sneakershowoff
```

##User models
```
rails g model User username 
rake db:drop db:create db:migrate
```

##Install devise 
```
rails generate devise:install
rails generate devise User
```

###Setting up device with lesson notes

##Scaffold Make & Sneakers
```
rails g scaffold Make name discription:text 

rails g scaffold Sneaker type gender photo_source:string user:references make:references discription:text
```

##D,C & M
```
rake db:drop db:create db:migrate
````

##Installend foundation
```
rails g foundation:install
````

##Users controllers
```
rails g controller Users show index
```

