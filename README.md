
##  Project Setup Instructions
###  This repo contain Database and Postman collection with documentaion

Follow these steps to set up and run the Laravel CMS API on your local system.

### Requirements

* PHP >= 8.2
* Composer
* MySQL or MariaDB
* Laravel 11

---

###  Installation Steps

```bash
# 1. Clone the project
git clone https://github.com/AbulQasim123/Laravel-CMS-API.git

# 2. Move into project directory
cd laravel-cms-api

# 3. Install PHP dependencies
composer install

# 4. Copy the example environment file
cp .env.example .env

# 5. Generate application key
php artisan key:generate

# 6. Configure your .env database settings
# DB_DATABASE=your_database
# DB_USERNAME=your_username
# DB_PASSWORD=your_password

# 7. Run migrations
php artisan migrate

# 8. Seed the database with test users and categories
php artisan db:seed
```

---

## Seeders Created

> These seeders are included to quickly populate the database with roles, users, and some dummy categories/articles for testing.

| Seeder Class                 | Description                                              |
| ---------------------------- | -------------------------------------------------------- |
| `UserSeeder`                 | Creates one Admin and one Author user                    |

You can run all together using:

```bash
php artisan db:seed
```

Or run a specific one:

```bash
php artisan db:seed --class=UserSeeder
```

---

### 👤 Default Users

| Role   | Email                                           | Password |
| ------ | ----------------------------------------------- | -------- |
| Admin  | [admin@example.com](mailto:admin@example.com)   | password |
| Author | [author@example.com](mailto:author@example.com) | password |

You can log in with these users via `/api/login`.

---

###  Run the Development Server

```bash
php artisan serve
```

> The API will be available at:
> `http://127.0.0.1:8000/api`

Use Postman or any API tool to start making requests.

---

##  Ready!

Now your Laravel CMS API project is up and running with seeded roles, users, and categories.

#  Laravel CMS API Documentation

##  API Endpoint List

**Base URL**: `http://127.0.0.1:8000/api`

| Method       | Endpoint                 | Description                                   |
| ------------ | ------------------------ | --------------------------------------------- |
| `POST`       | `/login`                 | Login and get access token                    |
| `POST`       | `/logout`                | Logout the authenticated user                 |
| `GET`        | `/profile`               | Get current authenticated user's profile      |
| `GET`        | `/categories`            | List all categories (Admin only)              |
| `POST`       | `/categories`            | Create a new category (Admin only)            |
| `GET`        | `/categories/{category}` | Get a specific category by ID (Admin only)    |
| `PUT\|PATCH` | `/categories/{category}` | Update a category (Admin only)                |
| `DELETE`     | `/categories/{category}` | Delete a category (Admin only)                |
| `GET`        | `/articles`              | List articles (Admin: all, Author: own)       |
| `POST`       | `/articles`              | Create a new article                          |
| `GET`        | `/articles/{article}`    | Get article details (Admin: all, Author: own) |
| `PUT\|PATCH` | `/articles/{article}`    | Update article (Admin: all, Author: own only) |
| `DELETE`     | `/articles/{article}`    | Delete article (Admin: all, Author: own only) |

---

##  Authentication APIs

### We can integrate All API in Admin Panel
http://127.0.0.1:8000/my-admin
username = admin@example.com/author@example.com
password = password

###  POST `/login`



**Public** – Login and get an access token.

**Request**

```json
{
  "email": "admin@example.com",
  "password": "password"
}
```

**Response**

```json
{
  "user": { ... },
  "message": "Login successful",
  "token_type": "Bearer",
  "token": "your-access-token"
}
```

---

###  POST `/logout`

**Protected** – Logs out the authenticated user.

**Header**

```
Authorization: Bearer {token}
```

**Response**

```json
{
  "status": true,
  "message": "Logged out"
}
```

---

###  GET `/profile`

**Protected** – Fetch logged-in user's profile.

**Response**

```json
{
  "status": true,
  "message": "Profile fetched successfully",
  "user": { ... }
}
```

---

##  Category APIs

 **Only Accessible by Admin**

### GET `/categories`

Fetch all categories.

---

### POST `/categories`

Create a category.

**Request**

```json
{
  "name": "Technology"
}
```

---

### GET `/categories/{id}`

Fetch a single category by ID.

---

### PUT `/categories/{id}`

Update a category.

**Request**

```json
{
  "name": "Updated Name"
}
```

---

### DELETE `/categories/{id}`

Delete a category.

---

## Article APIs

###  GET `/articles`

Authenticated
Admin: View all articles
Author: View own articles only

**Query Filters (optional):**

* `status`: `Draft`, `Published`, `Archived`
* `category`: category name
* `from` and `to`: published date range

**Example**

```
/articles?status=Published&category=Tech&from=2025-01-01&to=2025-12-31
```

**Success Response**

```json
{
  "status": true,
  "message": "Articles fetched successfully",
  "data": [ { ... } ]
}
```

**Author Unauthorized Response (no own articles):**

```json
{
  "status": false,
  "message": "Unauthorized to view this article!"
}
```

---

###  POST `/articles`

Authenticated
Admin:
Author: (assigned as `author_id` automatically)

**Request**

```json
{
  "title": "AI in 2025",
  "content": "The future of AI...",
  "status": "Draft",
  "published_at": "2025-07-13",
  "category_ids": [1, 2]
}
```

**Response**

```json
{
  "status": true,
  "message": "Article created. AI processing in background."
}
```

---

###  GET `/articles/{id}`

Authenticated
Admin: Can view any article
Author: Can view own articles only

**Unauthorized Response**

```json
{
  "status": false,
  "message": "Unauthorized to view this article!"
}
```

---

###  PUT `/articles/{id}`

Authenticated
Admin: Can update any article
Author: Can update own articles only
Author cannot update Admin’s articles

**Request**

```json
{
  "title": "Updated Title",
  "content": "Updated content",
  "status": "Published",
  "category_ids": [1, 2]
}
```

**Success Response**

```json
{
  "status": true,
  "message": "Article updated. AI processing in background.",
  "data": { ... }
}
```

**Invalid Category Example**

```json
{
  "message": "The given data was invalid.",
  "errors": {
    "category_ids.0": ["The selected category_ids.0 is invalid."]
  }
}
```

---

###  DELETE `/articles/{id}`

Authenticated
Admin: Can delete any article
Author: Can delete own articles only
Author cannot delete Admin’s articles

**Unauthorized Response**

```json
{
  "status": false,
  "message": "You are not authorized to delete this article"
}
```

**Success**

```json
{
  "status": true,
  "message": "Article deleted"
}
```

---

##  Common Error Responses

### 401 Unauthorized (no token or invalid)

```json
{
  "status": false,
  "message": "Unauthorized"
}
```

### 403 Forbidden (policy denied)

```json
{
  "status": false,
  "message": "You are not authorized to perform this action"
}
```

### 404 Not Found

```json
{
  "status": false,
  "message": "Resource not found"
}
```

---

## Background AI Jobs (Auto)

* `GenerateSlugJob` – auto-generates slug from article title
* `GenerateSummaryJob` – auto-generates summary
  These run automatically on article creation and update.

---

##  Role Permissions Summary

| Endpoint                     | Admin |         Author        |
| ---------------------------- | :---: | :-------------------: |
| POST /login                  |   ✓   |           ✓           |
| POST /logout                 |   ✓   |           ✓           |
| GET /profile                 |   ✓   |           ✓           |
| GET/POST/PUT/DEL /categories |   ✓   |           ✗           |
| GET /articles                | ✓ all |       ✓ own only      |
| POST /articles               |   ✓   |           ✓           |
| GET /articles/{id}           |   ✓   |       ✓ own only      |
| PUT /articles/{id}           |   ✓   |       ✓ own only      |
| DELETE /articles/{id}        |   ✓   | ✓ own only, ✗ Admin’s |

---
