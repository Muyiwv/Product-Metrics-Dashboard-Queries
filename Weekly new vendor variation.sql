SELECT "source"."variance_percentage" AS "variance_percentage"
FROM (WITH this_week AS (
  SELECT count(distinct "user"."users"."vendor_id") AS "count"
FROM "user"."users"
LEFT JOIN "user"."user_roles" "User Roles" ON "user"."users"."id" = "User Roles"."user"
WHERE ("user"."users"."created_on" >= (CAST(date_trunc('week', (now() + (INTERVAL '1 day'))) AS timestamp) + (INTERVAL '-1 day'))
  
   AND "user"."users"."created_on" < (CAST(date_trunc('week', ((now() + (INTERVAL '1 week')) + (INTERVAL '1 day'))) AS timestamp) + (INTERVAL '-1 day')) AND "User Roles"."role" = 2)
), last_week AS (
  SELECT count(distinct "user"."users"."vendor_id") AS "count"
FROM "user"."users"
LEFT JOIN "user"."user_roles" "User Roles" ON "user"."users"."id" = "User Roles"."user"
WHERE ("user"."users"."created_on" >= (CAST(date_trunc('week', ((now() + (INTERVAL '-1 week')) + (INTERVAL '1 day'))) AS timestamp) + (INTERVAL '-1 day'))
   AND "user"."users"."created_on" < (CAST(date_trunc('week', (now() + (INTERVAL '1 day'))) AS timestamp) + (INTERVAL '-1 day')) AND "User Roles"."role" = 2)
  )
SELECT concat(round(((this_week.count - last_week.count) * 100.0) / last_week.count, 2), '%') AS variance_percentage
FROM this_week, last_week) "source"