# 📝 Laravel CMS API Documentation

## 🔗 API Endpoint List

**Base URL**: `http://127.0.0.1:8000/api`

| Method        | Endpoint                      | Description                              |
|---------------|-------------------------------|------------------------------------------|
| `POST`        | `/login`                      | Login and get access token               |
| `POST`        | `/logout`                     | Logout the authenticated user            |
| `GET`         | `/profile`                    | Get current authenticated user's profile |
| `GET`         | `/categories`                 | List all categories (Admin only)         |
| `POST`        | `/categories`                 | Create a new category (Admin only)       |
| `GET`         | `/categories/{category}`      | Get a specific category by ID (Admin only) |
| `PUT|PATCH`   | `/categories/{category}`      | Update a category (Admin only)           |
| `DELETE`      | `/categories/{category}`      | Delete a category (Admin only)           |
| `GET`         | `/articles`                   | List articles (Admin: all, Author: own)  |
| `POST`        | `/articles`                   | Create a new article                     |
| `GET`         | `/articles/{article}`         | Get article details (Admin: all, Author: own) |
| `PUT|PATCH`   | `/articles/{article}`         | Update article (Admin: all, Author: own only) |
| `DELETE`      | `/articles/{article}`         | Delete article (Admin: all, Author: own only) |


## 🔐 Authentication APIs

### 🔸 POST `/login`  
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

### 🔸 POST `/logout`  
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

### 🔸 GET `/profile`  
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

## 📂 Category APIs  
🔐 **Only Accessible by Admin**

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

## 📰 Article APIs

### 🔸 GET `/articles`  
🔒 Authenticated  
👤 Admin: View all articles  
👤 Author: View own articles only

**Query Filters (optional):**
- `status`: `Draft`, `Published`, `Archived`  
- `category`: category name  
- `from` and `to`: published date range

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

### 🔸 POST `/articles`  
🔒 Authenticated  
👤 Admin: ✅  
👤 Author: ✅ (assigned as `author_id` automatically)

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

### 🔸 GET `/articles/{id}`  
🔒 Authenticated  
👤 Admin: Can view any article  
👤 Author: Can view own articles only

**Unauthorized Response**
```json
{
  "status": false,
  "message": "Unauthorized to view this article!"
}
```

---

### 🔸 PUT `/articles/{id}`  
🔒 Authenticated  
👤 Admin: Can update any article  
👤 Author: Can update own articles only  
❌ Author cannot update Admin’s articles

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

### 🔸 DELETE `/articles/{id}`  
🔒 Authenticated  
👤 Admin: Can delete any article  
👤 Author: Can delete own articles only  
❌ Author cannot delete Admin’s articles

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

## ⚠️ Common Error Responses

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

- `GenerateSlugJob` – auto-generates slug from article title  
- `GenerateSummaryJob` – auto-generates summary  
These run automatically on article creation and update.

---

## ✅ Role Permissions Summary

| Endpoint                   | Admin | Author |
|----------------------------|:-----:|:------:|
| POST /login                | ✅    | ✅     |
| POST /logout               | ✅    | ✅     |
| GET /profile               | ✅    | ✅     |
| GET/POST/PUT/DEL /categories | ✅  | ❌     |
| GET /articles              | ✅ all | ✅ own only |
| POST /articles             | ✅    | ✅     |
| GET /articles/{id}         | ✅    | ✅ own only |
| PUT /articles/{id}         | ✅    | ✅ own only |
| DELETE /articles/{id}      | ✅    | ✅ own only, ❌ Admin’s |

