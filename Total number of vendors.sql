SELECT count(*) AS "count"
FROM "user"."users"
LEFT JOIN "user"."user_roles" "User Roles" ON "user"."users"."id" = "User Roles"."user"
WHERE "User Roles"."role" = 2