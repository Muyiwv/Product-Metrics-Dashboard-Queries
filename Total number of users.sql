WITH total_users AS (
    SELECT count(*) AS total_count
    FROM "user"."users"
    LEFT JOIN "user"."user_roles" "User Roles" ON "user"."users"."id" = "User Roles"."user"
),
total_vendors AS (
    SELECT count(distinct "user"."users"."vendor_id") AS total_count
    FROM "user"."users"
)
SELECT total_users.total_count - total_vendors.total_count AS difference
FROM total_users, total_vendors;
