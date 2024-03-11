CREATE TABLE `product` (
  `id` int,
  `name` varchar(255),
  `desc` text,
  `SKU` varchar(255),
  `category_id` int,
  `inventory_id` int,
  `price` decimal,
  `discount_id` int,
  `created_at` timestamp,
  `modified_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `product_category` (
  `id` int,
  `name` varchar(255),
  `desc` text,
  `created_at` timestamp,
  `modified_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `product_inventory` (
  `id` int,
  `quantity` int,
  `created_at` timestamp,
  `modified_at` timestamp,
  `deleted` timestamp
);

CREATE TABLE `discount` (
  `id` int,
  `name` varchar(255),
  `desc` text,
  `discount_percent` decimal,
  `active` boolean,
  `created_at` timestamp,
  `modified` timestamp,
  `deleted_at` timestamp
);

ALTER TABLE `product` ADD FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`);

ALTER TABLE `product_inventory` ADD FOREIGN KEY (`id`) REFERENCES `product` (`inventory_id`);

ALTER TABLE `product` ADD FOREIGN KEY (`discount_id`) REFERENCES `discount` (`id`);
