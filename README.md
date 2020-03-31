## users テーブル

| Column         | Type   | Options     |
| -------------- | ------ | ----------- |
| nickname       | string | null: false |
| email          | string | null: false |
| password       | string | null: false |
| first_name     | string | null: false |
| last_name      | string | null: false |
| first_name_kana| string | null: false |
| last_name_kana | string | null: false |
| birthday       | string | null: false |

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
|real-firat|string|null: false|
|real-last|string|null: false|
|hurigana-first| string| null: false|
|hurigana-last| string| null: false|
|birthday| string| null: false|
### Association

has_many : comments
has_many : items
has_many : locations

## location

| Column         | Type       | Options                        |
| -------------- | ---------- | ------------------------------ |
| first_name     | string     | null:false                     |
| last_name      | string     | null: false                    |
| first_name_kana| string     | null: false                    |
| last_name_kana | string     | null: false                    |
| postal         | integer(7) | null: false                    |
| prefecture     | string     | null: false                    |
| municipality   | string     | null: false                    |
| address        | string     | null: false                    |
| discription    | string     |
| phone_number   | integer    |
| user_id        | references | null: false, foreign_key: true |

### Association

belongs_to : user

## items

| Column       | Type       | Options                        |
| ------------ | ---------- | ------------------------------ |
| name         | string     | null: false                    |
| price        | integer    | null: false                    |
| image        | string     | null: false                    |
| text         | string     | null: false                    |
| user_id      | references | null: false, foreign_key: true |
| category_id  | references | null: false, foreign_key: true |
| brand        | string     | null: false                    |
| size         | string     | null: false                    |
| delivery_fee | string     | null: false                    |
| location_id  | references | null: false, foreign_key: true |
| shopping_day | string     | null: false                    |
| comment_id   | references | null: false, foreign_key: true |
| buyer_id     | references | null: false, foreign_key: true |

### Association

belongs_to : user
belongs_to : category
has_many : comments

## comments テーブル

| Column     | Type       | Options     |
| ---------- | ---------- | ----------- |
| comment    | text       | null: false |
| user_id    | references | null: false |
| item_id    | references | null: false |
| created_id | timestamp  | null: false |

### Association

belongs_to : user
belongs_to : item

## category テーブル

| Column    | Type       | Options     |
| --------- | ---------- | ----------- |
| name      | string     | null: false |
| parent_id | references | null: false |

### Association

has_many : items
