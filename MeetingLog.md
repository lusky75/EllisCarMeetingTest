#  Énoncé de l’exercice iOS Swift avec Xcode:

### **Tâche 1 - Bug visuel** : Vous devez corriger les contraintes à partir de UIKit, en programatically. 
    Dans le dossier Screens, vous trouverez le fichier LoginView: il y a un formulaire de login qui a un  label email, un TextField email, un label password et un TextField password, ainsi qu’un bouton  « Se connecter ». Ce qu'on vous demande c'est de corriger les contraintes afin que le formulaire soit correctement posititionné. Vous pouvez constater que le formulaire ne prend pas entièrement la largeur et les différents composants ne sont pas centrés à la vue.

### **Tâche 2 - Vérifier les champs du formulaire** :
Une fonction est appelée lorsqu'on clique sur le bouton « Se connecter ». 
Le champ email prend bien un format d’email et que le champ password a au minimum 6 caractères avec au minimum 1 chiffre et le texte du champ password devra être secure. 
Sinon affiche une popup d'alerte (message de votre choix).

### **Tâche 3 - API service** : 
    Si vous avez encore du temps, améliorez le design de la page Login ou bien vous pouvez appeler le
    service API avec URLSession ou une bibliothèque de votre choix avec Cocoapods.

    URL: https://api.ellis-car.com/users/login
    body: 
    { "id": testiphone@gmail.com, "password": testiphone1234 } 

    Le rendu du travail n'est pas le plus important. Nous attendons de vous un code lisible, compréhensible et une explication de chaque décision que vous prenez lors de cet échange.

Vous avez droit à Google, et de poser des questions si vous êtes bloqués.