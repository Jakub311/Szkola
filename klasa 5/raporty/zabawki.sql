1. SELECT avg(cena),adres_sklepu
    FROM zabawka_informacje
        INNER JOIN sklep_magazyn ON zabawka_informacje.id_zabawki=sklep_magazyn.id_zabawki
        INNER JOIN sklep_informacje ON sklep_magazyn.id_sklepu=sklep_informacje.id_sklepu
        GROUP BY sklep_informacje.id_sklepu;

2. SELECT adres_sklepu,zabawka,stan_magazynu
    FROM zabawka_informacje
        INNER JOIN sklep_magazyn ON zabawka_informacje.id_zabawki=sklep_magazyn.id_zabawki
        INNER JOIN sklep_informacje ON sklep_magazyn.id_sklepu=sklep_informacje.id_sklepu;