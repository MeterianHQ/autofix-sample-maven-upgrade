workflow "New workflow" {
	on = "push"
	resolves = ["build config file changed"]
}

action "build config file changed" {
	uses = "docker://cdssnc/touched-github-action"
	args = "pom.xml"
}

action "meterian scanner" {
	needs = 
	uses = "./action-scan"
	env = { 
		METERIAN_CLIENT_JAR = ".meterian"
	}
	secrets = [ "METERIAN_API_TOKEN" ]
}