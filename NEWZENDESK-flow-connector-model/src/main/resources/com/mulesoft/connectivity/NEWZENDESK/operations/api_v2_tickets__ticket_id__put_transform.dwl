%dw 2.7

/*import Result, success from com::mulesoft::connectivity::Model

import TicketUpdateRequest, TicketUpdateResponse from com::mulesoft::connectivity::NEWZENDESK::types::Types

import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http

import serializeCookies, serializeHeaders, serializeUriParams, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

type api_v2_tickets__ticket_id__put_input_type = {
  ticket_id: Number <~ {format: "integer"},
  uri_param2:String,
  ticketUpdateRequest?: TicketUpdateRequest
}


var inputMapper = (parameters: api_v2_tickets__ticket_id__put_input_type) -> {
                query: {},
                uri: { ticket_id: parameters.ticket_id, uriparam2: parameters.uir_param2 },
                headers: { 'Accept': 'application/json' },
                cookie: {},
                (body:{ticket: parameters.ticket})
            }

var outputMapper = (response) -> do {
                if (response.status == 201)
                    success(response.body as TicketUpdateResponse)
                else
                    failure(response.body as Error)
            }

var errorMapper = (response) -> do {
                failure(response.body as Error)
            }

var updateTicketFlow = mapInputAndOutputOperation(api_v2_tickets__ticket_id__put,
                                                    inputMapper,
                                                    outputMapper,
                                                    errorMapper
 )*/