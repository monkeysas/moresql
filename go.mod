module github.com/zph/moresql

go 1.13

require (
	github.com/Sirupsen/logrus v0.10.1-0.20160601113210-f3cfb454f4c2
	github.com/heroku/rollrus v0.0.0-20160824233412-d20e35b8f913
	github.com/jmoiron/sqlx v0.0.0-20161209024531-cac998c4f095
	github.com/lib/pq v1.10.7
	github.com/orcaman/concurrent-map v0.0.0-20161205115927-cafb9879460a
	github.com/paulbellamy/ratecounter v0.1.1-0.20170206102657-348ad3bf08f0
	github.com/pkg/errors v0.8.1-0.20170227220037-bfd5150e4e41
	github.com/rwynn/gtm v0.0.0-20170315180800-22eec6961032
	github.com/serialx/hashring v0.0.0-20161115152012-8d1c83b82963
	github.com/stvp/roll v0.0.0-20170116223130-ca202b60b260
	github.com/thejerf/suture v2.0.0+incompatible
	github.com/tidwall/gjson v0.0.0-20170526023918-c784c417818f
	github.com/tidwall/match v1.0.1 // indirect
	golang.org/x/sys v0.0.0-20161214190518-d75a52659825
	gopkg.in/check.v1 v1.0.0-20161208181325-20d25e280405
	gopkg.in/mgo.v2 v2.0.0-20160818020120-3f83fa500528
	gopkg.in/yaml.v2 v2.0.0-20160928153709-a5b47d31c556
)

replace github.com/rwynn/gtm v0.0.0-20170315180800-22eec6961032 => github.com/monkeysas/gtm v0.0.0-20200916182116-ede180a06b88

