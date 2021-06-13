MATCH (n)
WHERE n.`ns0__crypto.owlhasoffering`='unlimited'
RETURN n

MATCH (n)
WHERE n.`ns0__crypto.owlhasoffering`='limited'
RETURN COUNT(n)

MATCH (n)
WITH max(n.`ns0__crypto.owlhasMarketValue`) as max_issue
MATCH (n)
WHERE n.`ns0__crypto.owlhasMarketValue` = max_issue
return n

MATCH (n)
return sum(n.`ns0__crypto.owlhasIssued`)

MATCH (n1)-->(n2)
WHERE n1.`uri` CONTAINS 'Staking' AND exists(n2.`ns0__crypto.owlhasoffering`)
RETURN n1,n2

MATCH (n)
WHERE n.`ns0__crypto.owlhasoffering`='limited'
RETURN n
ORDER BY n.`ns0__crypto.owlhasMarketValue` DESC
LIMIT 3

MATCH (n)
WHERE exists(n.`ns0__crypto.owlhasIssued`)
RETURN n
ORDER BY n.`ns0__crypto.owlhasIssued` ASC
LIMIT 5

MATCH (n1:`ns0__crypto.owlLoanBased`)-[r:`ns0__crypto.owlisNeededInfomationFor`]->(n2)
RETURN n1,r, n2

MATCH (n1)-[r]->(n2)
WHERE n1.`uri` CONTAINS 'CLOs' AND exists(n2.`ns0__crypto.owlhasoffering`)
RETURN n2

MATCH (n1)-[r:`ns0__crypto.owlhasInformationAbout`]->(n2)
WHERE exists(n1.`ns0__crypto.owlhasoffering`)
RETURN n1
ORDER BY n1.`ns0__crypto.owlhasIssued` DESC
LIMIT 1

MATCH (n) 
WHERE n.`uri` CONTAINS 'Ethereum'
RETURN count(n)

MATCH (n1)-[r:rdfs__subClassOf]->(n2) 
WHERE n2.`uri` CONTAINS 'UserBased'
RETURN n1

MATCH (n) 
WHERE n.`uri` CONTAINS 'Bit'
RETURN sum(n.`ns0__crypto.owlhasMarketValue`)

MATCH (n1:`ns0__crypto.owlUploadBased`)-[r]->(n2)
WHERE exists(n2.`ns0__crypto.owlhasoffering`)
RETURN n2
ORDER BY n1.`ns0__crypto.owlhasIssued` DESC
LIMIT 1

MATCH (n)
WHERE n.`uri` CONTAINS 'Dai'
return n

MATCH (n:`ns0__crypto.owlPrivateOffering`)
RETURN n

MATCH (n1:`ns0__crypto.owlMiningBased`)-[r]-(n2)
WHERE exists(n2.`ns0__crypto.owlhasoffering`)
RETURN n2
ORDER BY n1.`ns0__crypto.owlhasIssued` ASC
LIMIT 1

MATCH (n1)-[r:rdfs__subClassOf]->(n2)
WHERE n2.`uri` ENDS WITH 'DecentralizedTech'
RETURN n1, r, n2

MATCH (n1)-[r:`ns0__crypto.owlisNeededInfomationFor`]->(n2)
WHERE exists(n2.`ns0__crypto.owlhasoffering`)
RETURN count(n2)

MATCH (n1)-[r]->(n2)
WHERE n2.`uri` CONTAINS 'Civic'
return n1, r