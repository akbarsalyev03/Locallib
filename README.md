<details>
    <summary>EN</summary>
    # Local Library System
    
    **Local Library System** is a library management system built on PHP, MySQL, and Elasticsearch. The project is designed to manage the process of storing, searching, and lending books.
    
    ---
    
    ## Technologies
    
    - PHP (Backend)
    - Nginx (Web Server)
    - MySQL 8 (Database)
    - Elasticsearch 8 (Search Engine)
    - Docker & Docker Compose
    
    ---
    
    ## Architecture
    
    ```
    User (Browser)
          ↓
    Nginx (Port 80)
          ↓
      PHP-FPM
          ↓
       MySQL
          ↓
    Elasticsearch
    ```
    
    - `public/` — publicly accessible directory for end users
    - `private/` — backend logic
    - `docker/` — container configurations
    
    ---
    
    ## Getting Started
    
    ### 1. Clone the Repository
    
    ```bash
    git clone
    cd lokallib
    ```
    
    ### 2. Configure the .env File
    
    A `.env` file must exist in the project root. Example:
    
    ```
    COMPOSE_PROJECT_NAME=lokallib_project
    MYSQL_ROOT_PASSWORD=root
    MYSQL_DATABASE=lokallib
    MYSQL_USER=lib_user
    MYSQL_PASSWORD=root
    ELASTIC_VERSION=8.11.0
    ES_JAVA_OPTS=-Xms512m -Xmx512m
    APP_PORT=8080
    ELASTIC_PORT=9200
    ```
    
    ### 3. Start Docker Containers
    
    ```bash
    docker compose up -d --build
    ```
    
    Verify:
    
    ```bash
    docker compose ps
    ```
    
    ### 4. Access via Browser
    
    If `.env` contains `APP_PORT=8080`:
    
    ```
    http://localhost:8080
    ```
    
    ---
    
    ## Checking Elasticsearch
    
    ```bash
    curl http://localhost:9200
    ```
    
    Or via browser:
    
    ```
    http://localhost:9200
    ```
    
    ---
    
    ## Database
    
    MySQL container settings:
    
    - **Host:** `db`
    - **Database:** `lokallib`
    - **User:** `lib_user`
    - **Password:** taken from `.env` file
    
    ---
    
    ## File Structure
    
    ```
    lokallib/
    │
    ├── public/
    │   └── uploads/
    │
    ├── private/
    │
    ├── docker/
    │   ├── nginx/
    │   ├── php/
    │   ├── mysql/
    │   └── elasticsearch/
    │
    ├── docker-compose.yml
    ├── .env
    └── README.md
    ```
    
    ---
    
    ## Development Commands
    
    Enter a container:
    
    ```bash
    docker exec -it php_app sh
    ```
    
    Stop containers:
    
    ```bash
    docker compose down
    ```
    
    Clean up including volumes:
    
    ```bash
    docker compose down -v
    ```
    
    ---
    
    ## Notes
    
    - The `public/uploads/` directory must have write permissions.
    - Strong passwords must be used in production environments.
    - Elasticsearch security should be configured separately in production.
</details>
<details>
    <summary>UZ</summary>
    # Local Library System
    
    Local Library System --- bu PHP, MySQL va Elasticsearch asosida qurilgan
    kutubxona boshqaruv tizimi. Loyiha kitoblarni saqlash, qidirish va
    ijaraga berish jarayonini boshqarish uchun mo'ljallangan.
    
    ------------------------------------------------------------------------
    
    ## Texnologiyalar
    
    -   PHP (Backend)
    -   Nginx (Web Server)
    -   MySQL 8 (Database)
    -   Elasticsearch 8 (Search Engine)
    -   Docker & Docker Compose
    
    ------------------------------------------------------------------------
    
    ## Arxitektura
    
    User (Browser) ↓ Nginx (Port 80) ↓ PHP-FPM ↓ MySQL ↓ Elasticsearch
    
    -   `public/` --- tashqi foydalanuvchiga ochiq katalog
    -   `private/` --- backend logika
    -   `docker/` --- container konfiguratsiyalari
    
    ------------------------------------------------------------------------
    
    ## Ishga tushirish
    
    ### 1. Repository ni yuklab olish
    
    ``` bash
    git clone <repository_url>
    cd lokallib
    ```
    
    ### 2. .env faylini sozlash
    
    Project root ichida `.env` fayl bo'lishi kerak.
    
    Namuna:
    
        COMPOSE_PROJECT_NAME=lokallib_project
    
        MYSQL_ROOT_PASSWORD=root
        MYSQL_DATABASE=lokallib
        MYSQL_USER=lib_user
        MYSQL_PASSWORD=root
    
        ELASTIC_VERSION=8.11.0
        ES_JAVA_OPTS=-Xms512m -Xmx512m
    
        APP_PORT=8080
        ELASTIC_PORT=9200
    
    ### 3. Docker containerlarni ishga tushirish
    
    ``` bash
    docker compose up -d --build
    ```
    
    Tekshirish:
    
    ``` bash
    docker compose ps
    ```
    
    ### 4. Brauzer orqali kirish
    
    Agar `.env` da:
    
        APP_PORT=8080
    
    bo'lsa:
    
        http://localhost:8080
    
    ------------------------------------------------------------------------
    
    ## Elasticsearch tekshirish
    
    ``` bash
    curl http://localhost:9200
    ```
    
    Yoki brauzer orqali:
    
        http://localhost:9200
    
    ------------------------------------------------------------------------
    
    ## Ma'lumotlar bazasi
    
    MySQL konteyner ichida:
    
    -   Host: `db`
    -   Database: `lokallib`
    -   User: `lib_user`
    -   Password: `.env` fayldan olinadi
    
    ------------------------------------------------------------------------
    
    ## Fayl Strukturasi
    
        lokallib/
        │
        ├── public/
        │   └── uploads/
        │
        ├── private/
        │
        ├── docker/
        │   ├── nginx/
        │   ├── php/
        │   ├── mysql/
        │   └── elasticsearch/
        │
        ├── docker-compose.yml
        ├── .env
        └── README.md
    
    ------------------------------------------------------------------------
    
    ## Development buyruqlari
    
    Container ichiga kirish:
    
    ``` bash
    docker exec -it php_app sh
    ```
    
    Containerlarni to'xtatish:
    
    ``` bash
    docker compose down
    ```
    
    Volume bilan birga tozalash:
    
    ``` bash
    docker compose down -v
    ```
    
    ------------------------------------------------------------------------
    
    ## Eslatma
    
    -   `public/uploads/` papkasi yozish huquqiga ega bo'lishi kerak.
    -   Production muhitda kuchli parollar ishlatilishi shart.
    -   Elasticsearch security production'da alohida sozlanadi.

</details>
