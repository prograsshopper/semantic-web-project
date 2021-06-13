// 1.  hasoffering이 limited인 코인의 종류는 무엇무엇이 있습니까?
// 2. 온톨로지 내에서 hasoffering이 unlimited인 코인의 갯수는 몇개입니까? 
// 3. 온톨로지 내에서 시가 총액이 가장 큰 코인은 무엇입니까?
// 4. 온톨로지내 코인의 발행량의 총 합은 얼마입니까?
// 5. Staking과 연관이 있는 코인의 종류는 무엇이 있습니까?
// 6. hasoffering이 limited인 코인중 시가총액으로 상위 3개 코인을 알려주세요
// 7.  온톨로지 내에서 코인의 발행량이 적은 하위 5개 코인을 알려주세요
// 8. Loanbased이면서 정보를 통해 얻을 수 있는 코인은 무엇입니까?
// 9. CLOs와 연관된 코인들의 종류를 알려주세요
// 10. hasInformationAbout으로 얻는 코인중 발행량이 가장 많은 것은 무엇입니까?
// 11. 이더리움과 연관된 이름을 사용하는 코인의 종류는 몇개입니까
// 12. Userbased의 하위 방식들은 무엇무엇이 있습니까?
// 13. Bitcoin과 연관된 이름을 사용하는 코인들의 시가총액의 합은 얼마입니까?
// 4. upload를 통해 얻는 코인중 가장 발행량이 높은 코인은 무엇입니까?
// 15. DaiCoin의 hasoffering, hasIssued, hasMarketValue를 알고 싶습니다.
// 16. 온톨로지 내에 privateoffering에 속하는 코인이 있습니까?
// 17. MiningBased로 얻는 코인중 발행량이 가장 적은 코인은 무엇입니까?
// 18. 탈중앙화기술의 종류를 알고 싶습니다.
// 19. 정보를 제공하고 얻을 수 있는 코인의 가짓수가 궁금합니다.
// 20. Civic 코인을 얻는 방법이 알고 싶습니다.


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