class CreateHomes < ActiveRecord::Migration[5.2]
  # rake db:migrate RAILS_ENV=development
  # комбинации на управление миграцией
  # rake db:create
  # rake db:migrate
  # удаление старой таблицы и добавление новой
  # rake db:migrate:redo VERSION=20180714154753
  # если возникает ошибка вида:
  # ActiveRecord::StatementInvalid: PG::DuplicateTable: ERROR:  relation "#table_name" already exists
  # выполняем следующее:
  # => 1: rails db
  # => 2: drop table volunteers;
  # => 3: rails db:migrate RAILS_ENV=development
  # => global: drop table volunteers, organizers, apprentices, events_tables, homes, partners;

  def change
    create_table :homes do |t|

      t.string :news_title        # Заголовок новости
      t.string :news_content      # Контент новости
      t.date   :news_date         # Время размещения новости
      t.string :published         # Опубликовано 0 - нет 1 - да
      t.string :author            # Автор новости
      t.string :slide_link_0
      t.string :slide_link_1
      t.string :slide_link_2
      t.string :slide_link_3
      t.string :slide_link_4
      t.string :slide_link_5
      t.string :slide_link_6
      t.string :slide_link_7
      t.string :slide_link_8
      t.string :slide_link_9

      t.timestamps
    end
  end
end
