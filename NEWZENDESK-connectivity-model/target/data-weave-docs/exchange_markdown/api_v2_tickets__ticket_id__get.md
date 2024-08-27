#### _com::mulesoft::connectivity::NEWZENDESK::operations::api_v2_tickets__ticket_id__get_
__________________________________________



# Index


### Variables
| Name | Description|
|------|------------|
| [api_v2_tickets__ticket_id__get](#api_v2_tickets__ticket_id__get-index ) | |



### Types
| Name | Description|
|------|------------|
|[api_v2_tickets__ticket_id__get_Type](#api_v2_tickets__ticket_id__get_type-index ) | |






__________________________________________





# Variables

## **api_v2_tickets__ticket_id__get** [↑↑](#index )





__________________________________________

# Types

### **api_v2_tickets__ticket_id__get_Type** [↑↑](#index )




#### Definition

```dataweave
{ "200": TicketResponse, request: HttpRequestType<{| uri: {| ticket_id: Number <~ {format: "integer"} |}, query: Object, headers: Object, cookie: Object, body?: Object |}>, response: TicketResponse }
```




