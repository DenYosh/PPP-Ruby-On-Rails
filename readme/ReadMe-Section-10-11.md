---
[⬅️ Vorige](./ReadMe-Section-7-8-9.md) • [🏠 Terug naar Hoofdpagina](../ReadMe.md) • [Volgende ➡️](./ReadMe-Section-12-13.md)
---

# Sectie 10 + 11

# Sectie 10 | CRUD

## 1. Aanmaken van een table

Het aanmaken van een table gebeurt door migrations. Dit is de output van 2 migrations.

```rb
ActiveRecord::Schema[8.0].define(version: 2025_02_01_155137) do
  create_table "employees", force: :cascade do |t|
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "hasspassport"
    t.integer "salary"
    t.string "notes"
    t.date "birthdate"
    t.date "hiredate"
    t.string "gender"
  end
end
```

## 2. Data in de database via Rails console

Mezelf toegevoegd.

![](../images/crud-2.png)

## 3. Data inladen via Rails

![](../images/crud-3.png)

## 4. Show employee

Bekijk de data van een employee in detail

![](../images/crud-4.png)

## 5. Edit employee

Om een employee te editen kun je dit formulier gebruiken

![](../images/crud-5.png)

Zoals je ziet is er een nieuwe note toegevoegd.

![](../images/crud-6.png)

## 6. Insert employee

Nieuwe employee toevoegen

![](../images/crud-7.png)

Uitkomst:

![](../images/crud-8.png)

## 7. Delete employee

Employee verwijderen

Pagina om te verwijderen

![](../images/crud-9.png)

Verwijderd:

![](../images/crud-10.png)

# Sectie 11 | Rich Text editor

## 1. Rich Text Editor

Een rich text editor voor de notes van een employee.

![](../images/crud-11.png)

![](../images/crud-12.png)
