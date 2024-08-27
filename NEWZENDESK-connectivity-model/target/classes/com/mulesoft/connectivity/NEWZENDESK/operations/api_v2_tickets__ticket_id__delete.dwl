%dw 2.7

import Result, success from com::mulesoft::connectivity::Model

import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http

import serializeCookies, serializeHeaders, serializeUriParams, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

type api_v2_tickets__ticket_id__delete_Type = {
  "204": Any,
  request: HttpRequestType<{| uri: {| ticket_id: Number <~ {format: "integer"} |}, query: Object, headers: Object, cookie: Object |}>,
  response: Any
}

var api_v2_tickets__ticket_id__delete = {
  name: "DeleteTicket",
  displayName: "DeleteTicket",
  executor: (parameter: api_v2_tickets__ticket_id__delete_Type.request, connection: HttpConnection): Result<HttpResponse<api_v2_tickets__ticket_id__delete_Type.response>, HttpResponse<Any>> -> do {
      var uri = serializeUriParams(parameter.uri, {})
      var query = parameter.query default {} withSerializationConfig {}
      var headers = serializeHeaders(parameter.headers default {}, {})
      var cookie = serializeCookies(parameter.cookie default {}, {})
      ---
      success(connection({
        method: "DELETE",
        path: "/api/v2/tickets/$(uri.ticket_id)",
        queryParams: query,
        headers: headers,
        cookie: cookie,
        (body: parameter.body) if (parameter.body?)
      }) as HttpResponse<api_v2_tickets__ticket_id__delete_Type.response>)
    }
}

