# dba-php-api-test

> Okay, so.., in the dba (database administration) class, we are learning how to create a MariaDB database. Here is the
> thing though, I am already familiar with MySQL, which is really similar to MariaDB. I hate to say it, but this class
> is, becuase of this, a bit _boring_... 😅
>
> Something that is new for me though, is Laravel. I've been wanting to try Laravel for quite a while now. I decided to
> give myself a challenge and try/learn to create a Laravel API that connects to the MariaDB database that I created in
> class. 🤔
>
> This is the result of my decision. For now, you can only read from the database. I'm planning on adding the
> possibility to write to the database later on. ✌️

> [!NOTE]
> I'm new to Laravel, so I'm not sure if I'm doing everything right. I'm trying my best though. 🫡

> [!NOTE]
> The database and endpoints are in Dutch. Yes I hate it, but this way, it's more in line with the class. 🫠

## Used stuff

- Laravel
- MariaDB
- PHP

## How to use _(probably)_

> [!CAUTION]
> I have not tested this using the seeder and migration files. I think it should work, but I'm not sure. I'll test it
> later, trust me.

1. Clone the repository
2. Run `composer install` _(Copilot suggested this, so I'm doing it. It knows more than me, so...)_
3. Clone `.env.example` and rename it to `.env`. Then, fill in the database information in the `.env` file.
    ```env
    DB_CONNECTION=mysql
    DB_HOST=
    DB_PORT=
    DB_DATABASE=
    DB_USERNAME=
    DB_PASSWORD=
    ```
4. Run `php artisan migrate` to create the database tables
5. ~~Run `php artisan db:seed` to seed the database~~ _SEEDING DOES NOT WORK YET_
6. Run `php artisan serve`
7. 🎉

## Endpoints

- `GET /api` - Kinda like a health endpoint
- `GET /api/klanten` - Get all customers
- `GET /api/klanten/{id}` - Get a customer by id
- `GET /api/fabrieken` - Get all factories
- `GET /api/fabrieken/{id}` - Get a factory by id
- `GET /api/machines` - Get all machines
- `GET /api/machines/{id}` - Get a machine by id
- `GET /api/orders` - Get all orders
- `GET /api/orders/{id}` - Get an order by id
- `GET /api/plannings` - Get all plannings _(I have no clue what it is, should probably ask my teacher)_
- `GET /api/plannings/{id}` - Get a planning by id
- `GET /api/producten` - Get all products
- `GET /api/producten/{id}` - Get a product by id
- `GET /api/productielijnen` - Get all production lines
- `GET /api/productielijnen/{id}` - Get a production line by id

## Support

For technical issues: Contact me on [Discord](https://discord.com/users/462914535351779328), or, if you're in my class,
just yell my name.

For personal issues: Take a deep breath, it's going to be okay.
