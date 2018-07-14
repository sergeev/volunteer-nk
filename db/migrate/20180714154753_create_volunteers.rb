class CreateVolunteers < ActiveRecord::Migration[5.2]
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
    create_table :volunteers do |t|

      t.string :personal_number         # Персональный номер
      t.string :full_name               # Имя Фамилия Отчество
      t.date   :birth_date              # Дата рождения
      t.date   :receipt_date            # Дата вступления в волонтеры
      t.string :achievements            # Личные достижения волонтера
      t.string :phone                   # Телефон
      t.string :events                  # Мероприятия по годам (дублирует achievements)
      t.string :gender                  # Пол: М\Ж
      t.string :home                    # Прикреплен за организацией: 0 - нет 1 - школа 2 - училище 3 - вуз 4-0 - ЕВРАЗ 4-1 Русал
      t.string :sociallin_1             # Ссылка на социальные сети
      t.string :sociallin_2             # Ссылка на социальные сети
      t.string :email                   # Ссылка на электроную почту

      t.timestamps                      # Серверный метод обновления данных
    end
  end
end
