Chitter Challenge
=================

## How to Run
* firsly migrate the database using the command 
```
rake db:migrate
```
* then seed the database
```
rake db:seed
```
* to clear the database put (this will remove and reseed the current database)
```
rake db:reset
```
* to run the server locally type in the command
```
shotgun
```
## Testing
WIP

## Resources 
### Resources used for basis of the MVC layout of application:
https://github.com/salma71/sinatra_todo_app/blob/master
### Gems used
- Active Record
- Sinatra
- Shotgun
- many others detailed in Gemfile