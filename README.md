Étape 1:
Les données viennent de Kaggle et je les ai téléchargées directement de Kaggle. Ces données sont très pertinentes car elles nous donnent des informations utiles pour calculer la prime d'un assuré. Nous avous également utilisé des données semblamble dans le cour.
https://www.kaggle.com/datasets/mirichoi0218/insurance?resource=download

Étape 2:
Pour avoir les données, j'ai tout simplement téléchargé les données directement de Kaggle et j'ai ensuite effectuer un read.csv. J'ai enlever les données extrême des BMI et des primes pour minimiser les abérations.

Étape 3:
Les données sont de bonne qualité car il n'y a aucne valeur manquante et il y a plus de 1000 observation. Les valeurs extrème aurait pu être limitante mais ces données on été enlevé. La simplicité des données peu être une limite car le il y seulement 7 colonne. Il peu aussi avoir des corrélations entre les variables, par exemple quelqu'un de 50 a beaucoup plus de chance d'avoir des enfant qu'un individu de 18 ans. 

Étape 4:
Les modèles vont prédire la prime selon l'age, le BMI, le sexe, la region, le nombre d'enfant et Si l'assuré fume. D'un point de vue actuarielle, c'est très important de calculer la prime d'un assuré pour savoir quoi leur chargé. Donc faire une prédiction de la prime est très utile pour la tarification.

Étape 5:
La regression gamma est un bon choix pour un estimation de cout, surtout dans un cas actuarielle. La loi gamma est fortement assymétrique à droite comme les primes d'une assurance qui sont rarement élevée mais qui sont très haute quand elle le sont. La poisson est un peu moins bien adapter pour une variable aléatoire continue mais peu quand bien l'approximer. Les coeficients représentent le poid de chaque variable, plus le coeficient est élevé plus la variable est importante. Il faut aussi prendre en compte la valeur de la variable. Par exemple, un coeficient de grandeur va etre plus élevé si on mesure en mètre qu'en centimètre.

Étape 6:
D'après moi le modele Gamma est plus adéquat grâce a son assymétrie à droite. Le modele Gamma est aussi meilleur car il renvoie des valeur continue alors que le modele poisson ne renvoit que des valeur discrète. D'un point de vue actuarielle si on cherche a modeliser un cout, il est plus judicieux d'utiliser la loi gamma que la poisson. La loi poisson est utilisé pour des fréquences et non des sévéritées. Par exemple, pour un portefeuille, une poisson pour modeliser le nombre de sinistre mais une gamma serait plus pertinente si on cherche a modeliser la severité de chaque sinitre.

Étape 7:
Les résultats obtenus sont propres à ce jeu de données et ne peuvent pas être généralisés sans précaution et le jeu de données ne permet pas de distinguer clairement le nombre de sinistres et le montant de chaque sinistre. En d'autre mot , Le jeu de données peut ne pas être représentatif de toute la population assurée. Certaines informations, comme le BMI, peuvent être imprécises ou mal déclarées et il peu manquer certaine information importante. Pour améliorer le tout on devrait, Séparer clairement la fréquence et la sévérité des sinistres et ajouter plus de variables explicatives, notamment des informations médicales.







