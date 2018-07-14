class CreateEvents < ActiveRecord::Migration[5.2]
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
    create_table :events_tables do |t|

    t.string :personal_number   # Персональный номер
    t.string :organizer         # Кто организатор
    t.string :name              # Название события
    t.date   :date              # Дата события
    t.string :phone             # Телефон для связи

    t.timestamps                # Серверный метод обновления данных
    end
  end
end
