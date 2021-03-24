## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |
|profile   | text   | null: false |
|occupation| tex    | null: false |
|position  | tex    | null: false |

### Association

- has_many :comments
- has_many :prototypes

## prototypes テーブル

| Column   | Type     | Options     |
| -------- |  ------- | ----------- |
| title    | string   | null: false |
|catch_copy| text     | null: false |
|concept   | text     | null: false |
|image     |          |ActiveStorage|
|user      |references|             |

## Association

- belong_to  :user
- has_many   :comments

## comments テーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| text    | text       | null: false |
| user    | references |             |
|prototype| references | null: false |

### Association

- belongs_to :prototypes
- belongs_to :user