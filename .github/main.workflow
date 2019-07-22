workflow "Call meterian scanner workflow" {
	on = "push"
	resolves = ["Call meterian scanner"]
}

action "Call meterian scanner" {
	uses = "MeterianHQ/meterian-github-action@master"
	secrets = [ "METERIAN_API_TOKEN" ]
	args = "{}" ## placeholder for METERIAN_CLI_ARGS
}