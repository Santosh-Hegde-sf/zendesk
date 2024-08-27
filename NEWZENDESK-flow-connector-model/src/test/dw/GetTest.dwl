%dw 2.7

import Result, success from com::mulesoft::connectivity::Model

import TicketResponse from com::mulesoft::connectivity::NEWZENDESK::types::Types

import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http

import serializeCookies, serializeHeaders, serializeUriParams, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

import * from com::mulesoft::connectivity::NEWZENDESK::Connector

import * from ConnectionProvider
import * from dw::test::Tests
import * from dw::test::Asserts
import api_v2_tickets__ticket_id__get from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets__ticket_id__get

var flowRequest: get_ticket_input_type = {
    ticket_id: 1000
}
var getTicketTransform = flowOperationMapper(api_v2_tickets__ticket_id__get,
                            (params: get_ticket_input_type) -> inputMapper(params),
                        "200"
                            )
var response = log(getTicketTransform.executor(flowRequest,connection))
//var tt = log(typeOf(response))
---
"get" describedBy [
      "get op" in do {
            isEmpty(response) must  equalTo(false)
          }
]