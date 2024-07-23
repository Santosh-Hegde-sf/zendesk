%dw 2.7

import ConnectorElement from com::mulesoft::connectivity::Metadata

import * from com::mulesoft::connectivity::decorator::Operation

import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http

import Result, success, failure from com::mulesoft::connectivity::Model

import serializeCookies, serializeHeaders, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

import basicAuth, test from com::mulesoft::connectivity::NEWZENDESK::connections::Connections

import api_v2_tickets__ticket_id__delete from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets__ticket_id__delete

import api_v2_tickets__ticket_id__get from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets__ticket_id__get

import api_v2_tickets__ticket_id__put from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets__ticket_id__put

import api_v2_tickets_get from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets_get

import api_v2_tickets_post from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets_post

import * from com::mulesoft::connectivity::NEWZENDESK::types::Types



type Error = {}

var createTicket =      
   mapInputAndOutputOperation(
   api_v2_tickets_post,
   (parameters: TicketCreateRequest) -> {
           query: {},
           headers: { 'Accept': 'application/json'},
           cookie: {},
           (body: parameters)
   },
   (response)  -> do {
      if (response.status == 201)
          success(response.body)
      else
          failure(response.body as Error)
   },
   (response)  -> do {
          failure(response.body as Error)
   }
 )



@ConnectorElement
var connector = {
  name: "NEWZENDESK",
  displayName: "NEWZENDESK",
  version: "1.0.0-SNAPSHOT",
  releaseStatus: "PILOT",
  description: "Support API - IC",
  icons: [
    {
      name: "NEWZENDESK",
      alternateText: "NEWZENDESK",
      resource: "icon/icon.svg",
      size: 1,
      dimensions: "0x0"
    }
  ],
  vendor: "auto-generated",
  connections: {
    basicAuth: basicAuth
  },
  testConnection: test,
  operations: {
    CreateTicket: createTicket,
    // DeleteTicket: api_v2_tickets__ticket_id__delete,
    // ListTickets: api_v2_tickets_get,
    // ShowTicket: api_v2_tickets__ticket_id__get,
    // UpdateTicket: api_v2_tickets__ticket_id__put
  },
  valueProviders: {},
  metadataProviders: {}
}

