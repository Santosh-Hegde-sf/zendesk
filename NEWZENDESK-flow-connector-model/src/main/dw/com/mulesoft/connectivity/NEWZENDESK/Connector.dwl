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

type get_ticket_input_type = {
   	ticket_id: Number 
}

type put_ticket_input_type = {
    ticket_id: Number,
    ticket: TicketUpdateInput
}

var createTicket = mapInputAndOutputOperation(api_v2_tickets_post,
        (parameters: TicketCreateRequest) -> {
                query: {},
                headers: { 'Accept': 'application/json' },
                cookie: {},
                (body: parameters)
            },
        (response) -> do {
                if (response.status == 201)
                    success(response.body)
                else
                    failure(response.body as Error)
            },
        (response) -> do {
                failure(response.body as Error)
            }
 )

var updateTicket = mapInputAndOutputOperation(api_v2_tickets__ticket_id__put,
        (parameters: put_ticket_input_type) -> {
                query: {},
                uri: { ticket_id: parameters.ticket_id },
                headers: { 'Accept': 'application/json' },
                cookie: {},
                (body:{ticket: parameters.ticket})
            },
        (response) -> do {
                if (response.status == 201)
                    success(response.body)
                else
                    failure(response.body as Error)
            },
        (response) -> do {
                failure(response.body as Error)
            }
 )

var showTicket =      
    mapInputAndOutputOperation(
        api_v2_tickets__ticket_id__get,
        (parameters: get_ticket_input_type) -> {
                query: {},
                uri: { ticket_id: parameters.ticket_id },
                headers: { 'Accept': 'application/json' },
                cookie: {}
            },
        (response) -> do {
                if (response.status == 200)
                    success(response.body)
                else
                    failure(response.body as Error)
            },
        (response) -> do {
                failure(response.body as Error)
            }
 )



@ConnectorElement
var connector = {
        name: "NEWZENDESK2",
        displayName: "NEWZENDESK2",
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
                ShowTicket: showTicket,
                UpdateTicket: updateTicket
            },
        valueProviders: {},
        metadataProviders: {}
    }

