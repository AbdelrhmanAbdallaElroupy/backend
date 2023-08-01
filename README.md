<h1>Steps to use this project</h1>
1- composer install
2-cp .env.example .env
3-Add Database information
4-php artisan migrate 
5-php artisan passport:install
6-php artisan serve

//if You need use docker follow this
1-docker-compose build app
2-docker-compose up -d
3-docker-compose ps (To show information about the state of your active services)
4-docker-compose exec app ls -l (to show detailed information about files in the application directory)
5-docker-compose exec app rm -rf vendor composer.lock
6-docker-compose exec app composer install
7-docker-compose exec app php artisan key:generate
8-access from http://your_IP:8000




<h3>Steps to create this project</h3>

*Add laravel passport

*Add Tasks Table using migrations

*Add Tasks Model

*Create Tasks Controller

*Add JSON middleware to convert all responses to JSON automatically.
```
php artisan make:middleware ForceJsonResponse
```

*Add CORS middleware to allow the consumers to access apis from a different origin
```
php artisan make:middleware Cors
```


<h2>Notes</h2>

<p>* I add postman collection to test api from it </p>
<p>
Register,logout (implemented) but in the backend only, 
i added cors,json middleware 
</p>
<p>You can login using this accounts:
</p>
<h6>abdelrhmanabdalla11@gmail.com</h6>
<h6>password:123456789</h6>
<h6>abdelrhmanabdalla@gmail.com</h6>
<h6>password:123456789</h6>

