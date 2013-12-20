Utilisation de la boite
=======================

Pour simuler notre comportement, une boite globale est disponible en chargeant
la librairie. Il suffit de connecter la boite en entrée et sortie du root pour
avoir un comportement fonctionnel.

De plus des boites de test ont été inséré dans la boite "Global Comportement with test"
pour permettre une simulation plus rapide et simple du comportement
Il est à noter que d'autres boites peuvent être rajouter pour tester différents
stimuli.

Notes
-----
Afin de revenir dans la position initiale, nous nous sommes servis de
l'animation *StandUp*. Lorsque nous l'avons utilisée sur le robot, le temps
qu'elle mettait était négligeable, en revanche, il semble que lorsqu'elle est
utilisée à bord du simulateur, elle mette un temps conséquent à s'exécuter.
Comme nous inhibons les nouvelles émotions tant que les moteurs n'ont pas été
libérés, il devient donc parfois nécessaire d'attendre longtemps entre deux
générations de stimulis pour réellement déclencher des émotions.

Ce problème est particulièrement gênant en ce qui concerne le soulagement,
celui-ci sera généralement exprimé après l'animation correspondante à la peur,
or elle n'aura pas le temps de se terminer, on verra donc simplement apparaître
un petit relief dans l'interface *Robot view* 