# テーブル設計　

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :works
- has_many :reports
- has_one :nice
- has_one :bad


## works テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |
| rule   | text       | null: false                    |
| weight | integer    | null: false                    |
| user   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :items


## items テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| name        | string     | null: false                    |
| quantity    | string     | null: false                    |
| needs       | string     | null: false                    |
| work        | references | null: false, foreign_key: true |

### Association

- belongs_to :work

## reports テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| message     | string     | null: false                    |
| user        | references | null: false, foreign_key: true |
| work        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :work
- has_one :nice
- has_one :bad


## nice テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| work        | references | null: false, foreign_key: true |

### Association

- belongs_to :user

- belongs_to :report

## bad テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| user        | references | null: false, foreign_key: true |
| work        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :report
