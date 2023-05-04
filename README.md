Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

 # how to build project
 ```bash
{
  run bundle install
  run db:create db:migrate
  yarn install
  server s
  yarn build --watch
}
```
During the production push we will have to set the coudinary url via:
```
heroku config:set CLOUDINARY_URL=cloudinary://166....
```
Then check with:
```
heroku config
```
