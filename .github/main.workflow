workflow "Call meterian scanner workflow" {
	on = "push"
	resolves = ["Call meterian scanner"]
}

action "Call meterian scanner" {
	uses = "./../meterian-scanner-action/action-scan"
	#uses = "neomatrix369/meterian-scanner-action@master"
	env = { 
		METERIAN_CLIENT_JAR = ".meterian"
	}
	secrets = [ "METERIAN_API_TOKEN" ]
	args = "{}" ## placeholder for METERIAN_ARGS
}