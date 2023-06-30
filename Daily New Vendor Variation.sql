WITH today AS (
  SELECT count(distinct "user"."users"."vendor_id") AS "count"
  FROM "user"."users"
  LEFT JOIN "user"."user_roles" "User Roles" ON "user"."users"."id" = "User Roles"."user"
  WHERE ("user"."users"."created_on" >= date_trunc('day', now()) 
         AND "user"."users"."created_on" < date_trunc('day', now()) + INTERVAL '1 day'
         AND "User Roles"."role" = 2)
), yesterday AS (
  SELECT count(distinct "user"."users"."vendor_id") AS "count"
  FROM "user"."users"
  LEFT JOIN "user"."user_roles" "User Roles" ON "user"."users"."id" = "User Roles"."user"
  WHERE ("user"."users"."created_on" >= date_trunc('day', now() - INTERVAL '1 day') 
         AND "user"."users"."created_on" < date_trunc('day', now())
         AND "User Roles"."role" = 2)
)
SELECT concat(round(((today.count - yesterday.count) * 100.0) / yesterday.count, 2), '%') AS variance_percentage
FROM today, yesterday;
