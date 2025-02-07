---
[⬅️ Vorige](./ReadMe-Section-27.md) • [🏠 Terug naar Hoofdpagina](../ReadMe.md) • [Volgende ➡️](./ReadMe-Section-29.md)
---

# Sectie 28 | Uploading Files

## 1. Models en gems installeren

```ps
rails generate model employeeinfo firstname:string lastname:string

rails generate model employeecertificate employeeinfo:references

rails active_storage:install
```

## 2. Aanmaken views

Overzicht:

![](../images/upload-1.png)

Nieuw zonder certificaten:

![](../images/upload-2.png)

Nieuw met certificaten

![](../images/upload-3.png)

## 3. Nieuwe employee met certificaten aanmeken

Ingevulde data:

![](../images/upload-4.png)

Lijst met nieuwe waarde

![](../images/upload-5.png)

## 4. Certificaten terug downloaden en bekijken

![](../images/upload-6.png)
