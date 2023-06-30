SELECT count(*) AS "count"
FROM "user"."user_roles"
WHERE ("user"."user_roles"."created_on" >= CAST(now() AS date)
   AND "user"."user_roles"."created_on" < CAST((now() + (INTERVAL '1 day')) AS date) AND "user"."user_roles"."role" = 2)