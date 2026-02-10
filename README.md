UZ
------------------------------------------------------------------
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
    git clone https://github.com/akbarsalyev03/Locallib.git
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



License
------------------------------------------------------------------
MIT
