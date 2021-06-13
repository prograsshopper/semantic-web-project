// init
CALL n10s.graphconfig.init();
// load data
CALL n10s.rdf.import.fetch("https://raw.githubusercontent.com/prograsshopper/Neo4j-with-flask/main/sample/crypto6.owl","Turtle");