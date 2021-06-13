// CQ
// 1. Bitcoin은 무엇에 대한 보상(reward)으로 얻을 수 있습니까? 
MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'BitCoin'
return n


// 2. Sia는 무엇에 대한 보상(reward)으로 얻을 수 있습니까? 
MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'Sia'
return n1
// 3. Golem은 무엇데 대한 보상(reward)으로 얻을 수 있습니까? storageBased
MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'Golem'
return n1

// Meta는 무엇에 대한 보상(reward)으로 얻을 수 있습니까?
MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'Meta'
return n1
// Civic은 무엇에 대한 보상(reward)로 얻을 수 있습니까?
MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'Civic'
return n1
// Theta는 무엇에 대한 보상(reward)로 얻을 수 있습니까?
MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'Theta'
return n1
// Tron은 무엇에 대한 보상(reward)로 얻을 수 있습니까?
MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'Tron'
return n1
// Observer은 무엇에 대한 보상(reward)로 얻을 수 있습니까?
MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS ''
return n1
// Steam은 무엇에 대한 보상(reward)로 얻을 수 있습니까?
MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'Steam'
return n1
// Linkcoin은 무엇에 대한 보상(reward)로 얻을 수 있습니까?
MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'LinkCoin'
return n1
// Uniswap은 무엇에 대한 보상(reward)로 얻을 수 있습니까?
MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'Uniswap'
return n1
// Daicoin은 무엇에 대한 보상(reward)로 얻을 수 있습니까?
MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'DaiCoin'
return n1
// Blockchain tech에는 어떤 Tech가 존재하는가?
MATCH (p)-[r:rdfs__subClassOf]->(n) 
WHERE n.`uri` CONTAINS 'BlockchainTech'
RETURN p

// Decentralized Tech에는 어떤 Tech가(subclass) 존재하는가?
MATCH (p)-[r:rdfs__subClassOf]->(n) 
WHERE n.`uri` CONTAINS 'DecentralizedTech'
RETURN p

// Decentralized-Rulling Tech에는 어떤 Tech가(subclass) 존재하는가?
MATCH (p)-[r:rdfs__subClassOf]->(n) 
WHERE n.`uri` CONTAINS 'Decentralized-Ruling'
RETURN p

// Decentralized-Financing Tech에는 어떤 Tech가(subclass) 존재하는가?
MATCH (p)-[r:rdfs__subClassOf]->(n) 
WHERE n.`uri` CONTAINS 'Decentralized-Financing'
RETURN p

// Loan based의 information을 제공하고 얻을 수 있는 코인은 무엇입니까?
MATCH (n1:`ns0__crypto.owlLoanBased`)-[r:`ns0__crypto.owlisNeededInfomationFor`]->(n2) 
RETURN n2

// Mining based의 information을 제공하고 얻을 수 있는 코인은 무엇입니까?
MATCH (n1:`ns0__crypto.owlMiningBased`)-[r:`ns0__crypto.owlisNeededInfomationFor`]->(n2) 
RETURN n2

// User의 RealAct information에는 어떤 것(subclass)들이 있습니까?
MATCH (p)-[r:rdfs__subClassOf]->(n) 
WHERE n.uri CONTAINS 'UserRealActBased'
RETURN p

// Contents based의 information을 제공하고 얻을 수 있는 코인은 무엇입니까?
MATCH (n1:`ns0__crypto.owlContentsBased`)-[r:`ns0__crypto.owlisNeededInfomationFor`]->(n2) 
RETURN n2

