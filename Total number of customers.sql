SELECT (
  SELECT count(*) AS "count"
  FROM "user"."user_roles"
  WHERE "user"."user_roles"."role" = 1