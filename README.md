# Un petit blog des familles

On veut faire de la concurrence à Pinterest, donc on a créé un site où les utilisateurs peuvent créer des "pins". Chaque pin contient une URL d'une image sur le net. Les utilisateurs peuvent commenter les pins, mais ne peuvent pas commenter les commentaires.

### Prérequis 

* Ruby version 2.5.1

* Rails version 5.2.0

### Installation

```sh
$ bundle install
```

### Hiérarchie

```
├── assets
│   ├── config
│   │   └── manifest.js
│   ├── images
│   ├── javascripts
│   │   ├── application.js
│   │   ├── cable.js
│   │   └── channels
│   └── stylesheets
│       └── application.css
├── channels
│   └── application_cable
│       ├── channel.rb
│       └── connection.rb
├── controllers
│   ├── application_controller.rb
│   └── concerns
├── helpers
│   └── application_helper.rb
├── jobs
│   └── application_job.rb
├── mailers
│   └── application_mailer.rb
├── models
│   ├── application_record.rb
│   ├── comment.rb
│   ├── pin.rb
│   ├── user.rb
└── views
    └── layouts
        ├── application.html.erb
        ├── mailer.html.erb
        └── mailer.text.erb

```

Liste des migrations

```
├── migrate
│   ├── 20180725193037_create_users.rb
│   ├── 20180725193115_create_pins.rb
│   ├── 20180725193139_create_comments.rb
├── schema.rb
└── seeds.rb

```

### Lancer les tests

```
rails db:seed
```

### Contributeur

Jihane H.

