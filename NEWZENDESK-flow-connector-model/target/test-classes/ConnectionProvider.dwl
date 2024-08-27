%dw 2.7
import BasicAuthSchema, defineBasicHttpConnectionProvider from com::mulesoft::connectivity::transport::Http

var connectionProperties = {
	baseUri: "https://integrationondemand.zendesk.com",
    username: "muletest@mulesoft.com",
    password: "Dn!5NU7Vtp^0"
}
var basicAuthConnection = defineBasicHttpConnectionProvider<BasicAuthSchema & { baseUri: String }>((schema) -> {
  username: schema.username,
  password: schema.password
}, (schema) -> {
  baseUri: schema.baseUri
})

var connection = basicAuthConnection.connect(connectionProperties)

