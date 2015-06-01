promisify = require("bluebird").promisifyAll
models = require("./models")

# Seed data for the DB

exampleUser =
  username: "JuanCarlos" #an example person
  password: "aPassword"
  authorizations: [
    { app: "capi2231", scopes: "all" }
  ]

exampleApp =
  clientId: "capi2231" #another app that integrates with Lepocamon
  clientSecret: "secret123"
  name: "Capituchi"
  redirectUri: "/auth/lepocamon/redirect"
  scopes: "all"

models.User.create exampleUser, =>
  console.log "User created!"

models.App.create exampleApp, =>
  console.log "App created!"