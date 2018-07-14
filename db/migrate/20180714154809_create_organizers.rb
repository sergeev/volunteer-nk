class CreateOrganizers < ActiveRecord::Migration[5.2]
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
    create_table :organizers do |t|

      t.string :personal_number         # Персональный номер
      t.string :organizers_name         # Название организации
      t.string :contact_person          # Контактное лицо
      t.string :contact_person_phone    # Номер телефона контактного лица
      t.date   :receipt_date            # Дата вступления
      t.string :field_of_activity       # Сфера деятельности
      t.string :commits                 # Комметарии
      t.string :abouts                  # Об организации
      t.string :phone                   # Телефон
      t.string :events                  # Проводимые мероприятия
      t.string :sociallin_1             # Ссылка на социальные сети
      t.string :sociallin_2             # Ссылка на социальные сети
      t.string :website_link_1          # Ссылка на сайт организации
      t.string :website_link_2          # Ссылка на сайт организации
      t.string :email                   # Ссылка на электроную почту

      t.timestamps                      # Серверный метод обновления данных
    end
  end
end
