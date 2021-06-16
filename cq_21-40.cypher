// Anker의 시가총액(market value)는 얼마입니까?
// Ethereum의 발행량은 얼마입니까?
// PublicOffering된 코인에는 어떤 코인들이 있습니까?
// Limited offering되는 코인에는 어떤 것들이 있습니까?
// Staking을 통해 얻을 수 있는 코인에는 어떤 것이 있습니까?
// 트론의 offering(hasoffering) 양은 얼마입니까?(limited입니까?)
// USDTcoin은 무엇을 대가로 얻을 수 있습니까?
// Theta는 무엇을 대가로 얻을 수 있습니까?
// CLOs를 제공하고 받을 수 있는 코인은 무엇이 있습니까?
// 발행량이 10,0000,000인 코인은 무엇입니까?
// Golem의 시가총액은 얼마입니까?
// 발행량이 가장 작은 코인은 무엇입니까?
// 발행량이 가장 큰 코인은 무엇입니까?
// 시가총액이 가장 작은 코인은 무엇입니까?
// 시가총액이 가장 큰 코인은 무엇입니까?
// Uniswap은 offering양은 제한되어 있습니까?
// StorageCoin은 어떤 기술이 사용되었습니까?
// DistributedLedger이 이용된 코인은 무엇입니까?
// Movieblock은 어떻게 얻을 수 있습니까?
// NodeVerification이 이용된 코인은 무엇입니까?
// 시가총액 상위 5개중 발행량이 제일 적은 코인은 무엇입니까?
// Litecoin을 얻으려면 무엇을 제공해야합니까?

MATCH (n)
WHERE n.`uri` CONTAINS 'Anker'
return n.`ns0__crypto.owlhasMarketValue`

MATCH (n)
WHERE n.`uri` ENDS WITH 'Ethereum'
return n.`ns0__crypto.owlhasIssued`

MATCH (n:`ns0__crypto.owlPublicOffering`)
return n

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` CONTAINS 'Staking'
return n2

MATCH (n)
WHERE n.`uri` CONTAINS 'Tron'
return n.`ns0__crypto.owlhasoffering`

MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'USDT'
return r

MATCH (n1)-[r]->(n2)
WHERE n2.`uri` ENDS WITH 'Theta'
return r

MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'CLO'
return n1

MATCH (n)
WHERE n.`ns0__crypto.owlhasIssued`=100000000
return n

MATCH (n)
WHERE n.`uri` CONTAINS 'Golem'
return n.`ns0__crypto.owlhasMarketValue`

MATCH (n)
WITH max(n.`ns0__crypto.owlhasIssued`) as max_issue
MATCH (n)
WHERE n.`ns0__crypto.owlhasIssued` = max_issue
return n

MATCH (n)
WITH min(n.`ns0__crypto.owlhasIssued`) as min_issue
MATCH (n)
WHERE n.`ns0__crypto.owlhasIssued` = min_issue
return n

MATCH (n)
WHERE n.`uri` CONTAINS 'Uniswap'
return n.`ns0__crypto.owlhasoffering`

MATCH (n1)-[r]-(n2)
WHERE n2.`uri` CONTAINS 'StorageCoin'
return n1

// MATCH (n1:`ns0__crypto.owlDistributedLedgerTech`)-[r]->(n2)
// return n1, r, n2

MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'Movieblock'
RETURN n1, r, n2

// MATCH (n1:`ns0__crypto.owlNodeVerificationTech`)-[r]->(n2)
// return n1, r, n2

MATCH (n)
WITH n ORDER BY n.`ns0__crypto.owlhasMarketValue` DESC LIMIT 5
WHERE exists(n.`ns0__crypto.owlhasoffering`)
RETURN n
ORDER BY n.`ns0__crypto.owlhasIssued` DESC
LIMIT 1

MATCH (n1)-[r]->(n2)
WHERE exists(n2.`ns0__crypto.owlhasoffering`) AND n2.`uri` CONTAINS 'LiteCoin'
RETURN r