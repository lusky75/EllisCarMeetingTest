# EllisCarMeetingTest
Exercice d'entretien à résoudre en Swift UIKit - Ellis-Car 

#  Énoncé de l’exercice iOS Swift avec Xcode:

### **Tâche 1 - Bug visuel** : Vous devez corriger les contraintes à partir de UIKit, en programatically. 
    Dans le dossier Screens, vous trouverez le fichier LoginView: 
    il y a un formulaire de login qui a un  label email, un TextField email, un label password et un TextField password, 
    ainsi qu’un bouton  « Se connecter ». Ce qu'on vous demande c'est de corriger les contraintes afin que le formulaire soit correctement posititionné. 
    Vous pouvez constater que le formulaire ne prend pas entièrement la largeur et les différents composants ne sont pas centrés à la vue.

Résultat attendu![résultat_attendu](https://user-images.githubusercontent.com/47739262/174461139-f2871a95-0692-4744-95af-3fc1f190dfb6.png)


### **Tâche 2 - Vérifier les champs du formulaire** :
    Une fonction est appelée lorsqu'on clique sur le bouton « Se connecter » et elle redirige vers la page Home. 
    Vérifiez que le champ email prend bien un format d’email et que le champ password a au minimum 6 caractères dont 1 chiffe.
    exemple: test@hotmail.fr (ok), test@hotmail ou testhotmail.fr (pas ok).

    Sinon affiche une popup d'alerte (message de votre choix).

### **Tâche 3 - API service** : 
    Si vous avez encore du temps, vous pouvez appeler le
    service API avec URLSession ou une bibliothèque de votre choix à télécharger sur Cocoapods.

    URL: https://api.ellis-car.com/users/login
    body: 
    { "id": testiphone@gmail.com, "password": testiphone1234 } 

    Le rendu du travail n'est pas le plus important. Nous attendons de vous un code lisible, compréhensible et une explication de chaque décision que vous prenez lors de cet échange.

Vous avez droit à Google, et de poser des questions si vous êtes bloqués.
