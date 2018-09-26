#!/bin/bash
mysqldump -uUSER -pPASSWORD db_config | gzip > /data/backup/data/db_config/db_config_$(date +%Y%m%d_%H%M%S).sql.gz

mysqldump -uUSER -pPASSWORD db_item | gzip > /data/backup/data/db_item/db_item_$(date +%Y%m%d_%H%M%S).sql.gz

mysqldump -uUSER -pPASSWORD db_log | gzip > /data/backup/data/db_log/db_log_$(date +%Y%m%d_%H%M%S).sql.gz

mysqldump -uUSER -pPASSWORD db_monkey | gzip > /data/backup/data/db_monkey/db_monkey_$(date +%Y%m%d_%H%M%S).sql.gz

mysqldump -uUSER -pPASSWORD db_rich | gzip > /data/backup/data/db_rich/db_rich_$(date +%Y%m%d_%H%M%S).sql.gz

mysqldump -uUSER -pPASSWORD db_user | gzip > /data/backup/data/db_user/db_user_$(date +%Y%m%d_%H%M%S).sql.gz