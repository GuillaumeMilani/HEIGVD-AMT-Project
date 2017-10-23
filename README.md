# AMT Project - Kebab Shop

## Lancement

Pour lancer le système ainsi que tout les containers, rendez-vous avec votre terminal favori dans le dossier `docker-compose`, et lancez `docker_launch.sh`. Ce dernier aura pour effet de lancer notre docker-compose avec tout nos containers : PhpMyAdmin, MySQL ainsi que WildFly.

Pour accéder à notre application, rendez-vous à cette adresse :  
[http://192.168.99.100:8080/WebApp/kebabShops](http://192.168.99.100:8080/WebApp/kebabShops)

## Container
### WildFly

#### Port 8080
Accès aux services WildFly

#### Port 9990
Accès à l'administration de WildFly

| *User* |  *Password* |
|---     |---          |
| admin  | admin       |


### MySql

#### Port 3306
Permet l'accès à la base de donnée

#### Connexion depuis wildfly
Depuis wildfly, il faut se connecter sur localhost (127.0.0.1) sur le port 3306 pour accéder à la base de donnée.

| *User* |  *Password*   |
|---     |---            |
| root   | myPass        |

### PhpMaAdmin

#### Port 6060
Permet d'accéder à l'interface de phpMyAdmin pour accéder à notre base de donnée MySQL. 

| *User* |  *Password*   |
|---     |---            |
| root   | myPass        |



## Progress (for 4.5)

| Feature  | Progress |
| ------------- | ------------- |
| There is a clean repo containing the code and a README.md file that describes how to use the app (indicate the access URL) and what has | :white_check_mark: |
| We can launch the app with docker-compose up --build. | :white_check_mark: |
| We can generate a (large) list of random things. | :white_check_mark: |
| We can add a new Thing. There is a form for that. | :white_check_mark: |
| We can delete a Thing. | :white_check_mark: |
| We can update a Thing. | :white_check_mark: |
| We have pagination controls to browse through the list | :white_check_mark: |
| The Things are stored in a database (running in a Docker container) | :white_check_mark: |
| The MVC pattern is used to manage navigation between pages. | :white_check_mark: |
| We are not able to make the application crash. | :white_check_mark: |


## Progress (Bonus)

| Feature  | Progress |
| ------------- | ------------- |
| A nice web template (e.g. based on Bootstrap) has been integrated | :white_check_mark: |
| It is possible to sort the list by clicking on the column headers | :red_circle: |
| It is possible to search within the list | :red_circle: |
| The content of the form is validated on the server side. Error messages are displayed to the user | :red_circle: |
| When you click on the “Generate” button, you trigger an async process (you get an immediate response). It is not possible to generate multiple batches in parallel. | :red_circle: |
| You implement authentication and authorization. Users have to login to access the configuration page. | :red_circle: |
| You have done performance tests with JMeter (or a similar tool) and you have a report with results | :red_circle: |
| When the user deletes a thing, he is asked for confirmation. He can tick a “Don’t ask me again” checkbox. | :red_circle: |
| You wanted to explore something else (e.g. UI testing, continuous integration, advanced feature). You have sold us the idea <hr/> *Nous avons mis en place un flux de travail grâce à l'outil d'intégration continue Travis qui construit le container .war à chaque commit sur la branche master et le publie sur GitHub releases. <br/>Au lancement du container docker de Wildfly, la dernière version du fichier .war est automatiquement téléchargée* | :white_check_mark: |

