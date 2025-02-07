---
[⬅️ Vorige](./ReadMe-Section-20.md) • [🏠 Terug naar Hoofdpagina](../ReadMe.md) • [Volgende ➡️](./ReadMe-Section-24.md)
---

# Section 21

# 1. Aanmaken van de tables en relaties:

```ps
rails generate model allowancetype name:string percentage:integer

rails generate model employeesalary salary:integer netallowanceamount:integer netsalary:integer

rails generate model employeeallowance

rails generate migration add_allowancetype_to_employeeallowance allowancetype:references

rails generate migration add_employeesalary_to_employeeallowance employeesalary:references

rails db:migrate
```

# 2. Seed data

```rb
unless Allowancetype.blank?
  Allowancetype.create!(name: "HRA", percentage: 10)
  Allowancetype.create!(name: "CA", percentage: 15)
  Allowancetype.create!(name: "MA", percentage: 20)
  Allowancetype.create!(name: "PA", percentage: 25)
  Allowancetype.create!(name: "DA", percentage: 30)
  Allowancetype.create!(name: "EPF", percentage: 35)
  Allowancetype.create!(name: "FA", percentage: 40)
end
```

# 3. Controller en view

Layout voor de radio buttons:

![](../images/input-1.png)

Salary berekent bij selecteren radio button

![](../images/input-2.png)

De data wordt ook opgeslagen in de db.

![](../images/input-3.png)

# Sectie 22

## 1. Layout voor de checkboxes

![](../images/input-4.png)

## 2. Berekening voor de waardes met checkboxes percentage

![](../images/input-5.png)

## 3. Data opgeslagen in de database

![](../images/input-6.png)

# Sectie 23

## 1. Layout voor de views voor ListBoxes

![](../images/input-7.png)

## 2. Items links of rechts plaatsen met berekening

![](../images/input-8.png)

## 3. Data opgeslagen in de database

![](../images/input-9.png)
