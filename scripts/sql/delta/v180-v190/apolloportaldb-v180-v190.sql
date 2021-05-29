--
-- Copyright 2021 Apollo Authors
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
-- http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
# delta schema to upgrade apollo portal db from v1.8.0 to v1.9.0

Use ApolloPortalDB;

ALTER TABLE `App`
    ADD COLUMN `DeletedAt` BIGINT(20) NOT NULL DEFAULT '0' COMMENT 'Delete timestamp based on milliseconds' AFTER `IsDeleted`,
    MODIFY COLUMN `DataChange_CreatedBy` VARCHAR(64) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
    MODIFY COLUMN `DataChange_LastModifiedBy` VARCHAR(64) DEFAULT '' COMMENT '最后修改人邮箱前缀';

ALTER TABLE `AppNamespace`
    ADD COLUMN `DeletedAt` BIGINT(20) NOT NULL DEFAULT '0' COMMENT 'Delete timestamp based on milliseconds' AFTER `IsDeleted`,
    MODIFY COLUMN `DataChange_CreatedBy` VARCHAR(64) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
    MODIFY COLUMN `DataChange_LastModifiedBy` VARCHAR(64) DEFAULT '' COMMENT '最后修改人邮箱前缀';

ALTER TABLE `Consumer`
    ADD COLUMN `DeletedAt` BIGINT(20) NOT NULL DEFAULT '0' COMMENT 'Delete timestamp based on milliseconds' AFTER `IsDeleted`,
    MODIFY COLUMN `DataChange_CreatedBy` VARCHAR(64) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
    MODIFY COLUMN `DataChange_LastModifiedBy` VARCHAR(64) DEFAULT '' COMMENT '最后修改人邮箱前缀';

ALTER TABLE `ConsumerRole`
    ADD COLUMN `DeletedAt` BIGINT(20) NOT NULL DEFAULT '0' COMMENT 'Delete timestamp based on milliseconds' AFTER `IsDeleted`,
    MODIFY COLUMN `DataChange_CreatedBy` VARCHAR(64) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
    MODIFY COLUMN `DataChange_LastModifiedBy` VARCHAR(64) DEFAULT '' COMMENT '最后修改人邮箱前缀';

ALTER TABLE `ConsumerToken`
    ADD COLUMN `DeletedAt` BIGINT(20) NOT NULL DEFAULT '0' COMMENT 'Delete timestamp based on milliseconds' AFTER `IsDeleted`,
    MODIFY COLUMN `DataChange_CreatedBy` VARCHAR(64) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
    MODIFY COLUMN `DataChange_LastModifiedBy` VARCHAR(64) DEFAULT '' COMMENT '最后修改人邮箱前缀';

ALTER TABLE `Favorite`
    ADD COLUMN `DeletedAt` BIGINT(20) NOT NULL DEFAULT '0' COMMENT 'Delete timestamp based on milliseconds' AFTER `IsDeleted`,
    MODIFY COLUMN `DataChange_CreatedBy` VARCHAR(64) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
    MODIFY COLUMN `DataChange_LastModifiedBy` VARCHAR(64) DEFAULT '' COMMENT '最后修改人邮箱前缀';

ALTER TABLE `Permission`
    ADD COLUMN `DeletedAt` BIGINT(20) NOT NULL DEFAULT '0' COMMENT 'Delete timestamp based on milliseconds' AFTER `IsDeleted`,
    MODIFY COLUMN `DataChange_CreatedBy` VARCHAR(64) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
    MODIFY COLUMN `DataChange_LastModifiedBy` VARCHAR(64) DEFAULT '' COMMENT '最后修改人邮箱前缀';

ALTER TABLE `Role`
    ADD COLUMN `DeletedAt` BIGINT(20) NOT NULL DEFAULT '0' COMMENT 'Delete timestamp based on milliseconds' AFTER `IsDeleted`,
    MODIFY COLUMN `DataChange_CreatedBy` VARCHAR(64) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
    MODIFY COLUMN `DataChange_LastModifiedBy` VARCHAR(64) DEFAULT '' COMMENT '最后修改人邮箱前缀';

ALTER TABLE `RolePermission`
    ADD COLUMN `DeletedAt` BIGINT(20) NOT NULL DEFAULT '0' COMMENT 'Delete timestamp based on milliseconds' AFTER `IsDeleted`,
    MODIFY COLUMN `DataChange_CreatedBy` VARCHAR(64) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
    MODIFY COLUMN `DataChange_LastModifiedBy` VARCHAR(64) DEFAULT '' COMMENT '最后修改人邮箱前缀';

ALTER TABLE `ServerConfig`
    ADD COLUMN `DeletedAt` BIGINT(20) NOT NULL DEFAULT '0' COMMENT 'Delete timestamp based on milliseconds' AFTER `IsDeleted`,
    MODIFY COLUMN `DataChange_CreatedBy` VARCHAR(64) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
    MODIFY COLUMN `DataChange_LastModifiedBy` VARCHAR(64) DEFAULT '' COMMENT '最后修改人邮箱前缀';

ALTER TABLE `UserRole`
    ADD COLUMN `DeletedAt` BIGINT(20) NOT NULL DEFAULT '0' COMMENT 'Delete timestamp based on milliseconds' AFTER `IsDeleted`,
    MODIFY COLUMN `DataChange_CreatedBy` VARCHAR(64) NOT NULL DEFAULT 'default' COMMENT '创建人邮箱前缀',
    MODIFY COLUMN `DataChange_LastModifiedBy` VARCHAR(64) DEFAULT '' COMMENT '最后修改人邮箱前缀';

ALTER TABLE `Users`
    MODIFY COLUMN `Username` varchar(64) NOT NULL DEFAULT 'default' COMMENT '用户登录账户',
    ADD COLUMN `UserDisplayName` varchar(512) NOT NULL DEFAULT 'default' COMMENT '用户名称' AFTER `Password`;

UPDATE `Users` SET `UserDisplayName`=`Username` WHERE `UserDisplayName` = 'default';
