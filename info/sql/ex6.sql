6)
    v1) select Nom_f from Fournisseurs where No_f in (select No_f from Livraisons where No_p in (select No_p from Produits where Couleur="Rouge")) and Ville in("Lausanne", "Geneve");
    v2) select distinct Nom_f from Fournisseurs f, Usines u, Produits p where Couleur="Rouge" and u.Ville in ("Lausanne", "Geneve");
7) select No_p from Usines u, Fournisseurs f, Livraisons l where f.Ville=u.Ville and l.No_u=u.No_u and f.No_f=l.No_f;
8) 
select No_p

from 
	Usines u,
	Livraisons l,
    Fournisseurs f

where 
	l.No_f = f.No_f and
    l.No_u = u.No_u and
    f.Ville = "Lausanne" and
    u.Ville = "Lausanne";

9) delete from Produits where Couleur="Rouge";

10) update Fournisseurs set Ville="Geneve" where No_f=1;

11)
select distinct l.No_u

from
	Usines u,
    Livraisons l,
    Fournisseurs f

where
	f.No_f = l.No_f and
    u.No_u = l.No_u and
    u.Ville <> f.Ville;

12)
select distinct No_f

from
	Livraisons

where
    No_u = 1 and
    No_f in (
        select No_f from Livraisons where No_u = 2
    );

13)
select distinct No_u

from
	Livraisons
    
where
    No_p in (
        select No_p from Livraisons where No_f=3
    );

14)
select No_p 

from Produits 

where
Poids = (select min(Poids)from Produits);

15)
select No_u

from Usines

where No_u not in

(select l.No_u

from 
	Livraisons l,
    Fournisseurs f,
    Produits p

where
 	l.No_p = p.No_p and
 	l.No_f = f.No_f and
	Couleur = "Rouge" and
    Ville = "Lausanne");