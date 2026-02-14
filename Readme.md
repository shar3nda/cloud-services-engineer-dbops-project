# dbops-project
Исходный репозиторий для выполнения проекта дисциплины "DBOps"

```sql
-- создание базы и юзера
CREATE USER store;
CREATE DATABASE store;
ALTER DATABASE store OWNER TO store;
\password store
-- проданные товары за последнюю неделю
SELECT o.date_created, SUM(op.quantity)
FROM orders AS o
JOIN order_product AS op ON o.id = op.order_id
WHERE o.status = 'shipped' AND o.date_created > NOW() - INTERVAL '7 DAY'
GROUP BY o.date_created;
```
