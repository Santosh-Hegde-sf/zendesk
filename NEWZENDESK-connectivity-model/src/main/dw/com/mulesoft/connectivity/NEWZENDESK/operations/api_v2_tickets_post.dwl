%dw 2.7

import Result, success from com::mulesoft::connectivity::Model

import TicketCreateRequest, TicketResponse from com::mulesoft::connectivity::NEWZENDESK::types::Types

import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http

import serializeCookies, serializeHeaders, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

type api_v2_tickets_post_Type = {
  "201": TicketResponse,
  request: HttpRequestType<{| query: Object, headers: Object, cookie: Object, body?: TicketCreateRequest |}>,
  response: TicketResponse
}

var api_v2_tickets_post = {
  name: "CreateTicket",
  displayName: "CreateTicket",
  executor: (parameter: api_v2_tickets_post_Type.request, connection: HttpConnection): Result<HttpResponse<api_v2_tickets_post_Type.response>, HttpResponse<{}>> -> do {
      var query = parameter.query default {} withSerializationConfig {}
      var headers = serializeHeaders(parameter.headers default {}, {})
      var cookie = serializeCookies(parameter.cookie default {}, {})
      ---
      success(connection({
        method: "POST",
        path: "/api/v2/tickets",
        queryParams: query,
        headers: headers,
        cookie: cookie,
        (body: parameter.body) if (parameter.body?)
      }) as HttpResponse<api_v2_tickets_post_Type.response>)
    }
}

