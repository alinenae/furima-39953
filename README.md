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
- has_many :orders, through:items

## items テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| items_name         | string | null: false |
| price              |integer | null: false |
| explanation        | text   | null: false |
| items_id           |integer | null: false |
| user               |references|foreign_key:true|

### Association

- belongs_to :users
- has_one :orders

## orders テーブル

| Column             | Type   | Options    |
| ------------------ | ------ | ---------- |
| address            | text   | null: false,unique: true |

### Association

- belongs_to :items
- belongs_to :users