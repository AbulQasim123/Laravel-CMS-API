Role Permission Summary
Endpoint	Admin ✅	Author ✅
POST /login	✅	✅
POST /logout	✅	✅
GET /profile	✅	✅
GET/POST/PUT/DEL /categories	✅	❌
GET /articles	✅ All	✅ Own only
POST /articles	✅	✅
GET /articles/{id}	✅	✅ Own only
PUT /articles/{id}	✅	✅ Own only
DELETE /articles/{id}	✅	✅ Own only, ❌ Admin's
