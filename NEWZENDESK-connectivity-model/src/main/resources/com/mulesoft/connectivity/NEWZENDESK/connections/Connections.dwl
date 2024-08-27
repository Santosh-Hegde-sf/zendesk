%dw 2.7

import TestConnectionElement from com::mulesoft::connectivity::Metadata

import BasicAuthSchema, defineBasicHttpConnectionProvider from com::mulesoft::connectivity::transport::Http

@TestConnectionElement
var test = {
  validate: (connection) -> {
    isValid: connection({
      method: "GET",
      path: "/api/lotus/assignables/groups.json",
      queryParams: {},
      headers: {},
      cookie: {}
    }).status == 200
  }
}

var basicAuthConnection = defineBasicHttpConnectionProvider<BasicAuthSchema & { baseUri: String }>((schema) -> {
  username: schema.username,
  password: schema.password
}, (schema) -> {
  baseUri: schema.baseUri
})

