# AmznSpApi::OrdersApiModel::ItemApproval

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sequence_id** | **Integer** | Sequence number of the item approval. Each ItemApproval gets its sequenceId automatically from a monotonic increasing function. | 
**timestamp** | **String** | Timestamp when the ItemApproval was recorded by Amazon&#x27;s internal order approvals system. In ISO 8601 date time format. | 
**actor** | **String** | High level actors involved in the approval process. | 
**approver** | **String** | Person or system that triggers the approval actions on behalf of the actor. | [optional] 
**approval_action** | [**ItemApprovalAction**](ItemApprovalAction.md) |  | 
**approval_action_process_status** | **String** | Status of approval action. | 
**approval_action_process_status_message** | **String** | Optional message to communicate optional additional context about the current status of the approval action. | [optional] 

