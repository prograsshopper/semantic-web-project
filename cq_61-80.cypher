MATCH (n1)-[r]->(n2)
WHERE n1.`uri` CONTAINS 'BitCoin'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` CONTAINS 'Curve'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` ENDS WITH 'Ethereum'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` ENDS WITH 'Golem'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` ENDS WITH 'LinkCoin'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` ENDS WITH 'DaiCoin'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` ENDS WITH 'Everypedia'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` ENDS WITH 'Meta'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` CONTAINS 'Movie'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` ENDS WITH 'Observer'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` ENDS WITH 'Sia'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'Contents' AND exists(n1.`ns0__crypto.owlhasoffering`)
RETURN n1

MATCH (n1)-[r:rdfs__subClassOf]->(n2)
WHERE n2.`uri` CONTAINS 'Decentralized-FinancingTech'
RETURN n1

MATCH (n1)-[r]->(n2)
WHERE  n2.`uri` CONTAINS 'De-FiBased'
RETURN n1, r, n2

MATCH (n1:`ns0__crypto.owlMiningBased`)-[r]->(n2)
WHERE exists(n2.`ns0__crypto.owlhasoffering`)
RETURN n2

MATCH (n1)-[r:rdfs__subClassOf]->(n2) 
WHERE n2.`uri` CONTAINS 'UserBased'
RETURN n1

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` ENDS WITH 'Meta'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` ENDS WITH 'USDTCoin'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` ENDS WITH 'USDCCoin'
RETURN r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` ENDS WITH 'Steam'
RETURN r, n2