# Bienvenue sur mon super projet Freedoc
------

![Freedoc](https://static1.squarespace.com/static/54d50ceee4b05797b34869cf/t/5a89a6860d9297112df2299b/1518970507386/bigstock-Doctor-physician--Isolated-ov-33908342.jpg)

Voici quelques commandes qui te permettront de tester le modèle de données :

### Récupérer tous docteurs inscrits sur Freedoc
```
tp Doctor.all
```

### Récupérer tous les patients inscrits sur Freedoc
```
tp Patient.all
```

### Récupérer toutes les RDV d'un patient au hasard
```
tp Patient.order("RANDOM()").first.appointments
```
### Récupérer toutes les RDV d'un docteur au hasard
```
tp Doctor.order("RANDOM()").first.appointments
```


------
Fait avec :hearts: par @Fred
