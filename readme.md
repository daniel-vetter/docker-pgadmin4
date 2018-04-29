pgAdmin4 is a PostgreSQL management ui.

This image contains a ready to run pgAdmin4 app server, configured in desktop mode.

The image is only meant for development purpose. Do not use in a production environment.

## Examples:

### Command line:

`docker run -it -p 5050:5050 dvetter/pgadmin4`

### Docker Compose in combination with a postgres container

```
version: "3.1"
  services:
    postgres:
      image: postgres
      ports:
        - "5432:5432"
      environment:
        POSTGRES_USER: user
        POSTGRES_PASSWORD: password

    pgadmin:
      image: dvetter/pgadmin4
      ports:
        - "5050:5050"
```