// Bitcoin은 어떤 특성(object property)을 갖고 있나요?
// Curve는 어떤 특성(object property)을 갖고 있나요?
// Ethereum은 어떤 특성(object property)을 갖고 있나요?
// Golem은 어떤 특성(object property)을 갖고 있나요?
// Linkcoin은 어떤 특성(object property)을 갖고 있나요?
// Daicoin은 어떤 특성(object property)을 갖고 있나요?
// Everypedia는 어떤 특성(object property)을 갖고 있나요?
// Meta는 어떤 특성(object property)을 갖고 있나요?
// Movieblock은 어떤 특성(object property)을 갖고 있나요?
// Observer은 어떤 특성(object property)을 갖고 있나요?
// Sia는 어떤 특성(object property)을 갖고 있나요?
// Contents는(individual) 어떤 코인을 얻을 때(object property) 필요한가요?
// Decentralized-financing tech(class)안에는 어떤 기술(individual)들이 있나요?
// De-fibased 정보로(class) 얻을 수 있는 코인의 종류는(individual) 무엇이 있나요?
// Minning based 정보로(class) 얻을 수 있는 코인의 종류는(individual) 무엇이 있나요?
// Used based(class)안에는 어떤 종류(sub class)들이 있나요?
// Meta는 어떤 특성(object property)을 갖고 있나요?
// USDCCoin은 어떤 특성(object property)을 갖고 있나요?
// USDTCoin은 어떤 특성(object property)을 갖고 있나요?
// Steam은 어떤 특성(object property)을 갖고 있나요?


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