Étape 1 : Source des données

Les données viennent de Kaggle et je les ai téléchargées directement de Kaggle. Ces données sont très pertinentes car elles nous donnent des informations utiles pour calculer la prime d'un assuré. Nous avons également utilisé des données semblables dans le cours.

🔗 Lien vers le jeu de données :
https://www.kaggle.com/datasets/mirichoi0218/insurance?resource=download

Étape 2 : Importation et préparation des données

Pour avoir les données, j'ai tout simplement téléchargé les données directement de Kaggle et j'ai ensuite effectué un read.csv. J'ai enlevé les données extrêmes des BMI et des primes pour minimiser les aberrations.

Étape 3 : Qualité et limites des données

Les données sont de bonne qualité car il n'y a aucune valeur manquante et il y a plus de 1000 observations. Les valeurs extrêmes auraient pu être limitantes, mais ces données ont été enlevées.

La simplicité des données peut être une limite car il y a seulement 7 colonnes. Il peut aussi y avoir des corrélations entre les variables, par exemple quelqu'un de 50 ans a beaucoup plus de chances d'avoir des enfants qu'un individu de 18 ans.

Étape 4 : Variable réponse et objectif

Les modèles vont prédire la prime selon l'âge, le BMI, le sexe, la région, le nombre d'enfants et si l'assuré fume. D'un point de vue actuariel, c'est très important de calculer la prime d'un assuré pour savoir quoi leur charger.

Donc, faire une prédiction de la prime est très utile pour la tarification.

Étape 5 : Choix des modèles

La régression Gamma est un bon choix pour une estimation de coût, surtout dans un cas actuariel. La loi Gamma est fortement asymétrique à droite, comme les primes d'une assurance qui sont rarement élevées, mais qui sont très hautes quand elles le sont.

La Poisson est un peu moins bien adaptée pour une variable aléatoire continue, mais peut quand bien l'approximer.

Les coefficients représentent le poids de chaque variable ; plus le coefficient est élevé, plus la variable est importante. Il faut aussi prendre en compte la valeur de la variable.

Étape 6 : Comparaison des modèles

D'après moi, le modèle Gamma est plus adéquat grâce à son asymétrie à droite. Le modèle Gamma est aussi meilleur car il renvoie des valeurs continues alors que le modèle Poisson ne renvoie que des valeurs discrètes.

D'un point de vue actuariel, si on cherche à modéliser un coût, il est plus judicieux d'utiliser la loi Gamma que la Poisson. La loi Poisson est utilisée pour des fréquences et non des sévérités.

Par exemple, pour un portefeuille, une Poisson pour modéliser le nombre de sinistres, mais une Gamma serait plus pertinente si on cherche à modéliser la sévérité de chaque sinistre.

Étape 7 : Limites et améliorations possibles

Les résultats obtenus sont propres à ce jeu de données et ne peuvent pas être généralisés sans précaution, et le jeu de données ne permet pas de distinguer clairement le nombre de sinistres et le montant de chaque sinistre.

En d'autres mots, le jeu de données peut ne pas être représentatif de toute la population assurée. Certaines informations, comme le BMI, peuvent être imprécises ou mal déclarées et il peut manquer certaines informations importantes.

Pour améliorer le tout, on devrait séparer clairement la fréquence et la sévérité des sinistres et ajouter plus de variables explicatives, notamment des informations médicales.
