# MAGAPC
MAGAPC is a fully‑structured **MySQL/MariaDB** relational database designed to manage operations for a multi‑store computer and IT shop.

## 🚀 Features
- Multi-store architecture
- Employee management with hierarchy
- Product catalog and PC builds
- Stock tracking per store
- Sales and order details
- Supplier deliveries and invoice items
- Promotions system
- Customer loyalty system
- Complaint management

## 🧱 Tech Stack
- MySQL / MariaDB
- phpMyAdmin
- utf8mb4 charset

## 🏗️ Database Structure
Main tables include: angajati, clienti, magazine, produse, componente, stocuri, vanzari, detalii_vanzare, aprovizionari, detalii_aprovizionare, promotii, produs_promotie, contestatii.

## 🔗 ER Overview
magazine (1) < angajati
magazine (1) < stocuri > (M) produse
vanzari (1) < detalii_vanzare > (M) produse
aprovizionari (1) < detalii_aprovizionare > (M) produse
produse (M) < componente > (M) produse
produse (M) < produs_promotie > (M) promotii
vanzari (1) < contestatii
clienti (1) < vanzari
angajati (1) < vanzari

## 🛠️ How to Run
1. Create database:
```
CREATE DATABASE magapc2 CHARACTER SET utf8mb4;
```
2. Import SQL:
```
mysql -u root -p magapc2 < magapc2.sql
```

## 📝 Example Queries
```
SELECT p.denumire, SUM(dv.cantitate) AS qtty
FROM detalii_vanzare dv
JOIN produse p ON p.id_produs = dv.id_produs
GROUP BY p.id_produs ORDER BY qty DESC;
```

## 🎉 Highlights
- Over 100+ real looking sales
- Full stock management
- Component-based PC builds
- Realistic loyalty system

## 📄 License
Academic project
