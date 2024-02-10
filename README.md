# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| fast_name_kana     | string | null: false |
| nickname           | string | null: false |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false |
| birthday           | date   | null: false |


### Association

- has_many :items
- has_many :orders

## items テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| items_name         | string | null: false |
| price              |integer | null: false |
| explanation        | text   | null: false |
| category_id        |integer | null: false |
| user               |references|null: false,foreign_key:true|

### Association

- belongs_to :user
- has_one :order

## orders テーブル

| Column             | Type   | Options    |
| ------------------ | ------ | ---------- |
| user               |references|null: false,foreign_key:true|
| item               |references|null: false,foreign_key:true|

### Association

- belongs_to :item
- belongs_to :user