%dw 2.7

import Result, success from com::mulesoft::connectivity::Model

import TicketsResponse from com::mulesoft::connectivity::NEWZENDESK::types::Types

import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http

import serializeCookies, serializeHeaders, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

type api_v2_tickets_get_Type = {
  "200": TicketsResponse,
  request: HttpRequestType<{| query: { external_id?: String }, headers: Object, cookie: Object |}>,
  response: TicketsResponse
}

var api_v2_tickets_get = {
  name: "ListTickets",
  displayName: "ListTickets",
  executor: (parameter: api_v2_tickets_get_Type.request, connection: HttpConnection): Result<HttpResponse<api_v2_tickets_get_Type.response>, HttpResponse<Any>> -> do {
      var query = parameter.query default {} withSerializationConfig {}
      var headers = serializeHeaders(parameter.headers default {}, {})
      var cookie = serializeCookies(parameter.cookie default {}, {})
      ---
      success(connection({
        method: "GET",
        path: "/api/v2/tickets",
        queryParams: query,
        headers: headers,
        cookie: cookie,
        (body: parameter.body) if (parameter.body?)
      }) as HttpResponse<api_v2_tickets_get_Type.response>)
    }
}

