SELECT count(*) AS "count"
FROM "user"."user_roles"
WHERE ("user"."user_roles"."role" = 2
   AND "user"."user_roles"."created_on" >= (CAST(date_trunc('week', (now() + (INTERVAL '1 day'))) AS timestamp) + (INTERVAL '-1 day')) AND "user"."user_roles"."created_on" < (CAST(date_trunc('week', ((now() + (INTERVAL '1 week')) + (INTERVAL '1 day'))) AS timestamp) + (INTERVAL '-1 day')))