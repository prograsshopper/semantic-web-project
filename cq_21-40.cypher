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

