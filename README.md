<h1>Steps to use this project</h1>
<p>1- composer install</p>
<p>2-cp .env.example .env</p>
<p>3-Add Database information</p>
<p>4-php artisan migrate </p>
<p>5-php artisan passport:install</p>
<p>6-php artisan serve</p>

<h4>//if You need use docker follow this</h4>
<p>1-docker-compose build app</p>
<p>2-docker-compose up -d</p>
<p>3-docker-compose ps (To show information about the state of your active services)</p>
<p>4-docker-compose exec app ls -l (to show detailed information about files in the application directory)</p>
<p>5-docker-compose exec app rm -rf vendor composer.lock</p>
<p>6-docker-compose exec app composer install</p>
<p>7-docker-compose exec app php artisan key:generate</p>
<p>8-access from http://your_IP:8000</p>




<h3>Steps to create this project</h3>

<p>*Add laravel passport</p>

<p>*Add Tasks Table using migrations</p>

<p>*Add Tasks Model</p>

<p>*Create Tasks Controller</p>

<p>*Add JSON middleware to convert all responses to JSON automatically.</p>
```
php artisan make:middleware ForceJsonResponse
```

<p>*Add CORS middleware to allow the consumers to access apis from a different origin</p>
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

