%dw 2.7

import ConnectorElement from com::mulesoft::connectivity::Metadata

import basicAuth, test from com::mulesoft::connectivity::NEWZENDESK::connections::Connections

import api_v2_tickets__ticket_id__delete from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets__ticket_id__delete

import api_v2_tickets__ticket_id__get from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets__ticket_id__get

import api_v2_tickets__ticket_id__put from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets__ticket_id__put

import api_v2_tickets_get from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets_get

import api_v2_tickets_post from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets_post

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
    CreateTicket: api_v2_tickets_post,
    DeleteTicket: api_v2_tickets__ticket_id__delete,
    ListTickets: api_v2_tickets_get,
    ShowTicket: api_v2_tickets__ticket_id__get,
    UpdateTicket: api_v2_tickets__ticket_id__put
  },
  valueProviders: {},
  metadataProviders: {}
}


