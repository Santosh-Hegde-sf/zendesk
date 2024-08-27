%dw 2.7

import Result, success from com::mulesoft::connectivity::Model

import TicketUpdateRequest, TicketUpdateResponse from com::mulesoft::connectivity::NEWZENDESK::types::Types

import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http

import serializeCookies, serializeHeaders, serializeUriParams, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization


//1. Union is working or not
//2. Check ObjectFields works on depth>2
//3. Feasbility to add 5 types(uri,query etc) in the CCM if 2 is not working.

type api_v2_tickets__ticket_id__put_Type = {
  "200": TicketUpdateResponse,
  request: HttpRequestType<{| uri: {| ticket_id: Number <~ {format: "integer"} |}, query: Object, headers: Object, cookie: Object, body?: TicketUpdateRequest |}>,
  response: TicketUpdateResponse
}

var api_v2_tickets__ticket_id__put = {
  name: "UpdateTicket",
  displayName: "UpdateTicket",
  executor: (parameter: api_v2_tickets__ticket_id__put_Type.request, connection: HttpConnection): Result<HttpResponse<api_v2_tickets__ticket_id__put_Type.response>, HttpResponse<{}>> -> do {
      var uri = serializeUriParams(parameter.uri, {})
      var query = parameter.query default {} withSerializationConfig {}
      var headers = serializeHeaders(parameter.headers default {}, {})
      var cookie = serializeCookies(parameter.cookie default {}, {})
      ---
      success(connection({
        method: "PUT",
        path: "/api/v2/tickets/$(uri.ticket_id as String)",
        queryParams: query,
        headers: headers,
        cookie: cookie,
        (body: parameter.body) if (parameter.body?)
      }) as HttpResponse<api_v2_tickets__ticket_id__put_Type.response>)
    }
}