#### _com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets__ticket_id__put_
__________________________________________



# Index


### Variables
| Name | Description|
|------|------------|
| [api_v2_tickets__ticket_id__put](#api_v2_tickets__ticket_id__put-index ) | |



### Types
| Name | Description|
|------|------------|
|[api_v2_tickets__ticket_id__put_Type](#api_v2_tickets__ticket_id__put_type-index ) | |






__________________________________________





# Variables

## **api_v2_tickets__ticket_id__put** [↑↑](#index )





__________________________________________

# Types

### **api_v2_tickets__ticket_id__put_Type** [↑↑](#index )




#### Definition

```dataweave
{ "200": TicketUpdateResponse, request: HttpRequestType<{| uri: {| ticket_id: Number <~ {format: "integer"} |}, query: Object, headers: Object, cookie: Object, body?: TicketUpdateRequest |}>, response: TicketUpdateResponse }
```




