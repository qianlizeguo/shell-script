#!/bin/bash
#前端api
Api_log_path=/app/logs/api
#商品服务
ItemSvr_log_path=/app/logs/ItemSvr
#商品自动化脚本服务
TaskItemSvr_log_path=/app/logs/TaskItemSvr
#支付服务
PaymentSvr_log_path=/app/logs/PaymentSvr
#财富盒子服务
RichSvr_log_path=/app/logs/RichSvr
#数据分析服务
DataSvr_log_path=/app/logs/DataSvr
#通知服务
NotifySvr_log_path=/app/logs/NotifySvr
#通知服务自动化脚本
TaskNotifySvr_log_path=/app/logs/TaskNotifySvr
#用户登录服务
SsoSvr_log_path=/app/logs/SsoSvr
#用户服务
UserSvr_log_path=/app/logs/UserSvr
#事件服务
TaskSvr_log_path=/app/logs/TaskSvr

#container
Container_log_path=/app/log/go-server-container
#goproxy
Goproxy_log_path=/app/log/go-server-goproxy

#start---数据库备份日志---
#db_config
db_config_data_path=/app/backup/data/db_config
#db_item
db_item_data_path=/app/backup/data/db_item
#db_log
db_log_data_path=/app/backup/data/db_log
#db_monkey
db_monkey_data_path=/app/backup/data/db_monkey
#db_rich
db_rich_data_path=/app/backup/data/db_rich
#db_user
db_user_data_path=/app/backup/data/db_user
#end---数据库备份日志---

#开始清理日志
find $Api_log_path -mtime +7 -name "*.log" |xargs rm -f
find $ItemSvr_log_path -mtime +7 -name "*.log.*" |xargs rm -f
find $TaskItemSvr_log_path -mtime +7 -name "*.log.*" |xargs rm -f
find $PaymentSvr_log_path -mtime +7 -name "*.log.*" |xargs rm -f
find $RichSvr_log_path -mtime +7 -name "*.log.*" |xargs rm -f
find $DataSvr_log_path -mtime +7 -name "*.log.*" |xargs rm -f
find $NotifySvr_log_path -mtime +7 -name "*.log.*" |xargs rm -f
find $TaskNotifySvr_log_path -mtime +7 -name "*.log.*" |xargs rm -f
find $SsoSvr_log_path -mtime +7 -name "*.log.*" |xargs rm -f
find $UserSvr_log_path -mtime +7 -name "*.log.*" |xargs rm -f
find $TaskSvr_log_path -mtime +7 -name "*.log.*" |xargs rm -f

find $Container_log_path -mtime +7 -name "roll.log.*" |xargs rm -f
find $Goproxy_log_path -mtime +7 -name "roll.log.*" |xargs rm -f

find $db_config_data_path -mtime +7 -name "db_config_*.sql.gz" |xargs rm -f
find $db_item_data_path -mtime +7 -name "db_item_*.sql.gz" |xargs rm -f
find $db_log_data_path -mtime +7 -name "db_log_*.sql.gz" |xargs rm -f
find $db_monkey_data_path -mtime +7 -name "db_monkey_*.sql.gz" |xargs rm -f
find $db_rich_data_path -mtime +7 -name "db_rich_*.sql.gz" |xargs rm -f
find $db_user_data_path -mtime +7 -name "db_rich_*.sql.gz" |xargs rm -f
find $db_order_data_path -mtime +7 -name "db_order_*.sql.gz" |xargs rm -f
