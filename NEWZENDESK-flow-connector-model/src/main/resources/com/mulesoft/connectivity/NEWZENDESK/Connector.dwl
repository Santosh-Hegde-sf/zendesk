%dw 2.7

import ConnectorElement from com::mulesoft::connectivity::Metadata

import * from com::mulesoft::connectivity::decorator::Operation

import HttpConnection, HttpRequestType, HttpResponse from com::mulesoft::connectivity::transport::Http

import Result, success, failure from com::mulesoft::connectivity::Model

import serializeCookies, serializeHeaders, withSerializationConfig from com::mulesoft::connectivity::transport::Serialization

import basicAuth, test from com::mulesoft::connectivity::NEWZENDESK::connections::Connections

import api_v2_tickets__ticket_id__delete from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets__ticket_id__delete

import api_v2_tickets__ticket_id__get from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets__ticket_id__get

import * from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets__ticket_id__put

import api_v2_tickets_get from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets_get

import api_v2_tickets_post from com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets_post

import * from com::mulesoft::connectivity::NEWZENDESK::types::Types
import * from com::mulesoft::connectivity::Model



type Error = {}

type get_ticket_input_type = {|
   	ticket_id: Number |}


type post_ticket_input_type = {
  ticket: TicketCreateInput
}

type put_ticket_input_type_union = api_v2_tickets__ticket_id__put_Type.request.uri & api_v2_tickets__ticket_id__put_Type.request.body

type put_ticket_input_type = {
    ticket_id: Number,
    ticket: TicketUpdateInput
}

var a: put_ticket_input_type = {
    ticket_id: 123,
    ticket: {}
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
                    success(response.body as TicketUpdateResponse)
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


 /*var showTicketTransform =
    mapInputAndOutputOperation(
        api_v2_tickets__ticket_id__get,
        (params: get_ticket_input_type) -> inputMapper(params),
        (response) -> do {
                if (response.status == 200)
                    success(response.body)
                else
                    failure(response.body as Error)
            },
        (response) -> do {
                failure(response.body as Error)
            }
 )*/



 fun transformFunc(rawOp, inMapper, respCode) =
     mapInputAndOutputOperation(
              rawOp,
              inMapper,
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

/*
    Library functions
 */

 // query: p1,p2 , body: ticketReq -> {p1:v1, p2:v2, ticketReq: val}
fun inputMapper<T>(params: T) = {
    query: params,
    uri: params,
    body: params,
    headers: { 'Accept': 'application/json' },
    cookie: {}
}

fun successOutputMapper<T>(response, respCode): Result<T, Any> = do {
    if (response.status == respCode)
      success(response.body as T)
    else
      failure(response.body)
}

fun flowOperationMapper(operation, inputMapper, successRespCode) = do {
    mapInputAndOutputOperation(
      operation,
      inputMapper,
      (response) -> successOutputMapper(response, successRespCode),
      (response) -> failure(response)
    )
  }
 /*
 End of Library functions
  */

  /*var putTicketTransform =
     mapInputAndOutputOperation(
         api_v2_tickets__ticket_id__put,
         (params: put_ticket_input_type_union) -> inputMapper(params),
         (response) -> do {
                 if (response.status == 200)
                     success(response.body)
                 else
                     failure(response.body as Error)
             },
         (response) -> do {
                 failure(response.body as Error)
             }
  )*/

//"operation_flow"
//These types will be used in the transformation(Final Type). These are shown to user finally in the flow UI (Source of truth).
//Removing mandatory is not a normal scenario(contentType header). Since Generated module is non-editable, This has to be input from tool during connector generation to provide mandatory param values //Disadvantage of the approach.



type api_v2_tickets__ticket_id__put_Type_dev =  {| ticket_id: Number <~ {format: "integer"} , ticketUpdateRequest?: TicketUpdateRequest|}

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
                showTicket: showTicket/*,
                UpdateTicket: transformToFlowOperation(api_v2_tickets__ticket_id__put, 
                                               api_v2_tickets__ticket_id__put_Type_dev,
                                               api_v2_tickets__ticket_id__put_Type.TicketUpdateResponse,
                                               api_v2_tickets__ticket_id__put_Type.successCode,
                                               Error
                                               )*/
            },
        valueProviders: {},
        metadataProviders: {}
    }



/*fun transformToFlowOperation<OpParam, OpResultType, OpResultErrorType, OpConnectionType, SuccessResponseCode, NewOpParam, NewOpResultType, NewOpResultErrorType <: ResultFailure>(
        rawOperation: Operation<OpParam, OpResultType, OpResultErrorType, OpConnectionType>,
        inputMapper: (NewOpParam) -> OpParam,
        outputSuccessMapper: (OpResultType) -> NewOpResultType,
        successResponseCode: SuccessResponseCode,
        outputFailureMapper: (OpResultErrorType) -> NewOpResultErrorType
    ): Operation<NewOpParam, NewOpResultType, NewOpResultErrorType, OpConnectionType>
    =    do  {
            rawOperation update { case executor at .executor -> mapResult(mapInput(operation.executor, inputMapper), outputSuccessMapper, outputFailureMapper)
        }
    }*/
/*fun transformToFlowOperation<OpParam, OpResultType, OpResultErrorType <: ResultFailure, OpConnectionType, NewOpParam, NewOpResultType, NewOpResultErrorType <: ResultFailure>(
    operation: Operation<OpParam, OpResultType, OpResultErrorType, OpConnectionType>,
    inputMapper: (NewOpParam) -> OpParam,
    outputSuccessMapper: (OpResultType) -> NewOpResultType,
    outputFailureMapper: (OpResultErrorType) -> NewOpResultErrorType
    ): Operation<NewOpParam, NewOpResultType, NewOpResultErrorType, OpConnectionType> = do {
        operation update { case executor at .executor -> mapResult(mapInput(operation.executor, inputMapper), outputSuccessMapper, outputFailureMapper)
        }
}*/
        /*mapInputAndOutputOperation(
            rawOperation,
            inputMapper(inputType),
            (response) -> do {
                if (response.status == successResponseCode)
                    success(response.body as successResponseType)
                else
                    failure(response.body as Error)
            },
            (response) -> do {
                failure(response.body as Error)
            }
        )*/

/*fun inputMapper(inputType: InputType): OutputType = {
        query: {},
        uri: { ticket_id: inputType.ticket_id },
        body: {},
        headers: { 'Accept': 'application/json' },
        cookie: {}
}  */
//generate input type for flow


//call mapInputOutputOperation