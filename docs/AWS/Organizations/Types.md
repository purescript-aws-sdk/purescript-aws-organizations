## Module AWS.Organizations.Types

#### `options`

``` purescript
options :: Options
```

#### `AWSOrganizationsNotInUseException`

``` purescript
newtype AWSOrganizationsNotInUseException
  = AWSOrganizationsNotInUseException { "Message" :: Maybe (ExceptionMessage) }
```

<p>Your account is not a member of an organization. To make this request, you must use the credentials of an account that belongs to an organization.</p>

##### Instances
``` purescript
Newtype AWSOrganizationsNotInUseException _
Generic AWSOrganizationsNotInUseException _
Show AWSOrganizationsNotInUseException
Decode AWSOrganizationsNotInUseException
Encode AWSOrganizationsNotInUseException
```

#### `newAWSOrganizationsNotInUseException`

``` purescript
newAWSOrganizationsNotInUseException :: AWSOrganizationsNotInUseException
```

Constructs AWSOrganizationsNotInUseException from required parameters

#### `newAWSOrganizationsNotInUseException'`

``` purescript
newAWSOrganizationsNotInUseException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> AWSOrganizationsNotInUseException
```

Constructs AWSOrganizationsNotInUseException's fields from required parameters

#### `AcceptHandshakeRequest`

``` purescript
newtype AcceptHandshakeRequest
  = AcceptHandshakeRequest { "HandshakeId" :: HandshakeId }
```

##### Instances
``` purescript
Newtype AcceptHandshakeRequest _
Generic AcceptHandshakeRequest _
Show AcceptHandshakeRequest
Decode AcceptHandshakeRequest
Encode AcceptHandshakeRequest
```

#### `newAcceptHandshakeRequest`

``` purescript
newAcceptHandshakeRequest :: HandshakeId -> AcceptHandshakeRequest
```

Constructs AcceptHandshakeRequest from required parameters

#### `newAcceptHandshakeRequest'`

``` purescript
newAcceptHandshakeRequest' :: HandshakeId -> ({ "HandshakeId" :: HandshakeId } -> { "HandshakeId" :: HandshakeId }) -> AcceptHandshakeRequest
```

Constructs AcceptHandshakeRequest's fields from required parameters

#### `AcceptHandshakeResponse`

``` purescript
newtype AcceptHandshakeResponse
  = AcceptHandshakeResponse { "Handshake" :: Maybe (Handshake) }
```

##### Instances
``` purescript
Newtype AcceptHandshakeResponse _
Generic AcceptHandshakeResponse _
Show AcceptHandshakeResponse
Decode AcceptHandshakeResponse
Encode AcceptHandshakeResponse
```

#### `newAcceptHandshakeResponse`

``` purescript
newAcceptHandshakeResponse :: AcceptHandshakeResponse
```

Constructs AcceptHandshakeResponse from required parameters

#### `newAcceptHandshakeResponse'`

``` purescript
newAcceptHandshakeResponse' :: ({ "Handshake" :: Maybe (Handshake) } -> { "Handshake" :: Maybe (Handshake) }) -> AcceptHandshakeResponse
```

Constructs AcceptHandshakeResponse's fields from required parameters

#### `AccessDeniedException`

``` purescript
newtype AccessDeniedException
  = AccessDeniedException { "Message" :: Maybe (ExceptionMessage) }
```

<p>You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the <i>IAM User Guide</i>.</p>

##### Instances
``` purescript
Newtype AccessDeniedException _
Generic AccessDeniedException _
Show AccessDeniedException
Decode AccessDeniedException
Encode AccessDeniedException
```

#### `newAccessDeniedException`

``` purescript
newAccessDeniedException :: AccessDeniedException
```

Constructs AccessDeniedException from required parameters

#### `newAccessDeniedException'`

``` purescript
newAccessDeniedException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> AccessDeniedException
```

Constructs AccessDeniedException's fields from required parameters

#### `AccessDeniedForDependencyException`

``` purescript
newtype AccessDeniedForDependencyException
  = AccessDeniedForDependencyException { "Message" :: Maybe (ExceptionMessage), "Reason" :: Maybe (AccessDeniedForDependencyExceptionReason) }
```

<p>The operation you attempted requires you to have the <code>iam:CreateServiceLinkedRole</code> so that Organizations can create the required service-linked role. You do not have that permission.</p>

##### Instances
``` purescript
Newtype AccessDeniedForDependencyException _
Generic AccessDeniedForDependencyException _
Show AccessDeniedForDependencyException
Decode AccessDeniedForDependencyException
Encode AccessDeniedForDependencyException
```

#### `newAccessDeniedForDependencyException`

``` purescript
newAccessDeniedForDependencyException :: AccessDeniedForDependencyException
```

Constructs AccessDeniedForDependencyException from required parameters

#### `newAccessDeniedForDependencyException'`

``` purescript
newAccessDeniedForDependencyException' :: ({ "Message" :: Maybe (ExceptionMessage), "Reason" :: Maybe (AccessDeniedForDependencyExceptionReason) } -> { "Message" :: Maybe (ExceptionMessage), "Reason" :: Maybe (AccessDeniedForDependencyExceptionReason) }) -> AccessDeniedForDependencyException
```

Constructs AccessDeniedForDependencyException's fields from required parameters

#### `AccessDeniedForDependencyExceptionReason`

``` purescript
newtype AccessDeniedForDependencyExceptionReason
  = AccessDeniedForDependencyExceptionReason String
```

##### Instances
``` purescript
Newtype AccessDeniedForDependencyExceptionReason _
Generic AccessDeniedForDependencyExceptionReason _
Show AccessDeniedForDependencyExceptionReason
Decode AccessDeniedForDependencyExceptionReason
Encode AccessDeniedForDependencyExceptionReason
```

#### `Account`

``` purescript
newtype Account
  = Account { "Id" :: Maybe (AccountId), "Arn" :: Maybe (AccountArn), "Email" :: Maybe (Email), "Name" :: Maybe (AccountName), "Status" :: Maybe (AccountStatus), "JoinedMethod" :: Maybe (AccountJoinedMethod), "JoinedTimestamp" :: Maybe (Timestamp) }
```

<p>Contains information about an AWS account that is a member of an organization.</p>

##### Instances
``` purescript
Newtype Account _
Generic Account _
Show Account
Decode Account
Encode Account
```

#### `newAccount`

``` purescript
newAccount :: Account
```

Constructs Account from required parameters

#### `newAccount'`

``` purescript
newAccount' :: ({ "Id" :: Maybe (AccountId), "Arn" :: Maybe (AccountArn), "Email" :: Maybe (Email), "Name" :: Maybe (AccountName), "Status" :: Maybe (AccountStatus), "JoinedMethod" :: Maybe (AccountJoinedMethod), "JoinedTimestamp" :: Maybe (Timestamp) } -> { "Id" :: Maybe (AccountId), "Arn" :: Maybe (AccountArn), "Email" :: Maybe (Email), "Name" :: Maybe (AccountName), "Status" :: Maybe (AccountStatus), "JoinedMethod" :: Maybe (AccountJoinedMethod), "JoinedTimestamp" :: Maybe (Timestamp) }) -> Account
```

Constructs Account's fields from required parameters

#### `AccountArn`

``` purescript
newtype AccountArn
  = AccountArn String
```

##### Instances
``` purescript
Newtype AccountArn _
Generic AccountArn _
Show AccountArn
Decode AccountArn
Encode AccountArn
```

#### `AccountId`

``` purescript
newtype AccountId
  = AccountId String
```

##### Instances
``` purescript
Newtype AccountId _
Generic AccountId _
Show AccountId
Decode AccountId
Encode AccountId
```

#### `AccountJoinedMethod`

``` purescript
newtype AccountJoinedMethod
  = AccountJoinedMethod String
```

##### Instances
``` purescript
Newtype AccountJoinedMethod _
Generic AccountJoinedMethod _
Show AccountJoinedMethod
Decode AccountJoinedMethod
Encode AccountJoinedMethod
```

#### `AccountName`

``` purescript
newtype AccountName
  = AccountName String
```

##### Instances
``` purescript
Newtype AccountName _
Generic AccountName _
Show AccountName
Decode AccountName
Encode AccountName
```

#### `AccountNotFoundException`

``` purescript
newtype AccountNotFoundException
  = AccountNotFoundException { "Message" :: Maybe (ExceptionMessage) }
```

<p> We can't find an AWS account with the AccountId that you specified, or the account whose credentials you used to make this request is not a member of an organization.</p>

##### Instances
``` purescript
Newtype AccountNotFoundException _
Generic AccountNotFoundException _
Show AccountNotFoundException
Decode AccountNotFoundException
Encode AccountNotFoundException
```

#### `newAccountNotFoundException`

``` purescript
newAccountNotFoundException :: AccountNotFoundException
```

Constructs AccountNotFoundException from required parameters

#### `newAccountNotFoundException'`

``` purescript
newAccountNotFoundException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> AccountNotFoundException
```

Constructs AccountNotFoundException's fields from required parameters

#### `AccountStatus`

``` purescript
newtype AccountStatus
  = AccountStatus String
```

##### Instances
``` purescript
Newtype AccountStatus _
Generic AccountStatus _
Show AccountStatus
Decode AccountStatus
Encode AccountStatus
```

#### `Accounts`

``` purescript
newtype Accounts
  = Accounts (Array Account)
```

##### Instances
``` purescript
Newtype Accounts _
Generic Accounts _
Show Accounts
Decode Accounts
Encode Accounts
```

#### `ActionType`

``` purescript
newtype ActionType
  = ActionType String
```

##### Instances
``` purescript
Newtype ActionType _
Generic ActionType _
Show ActionType
Decode ActionType
Encode ActionType
```

#### `AlreadyInOrganizationException`

``` purescript
newtype AlreadyInOrganizationException
  = AlreadyInOrganizationException { "Message" :: Maybe (ExceptionMessage) }
```

<p>This account is already a member of an organization. An account can belong to only one organization at a time.</p>

##### Instances
``` purescript
Newtype AlreadyInOrganizationException _
Generic AlreadyInOrganizationException _
Show AlreadyInOrganizationException
Decode AlreadyInOrganizationException
Encode AlreadyInOrganizationException
```

#### `newAlreadyInOrganizationException`

``` purescript
newAlreadyInOrganizationException :: AlreadyInOrganizationException
```

Constructs AlreadyInOrganizationException from required parameters

#### `newAlreadyInOrganizationException'`

``` purescript
newAlreadyInOrganizationException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> AlreadyInOrganizationException
```

Constructs AlreadyInOrganizationException's fields from required parameters

#### `AttachPolicyRequest`

``` purescript
newtype AttachPolicyRequest
  = AttachPolicyRequest { "PolicyId" :: PolicyId, "TargetId" :: PolicyTargetId }
```

##### Instances
``` purescript
Newtype AttachPolicyRequest _
Generic AttachPolicyRequest _
Show AttachPolicyRequest
Decode AttachPolicyRequest
Encode AttachPolicyRequest
```

#### `newAttachPolicyRequest`

``` purescript
newAttachPolicyRequest :: PolicyId -> PolicyTargetId -> AttachPolicyRequest
```

Constructs AttachPolicyRequest from required parameters

#### `newAttachPolicyRequest'`

``` purescript
newAttachPolicyRequest' :: PolicyId -> PolicyTargetId -> ({ "PolicyId" :: PolicyId, "TargetId" :: PolicyTargetId } -> { "PolicyId" :: PolicyId, "TargetId" :: PolicyTargetId }) -> AttachPolicyRequest
```

Constructs AttachPolicyRequest's fields from required parameters

#### `AwsManagedPolicy`

``` purescript
newtype AwsManagedPolicy
  = AwsManagedPolicy Boolean
```

##### Instances
``` purescript
Newtype AwsManagedPolicy _
Generic AwsManagedPolicy _
Show AwsManagedPolicy
Decode AwsManagedPolicy
Encode AwsManagedPolicy
```

#### `CancelHandshakeRequest`

``` purescript
newtype CancelHandshakeRequest
  = CancelHandshakeRequest { "HandshakeId" :: HandshakeId }
```

##### Instances
``` purescript
Newtype CancelHandshakeRequest _
Generic CancelHandshakeRequest _
Show CancelHandshakeRequest
Decode CancelHandshakeRequest
Encode CancelHandshakeRequest
```

#### `newCancelHandshakeRequest`

``` purescript
newCancelHandshakeRequest :: HandshakeId -> CancelHandshakeRequest
```

Constructs CancelHandshakeRequest from required parameters

#### `newCancelHandshakeRequest'`

``` purescript
newCancelHandshakeRequest' :: HandshakeId -> ({ "HandshakeId" :: HandshakeId } -> { "HandshakeId" :: HandshakeId }) -> CancelHandshakeRequest
```

Constructs CancelHandshakeRequest's fields from required parameters

#### `CancelHandshakeResponse`

``` purescript
newtype CancelHandshakeResponse
  = CancelHandshakeResponse { "Handshake" :: Maybe (Handshake) }
```

##### Instances
``` purescript
Newtype CancelHandshakeResponse _
Generic CancelHandshakeResponse _
Show CancelHandshakeResponse
Decode CancelHandshakeResponse
Encode CancelHandshakeResponse
```

#### `newCancelHandshakeResponse`

``` purescript
newCancelHandshakeResponse :: CancelHandshakeResponse
```

Constructs CancelHandshakeResponse from required parameters

#### `newCancelHandshakeResponse'`

``` purescript
newCancelHandshakeResponse' :: ({ "Handshake" :: Maybe (Handshake) } -> { "Handshake" :: Maybe (Handshake) }) -> CancelHandshakeResponse
```

Constructs CancelHandshakeResponse's fields from required parameters

#### `Child`

``` purescript
newtype Child
  = Child { "Id" :: Maybe (ChildId), "Type" :: Maybe (ChildType) }
```

<p>Contains a list of child entities, either OUs or accounts.</p>

##### Instances
``` purescript
Newtype Child _
Generic Child _
Show Child
Decode Child
Encode Child
```

#### `newChild`

``` purescript
newChild :: Child
```

Constructs Child from required parameters

#### `newChild'`

``` purescript
newChild' :: ({ "Id" :: Maybe (ChildId), "Type" :: Maybe (ChildType) } -> { "Id" :: Maybe (ChildId), "Type" :: Maybe (ChildType) }) -> Child
```

Constructs Child's fields from required parameters

#### `ChildId`

``` purescript
newtype ChildId
  = ChildId String
```

##### Instances
``` purescript
Newtype ChildId _
Generic ChildId _
Show ChildId
Decode ChildId
Encode ChildId
```

#### `ChildNotFoundException`

``` purescript
newtype ChildNotFoundException
  = ChildNotFoundException { "Message" :: Maybe (ExceptionMessage) }
```

<p>We can't find an organizational unit (OU) or AWS account with the ChildId that you specified.</p>

##### Instances
``` purescript
Newtype ChildNotFoundException _
Generic ChildNotFoundException _
Show ChildNotFoundException
Decode ChildNotFoundException
Encode ChildNotFoundException
```

#### `newChildNotFoundException`

``` purescript
newChildNotFoundException :: ChildNotFoundException
```

Constructs ChildNotFoundException from required parameters

#### `newChildNotFoundException'`

``` purescript
newChildNotFoundException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> ChildNotFoundException
```

Constructs ChildNotFoundException's fields from required parameters

#### `ChildType`

``` purescript
newtype ChildType
  = ChildType String
```

##### Instances
``` purescript
Newtype ChildType _
Generic ChildType _
Show ChildType
Decode ChildType
Encode ChildType
```

#### `Children`

``` purescript
newtype Children
  = Children (Array Child)
```

##### Instances
``` purescript
Newtype Children _
Generic Children _
Show Children
Decode Children
Encode Children
```

#### `ConcurrentModificationException`

``` purescript
newtype ConcurrentModificationException
  = ConcurrentModificationException { "Message" :: Maybe (ExceptionMessage) }
```

<p>The target of the operation is currently being modified by a different request. Try again later.</p>

##### Instances
``` purescript
Newtype ConcurrentModificationException _
Generic ConcurrentModificationException _
Show ConcurrentModificationException
Decode ConcurrentModificationException
Encode ConcurrentModificationException
```

#### `newConcurrentModificationException`

``` purescript
newConcurrentModificationException :: ConcurrentModificationException
```

Constructs ConcurrentModificationException from required parameters

#### `newConcurrentModificationException'`

``` purescript
newConcurrentModificationException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> ConcurrentModificationException
```

Constructs ConcurrentModificationException's fields from required parameters

#### `ConstraintViolationException`

``` purescript
newtype ConstraintViolationException
  = ConstraintViolationException { "Message" :: Maybe (ExceptionMessage), "Reason" :: Maybe (ConstraintViolationExceptionReason) }
```

<p>Performing this operation violates a minimum or maximum value limit. For example, attempting to removing the last SCP from an OU or root, inviting or creating too many accounts to the organization, or attaching too many policies to an account, OU, or root. This exception includes a reason that contains additional information about the violated limit:</p> <p/> <note> <p>Some of the reasons in the following list might not be applicable to this specific API or operation:</p> </note> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. If you need more accounts, contact AWS Support to request an increase in your limit. </p> <p>Or, The number of invitations that you tried to send would cause you to exceed the limit of accounts in your organization. Send fewer invitations, or contact AWS Support to request an increase in the number of accounts.</p> <p> <b>Note</b>: deleted and closed accounts still count toward your limit.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>OU_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the number of organizational units you can have in an organization.</p> </li> <li> <p>OU_DEPTH_LIMIT_EXCEEDED: You attempted to create an organizational unit tree that is too many levels deep.</p> </li> <li> <p>POLICY_NUMBER_LIMIT_EXCEEDED. You attempted to exceed the number of policies that you can have in an organization.</p> </li> <li> <p>MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to exceed the number of policies of a certain type that can be attached to an entity at one time.</p> </li> <li> <p>MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to detach a policy from an entity that would cause the entity to have fewer than the minimum number of policies of a certain type required.</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first agree to the AWS Customer Agreement. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first complete phone verification. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To create an organization with this account, you first must associate a payment instrument, such as a credit card, with the account. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To complete this operation with this member account, you first must associate a payment instrument, such as a credit card, with the account. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of accounts that you can create in one day.</p> </li> <li> <p>MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE: To create an account in this organization, you first must migrate the organization's master account to the marketplace that corresponds to the master account's address. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be associated with the same marketplace.</p> </li> <li> <p>MASTER_ACCOUNT_MISSING_CONTACT_INFO: To complete this operation, you must first provide contact a valid address and phone number for the master account. Then try the operation again.</p> </li> </ul>

##### Instances
``` purescript
Newtype ConstraintViolationException _
Generic ConstraintViolationException _
Show ConstraintViolationException
Decode ConstraintViolationException
Encode ConstraintViolationException
```

#### `newConstraintViolationException`

``` purescript
newConstraintViolationException :: ConstraintViolationException
```

Constructs ConstraintViolationException from required parameters

#### `newConstraintViolationException'`

``` purescript
newConstraintViolationException' :: ({ "Message" :: Maybe (ExceptionMessage), "Reason" :: Maybe (ConstraintViolationExceptionReason) } -> { "Message" :: Maybe (ExceptionMessage), "Reason" :: Maybe (ConstraintViolationExceptionReason) }) -> ConstraintViolationException
```

Constructs ConstraintViolationException's fields from required parameters

#### `ConstraintViolationExceptionReason`

``` purescript
newtype ConstraintViolationExceptionReason
  = ConstraintViolationExceptionReason String
```

##### Instances
``` purescript
Newtype ConstraintViolationExceptionReason _
Generic ConstraintViolationExceptionReason _
Show ConstraintViolationExceptionReason
Decode ConstraintViolationExceptionReason
Encode ConstraintViolationExceptionReason
```

#### `CreateAccountFailureReason`

``` purescript
newtype CreateAccountFailureReason
  = CreateAccountFailureReason String
```

##### Instances
``` purescript
Newtype CreateAccountFailureReason _
Generic CreateAccountFailureReason _
Show CreateAccountFailureReason
Decode CreateAccountFailureReason
Encode CreateAccountFailureReason
```

#### `CreateAccountRequest`

``` purescript
newtype CreateAccountRequest
  = CreateAccountRequest { "Email" :: Email, "AccountName" :: AccountName, "RoleName" :: Maybe (RoleName), "IamUserAccessToBilling" :: Maybe (IAMUserAccessToBilling) }
```

##### Instances
``` purescript
Newtype CreateAccountRequest _
Generic CreateAccountRequest _
Show CreateAccountRequest
Decode CreateAccountRequest
Encode CreateAccountRequest
```

#### `newCreateAccountRequest`

``` purescript
newCreateAccountRequest :: AccountName -> Email -> CreateAccountRequest
```

Constructs CreateAccountRequest from required parameters

#### `newCreateAccountRequest'`

``` purescript
newCreateAccountRequest' :: AccountName -> Email -> ({ "Email" :: Email, "AccountName" :: AccountName, "RoleName" :: Maybe (RoleName), "IamUserAccessToBilling" :: Maybe (IAMUserAccessToBilling) } -> { "Email" :: Email, "AccountName" :: AccountName, "RoleName" :: Maybe (RoleName), "IamUserAccessToBilling" :: Maybe (IAMUserAccessToBilling) }) -> CreateAccountRequest
```

Constructs CreateAccountRequest's fields from required parameters

#### `CreateAccountRequestId`

``` purescript
newtype CreateAccountRequestId
  = CreateAccountRequestId String
```

##### Instances
``` purescript
Newtype CreateAccountRequestId _
Generic CreateAccountRequestId _
Show CreateAccountRequestId
Decode CreateAccountRequestId
Encode CreateAccountRequestId
```

#### `CreateAccountResponse`

``` purescript
newtype CreateAccountResponse
  = CreateAccountResponse { "CreateAccountStatus" :: Maybe (CreateAccountStatus) }
```

##### Instances
``` purescript
Newtype CreateAccountResponse _
Generic CreateAccountResponse _
Show CreateAccountResponse
Decode CreateAccountResponse
Encode CreateAccountResponse
```

#### `newCreateAccountResponse`

``` purescript
newCreateAccountResponse :: CreateAccountResponse
```

Constructs CreateAccountResponse from required parameters

#### `newCreateAccountResponse'`

``` purescript
newCreateAccountResponse' :: ({ "CreateAccountStatus" :: Maybe (CreateAccountStatus) } -> { "CreateAccountStatus" :: Maybe (CreateAccountStatus) }) -> CreateAccountResponse
```

Constructs CreateAccountResponse's fields from required parameters

#### `CreateAccountState`

``` purescript
newtype CreateAccountState
  = CreateAccountState String
```

##### Instances
``` purescript
Newtype CreateAccountState _
Generic CreateAccountState _
Show CreateAccountState
Decode CreateAccountState
Encode CreateAccountState
```

#### `CreateAccountStates`

``` purescript
newtype CreateAccountStates
  = CreateAccountStates (Array CreateAccountState)
```

##### Instances
``` purescript
Newtype CreateAccountStates _
Generic CreateAccountStates _
Show CreateAccountStates
Decode CreateAccountStates
Encode CreateAccountStates
```

#### `CreateAccountStatus`

``` purescript
newtype CreateAccountStatus
  = CreateAccountStatus { "Id" :: Maybe (CreateAccountRequestId), "AccountName" :: Maybe (AccountName), "State" :: Maybe (CreateAccountState), "RequestedTimestamp" :: Maybe (Timestamp), "CompletedTimestamp" :: Maybe (Timestamp), "AccountId" :: Maybe (AccountId), "FailureReason" :: Maybe (CreateAccountFailureReason) }
```

<p>Contains the status about a <a>CreateAccount</a> request to create an AWS account in an organization.</p>

##### Instances
``` purescript
Newtype CreateAccountStatus _
Generic CreateAccountStatus _
Show CreateAccountStatus
Decode CreateAccountStatus
Encode CreateAccountStatus
```

#### `newCreateAccountStatus`

``` purescript
newCreateAccountStatus :: CreateAccountStatus
```

Constructs CreateAccountStatus from required parameters

#### `newCreateAccountStatus'`

``` purescript
newCreateAccountStatus' :: ({ "Id" :: Maybe (CreateAccountRequestId), "AccountName" :: Maybe (AccountName), "State" :: Maybe (CreateAccountState), "RequestedTimestamp" :: Maybe (Timestamp), "CompletedTimestamp" :: Maybe (Timestamp), "AccountId" :: Maybe (AccountId), "FailureReason" :: Maybe (CreateAccountFailureReason) } -> { "Id" :: Maybe (CreateAccountRequestId), "AccountName" :: Maybe (AccountName), "State" :: Maybe (CreateAccountState), "RequestedTimestamp" :: Maybe (Timestamp), "CompletedTimestamp" :: Maybe (Timestamp), "AccountId" :: Maybe (AccountId), "FailureReason" :: Maybe (CreateAccountFailureReason) }) -> CreateAccountStatus
```

Constructs CreateAccountStatus's fields from required parameters

#### `CreateAccountStatusNotFoundException`

``` purescript
newtype CreateAccountStatusNotFoundException
  = CreateAccountStatusNotFoundException { "Message" :: Maybe (ExceptionMessage) }
```

<p>We can't find an create account request with the CreateAccountRequestId that you specified.</p>

##### Instances
``` purescript
Newtype CreateAccountStatusNotFoundException _
Generic CreateAccountStatusNotFoundException _
Show CreateAccountStatusNotFoundException
Decode CreateAccountStatusNotFoundException
Encode CreateAccountStatusNotFoundException
```

#### `newCreateAccountStatusNotFoundException`

``` purescript
newCreateAccountStatusNotFoundException :: CreateAccountStatusNotFoundException
```

Constructs CreateAccountStatusNotFoundException from required parameters

#### `newCreateAccountStatusNotFoundException'`

``` purescript
newCreateAccountStatusNotFoundException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> CreateAccountStatusNotFoundException
```

Constructs CreateAccountStatusNotFoundException's fields from required parameters

#### `CreateAccountStatuses`

``` purescript
newtype CreateAccountStatuses
  = CreateAccountStatuses (Array CreateAccountStatus)
```

##### Instances
``` purescript
Newtype CreateAccountStatuses _
Generic CreateAccountStatuses _
Show CreateAccountStatuses
Decode CreateAccountStatuses
Encode CreateAccountStatuses
```

#### `CreateOrganizationRequest`

``` purescript
newtype CreateOrganizationRequest
  = CreateOrganizationRequest { "FeatureSet" :: Maybe (OrganizationFeatureSet) }
```

##### Instances
``` purescript
Newtype CreateOrganizationRequest _
Generic CreateOrganizationRequest _
Show CreateOrganizationRequest
Decode CreateOrganizationRequest
Encode CreateOrganizationRequest
```

#### `newCreateOrganizationRequest`

``` purescript
newCreateOrganizationRequest :: CreateOrganizationRequest
```

Constructs CreateOrganizationRequest from required parameters

#### `newCreateOrganizationRequest'`

``` purescript
newCreateOrganizationRequest' :: ({ "FeatureSet" :: Maybe (OrganizationFeatureSet) } -> { "FeatureSet" :: Maybe (OrganizationFeatureSet) }) -> CreateOrganizationRequest
```

Constructs CreateOrganizationRequest's fields from required parameters

#### `CreateOrganizationResponse`

``` purescript
newtype CreateOrganizationResponse
  = CreateOrganizationResponse { "Organization" :: Maybe (Organization) }
```

##### Instances
``` purescript
Newtype CreateOrganizationResponse _
Generic CreateOrganizationResponse _
Show CreateOrganizationResponse
Decode CreateOrganizationResponse
Encode CreateOrganizationResponse
```

#### `newCreateOrganizationResponse`

``` purescript
newCreateOrganizationResponse :: CreateOrganizationResponse
```

Constructs CreateOrganizationResponse from required parameters

#### `newCreateOrganizationResponse'`

``` purescript
newCreateOrganizationResponse' :: ({ "Organization" :: Maybe (Organization) } -> { "Organization" :: Maybe (Organization) }) -> CreateOrganizationResponse
```

Constructs CreateOrganizationResponse's fields from required parameters

#### `CreateOrganizationalUnitRequest`

``` purescript
newtype CreateOrganizationalUnitRequest
  = CreateOrganizationalUnitRequest { "ParentId" :: ParentId, "Name" :: OrganizationalUnitName }
```

##### Instances
``` purescript
Newtype CreateOrganizationalUnitRequest _
Generic CreateOrganizationalUnitRequest _
Show CreateOrganizationalUnitRequest
Decode CreateOrganizationalUnitRequest
Encode CreateOrganizationalUnitRequest
```

#### `newCreateOrganizationalUnitRequest`

``` purescript
newCreateOrganizationalUnitRequest :: OrganizationalUnitName -> ParentId -> CreateOrganizationalUnitRequest
```

Constructs CreateOrganizationalUnitRequest from required parameters

#### `newCreateOrganizationalUnitRequest'`

``` purescript
newCreateOrganizationalUnitRequest' :: OrganizationalUnitName -> ParentId -> ({ "ParentId" :: ParentId, "Name" :: OrganizationalUnitName } -> { "ParentId" :: ParentId, "Name" :: OrganizationalUnitName }) -> CreateOrganizationalUnitRequest
```

Constructs CreateOrganizationalUnitRequest's fields from required parameters

#### `CreateOrganizationalUnitResponse`

``` purescript
newtype CreateOrganizationalUnitResponse
  = CreateOrganizationalUnitResponse { "OrganizationalUnit" :: Maybe (OrganizationalUnit) }
```

##### Instances
``` purescript
Newtype CreateOrganizationalUnitResponse _
Generic CreateOrganizationalUnitResponse _
Show CreateOrganizationalUnitResponse
Decode CreateOrganizationalUnitResponse
Encode CreateOrganizationalUnitResponse
```

#### `newCreateOrganizationalUnitResponse`

``` purescript
newCreateOrganizationalUnitResponse :: CreateOrganizationalUnitResponse
```

Constructs CreateOrganizationalUnitResponse from required parameters

#### `newCreateOrganizationalUnitResponse'`

``` purescript
newCreateOrganizationalUnitResponse' :: ({ "OrganizationalUnit" :: Maybe (OrganizationalUnit) } -> { "OrganizationalUnit" :: Maybe (OrganizationalUnit) }) -> CreateOrganizationalUnitResponse
```

Constructs CreateOrganizationalUnitResponse's fields from required parameters

#### `CreatePolicyRequest`

``` purescript
newtype CreatePolicyRequest
  = CreatePolicyRequest { "Content" :: PolicyContent, "Description" :: PolicyDescription, "Name" :: PolicyName, "Type" :: PolicyType }
```

##### Instances
``` purescript
Newtype CreatePolicyRequest _
Generic CreatePolicyRequest _
Show CreatePolicyRequest
Decode CreatePolicyRequest
Encode CreatePolicyRequest
```

#### `newCreatePolicyRequest`

``` purescript
newCreatePolicyRequest :: PolicyContent -> PolicyDescription -> PolicyName -> PolicyType -> CreatePolicyRequest
```

Constructs CreatePolicyRequest from required parameters

#### `newCreatePolicyRequest'`

``` purescript
newCreatePolicyRequest' :: PolicyContent -> PolicyDescription -> PolicyName -> PolicyType -> ({ "Content" :: PolicyContent, "Description" :: PolicyDescription, "Name" :: PolicyName, "Type" :: PolicyType } -> { "Content" :: PolicyContent, "Description" :: PolicyDescription, "Name" :: PolicyName, "Type" :: PolicyType }) -> CreatePolicyRequest
```

Constructs CreatePolicyRequest's fields from required parameters

#### `CreatePolicyResponse`

``` purescript
newtype CreatePolicyResponse
  = CreatePolicyResponse { "Policy" :: Maybe (Policy) }
```

##### Instances
``` purescript
Newtype CreatePolicyResponse _
Generic CreatePolicyResponse _
Show CreatePolicyResponse
Decode CreatePolicyResponse
Encode CreatePolicyResponse
```

#### `newCreatePolicyResponse`

``` purescript
newCreatePolicyResponse :: CreatePolicyResponse
```

Constructs CreatePolicyResponse from required parameters

#### `newCreatePolicyResponse'`

``` purescript
newCreatePolicyResponse' :: ({ "Policy" :: Maybe (Policy) } -> { "Policy" :: Maybe (Policy) }) -> CreatePolicyResponse
```

Constructs CreatePolicyResponse's fields from required parameters

#### `DeclineHandshakeRequest`

``` purescript
newtype DeclineHandshakeRequest
  = DeclineHandshakeRequest { "HandshakeId" :: HandshakeId }
```

##### Instances
``` purescript
Newtype DeclineHandshakeRequest _
Generic DeclineHandshakeRequest _
Show DeclineHandshakeRequest
Decode DeclineHandshakeRequest
Encode DeclineHandshakeRequest
```

#### `newDeclineHandshakeRequest`

``` purescript
newDeclineHandshakeRequest :: HandshakeId -> DeclineHandshakeRequest
```

Constructs DeclineHandshakeRequest from required parameters

#### `newDeclineHandshakeRequest'`

``` purescript
newDeclineHandshakeRequest' :: HandshakeId -> ({ "HandshakeId" :: HandshakeId } -> { "HandshakeId" :: HandshakeId }) -> DeclineHandshakeRequest
```

Constructs DeclineHandshakeRequest's fields from required parameters

#### `DeclineHandshakeResponse`

``` purescript
newtype DeclineHandshakeResponse
  = DeclineHandshakeResponse { "Handshake" :: Maybe (Handshake) }
```

##### Instances
``` purescript
Newtype DeclineHandshakeResponse _
Generic DeclineHandshakeResponse _
Show DeclineHandshakeResponse
Decode DeclineHandshakeResponse
Encode DeclineHandshakeResponse
```

#### `newDeclineHandshakeResponse`

``` purescript
newDeclineHandshakeResponse :: DeclineHandshakeResponse
```

Constructs DeclineHandshakeResponse from required parameters

#### `newDeclineHandshakeResponse'`

``` purescript
newDeclineHandshakeResponse' :: ({ "Handshake" :: Maybe (Handshake) } -> { "Handshake" :: Maybe (Handshake) }) -> DeclineHandshakeResponse
```

Constructs DeclineHandshakeResponse's fields from required parameters

#### `DeleteOrganizationalUnitRequest`

``` purescript
newtype DeleteOrganizationalUnitRequest
  = DeleteOrganizationalUnitRequest { "OrganizationalUnitId" :: OrganizationalUnitId }
```

##### Instances
``` purescript
Newtype DeleteOrganizationalUnitRequest _
Generic DeleteOrganizationalUnitRequest _
Show DeleteOrganizationalUnitRequest
Decode DeleteOrganizationalUnitRequest
Encode DeleteOrganizationalUnitRequest
```

#### `newDeleteOrganizationalUnitRequest`

``` purescript
newDeleteOrganizationalUnitRequest :: OrganizationalUnitId -> DeleteOrganizationalUnitRequest
```

Constructs DeleteOrganizationalUnitRequest from required parameters

#### `newDeleteOrganizationalUnitRequest'`

``` purescript
newDeleteOrganizationalUnitRequest' :: OrganizationalUnitId -> ({ "OrganizationalUnitId" :: OrganizationalUnitId } -> { "OrganizationalUnitId" :: OrganizationalUnitId }) -> DeleteOrganizationalUnitRequest
```

Constructs DeleteOrganizationalUnitRequest's fields from required parameters

#### `DeletePolicyRequest`

``` purescript
newtype DeletePolicyRequest
  = DeletePolicyRequest { "PolicyId" :: PolicyId }
```

##### Instances
``` purescript
Newtype DeletePolicyRequest _
Generic DeletePolicyRequest _
Show DeletePolicyRequest
Decode DeletePolicyRequest
Encode DeletePolicyRequest
```

#### `newDeletePolicyRequest`

``` purescript
newDeletePolicyRequest :: PolicyId -> DeletePolicyRequest
```

Constructs DeletePolicyRequest from required parameters

#### `newDeletePolicyRequest'`

``` purescript
newDeletePolicyRequest' :: PolicyId -> ({ "PolicyId" :: PolicyId } -> { "PolicyId" :: PolicyId }) -> DeletePolicyRequest
```

Constructs DeletePolicyRequest's fields from required parameters

#### `DescribeAccountRequest`

``` purescript
newtype DescribeAccountRequest
  = DescribeAccountRequest { "AccountId" :: AccountId }
```

##### Instances
``` purescript
Newtype DescribeAccountRequest _
Generic DescribeAccountRequest _
Show DescribeAccountRequest
Decode DescribeAccountRequest
Encode DescribeAccountRequest
```

#### `newDescribeAccountRequest`

``` purescript
newDescribeAccountRequest :: AccountId -> DescribeAccountRequest
```

Constructs DescribeAccountRequest from required parameters

#### `newDescribeAccountRequest'`

``` purescript
newDescribeAccountRequest' :: AccountId -> ({ "AccountId" :: AccountId } -> { "AccountId" :: AccountId }) -> DescribeAccountRequest
```

Constructs DescribeAccountRequest's fields from required parameters

#### `DescribeAccountResponse`

``` purescript
newtype DescribeAccountResponse
  = DescribeAccountResponse { "Account" :: Maybe (Account) }
```

##### Instances
``` purescript
Newtype DescribeAccountResponse _
Generic DescribeAccountResponse _
Show DescribeAccountResponse
Decode DescribeAccountResponse
Encode DescribeAccountResponse
```

#### `newDescribeAccountResponse`

``` purescript
newDescribeAccountResponse :: DescribeAccountResponse
```

Constructs DescribeAccountResponse from required parameters

#### `newDescribeAccountResponse'`

``` purescript
newDescribeAccountResponse' :: ({ "Account" :: Maybe (Account) } -> { "Account" :: Maybe (Account) }) -> DescribeAccountResponse
```

Constructs DescribeAccountResponse's fields from required parameters

#### `DescribeCreateAccountStatusRequest`

``` purescript
newtype DescribeCreateAccountStatusRequest
  = DescribeCreateAccountStatusRequest { "CreateAccountRequestId" :: CreateAccountRequestId }
```

##### Instances
``` purescript
Newtype DescribeCreateAccountStatusRequest _
Generic DescribeCreateAccountStatusRequest _
Show DescribeCreateAccountStatusRequest
Decode DescribeCreateAccountStatusRequest
Encode DescribeCreateAccountStatusRequest
```

#### `newDescribeCreateAccountStatusRequest`

``` purescript
newDescribeCreateAccountStatusRequest :: CreateAccountRequestId -> DescribeCreateAccountStatusRequest
```

Constructs DescribeCreateAccountStatusRequest from required parameters

#### `newDescribeCreateAccountStatusRequest'`

``` purescript
newDescribeCreateAccountStatusRequest' :: CreateAccountRequestId -> ({ "CreateAccountRequestId" :: CreateAccountRequestId } -> { "CreateAccountRequestId" :: CreateAccountRequestId }) -> DescribeCreateAccountStatusRequest
```

Constructs DescribeCreateAccountStatusRequest's fields from required parameters

#### `DescribeCreateAccountStatusResponse`

``` purescript
newtype DescribeCreateAccountStatusResponse
  = DescribeCreateAccountStatusResponse { "CreateAccountStatus" :: Maybe (CreateAccountStatus) }
```

##### Instances
``` purescript
Newtype DescribeCreateAccountStatusResponse _
Generic DescribeCreateAccountStatusResponse _
Show DescribeCreateAccountStatusResponse
Decode DescribeCreateAccountStatusResponse
Encode DescribeCreateAccountStatusResponse
```

#### `newDescribeCreateAccountStatusResponse`

``` purescript
newDescribeCreateAccountStatusResponse :: DescribeCreateAccountStatusResponse
```

Constructs DescribeCreateAccountStatusResponse from required parameters

#### `newDescribeCreateAccountStatusResponse'`

``` purescript
newDescribeCreateAccountStatusResponse' :: ({ "CreateAccountStatus" :: Maybe (CreateAccountStatus) } -> { "CreateAccountStatus" :: Maybe (CreateAccountStatus) }) -> DescribeCreateAccountStatusResponse
```

Constructs DescribeCreateAccountStatusResponse's fields from required parameters

#### `DescribeHandshakeRequest`

``` purescript
newtype DescribeHandshakeRequest
  = DescribeHandshakeRequest { "HandshakeId" :: HandshakeId }
```

##### Instances
``` purescript
Newtype DescribeHandshakeRequest _
Generic DescribeHandshakeRequest _
Show DescribeHandshakeRequest
Decode DescribeHandshakeRequest
Encode DescribeHandshakeRequest
```

#### `newDescribeHandshakeRequest`

``` purescript
newDescribeHandshakeRequest :: HandshakeId -> DescribeHandshakeRequest
```

Constructs DescribeHandshakeRequest from required parameters

#### `newDescribeHandshakeRequest'`

``` purescript
newDescribeHandshakeRequest' :: HandshakeId -> ({ "HandshakeId" :: HandshakeId } -> { "HandshakeId" :: HandshakeId }) -> DescribeHandshakeRequest
```

Constructs DescribeHandshakeRequest's fields from required parameters

#### `DescribeHandshakeResponse`

``` purescript
newtype DescribeHandshakeResponse
  = DescribeHandshakeResponse { "Handshake" :: Maybe (Handshake) }
```

##### Instances
``` purescript
Newtype DescribeHandshakeResponse _
Generic DescribeHandshakeResponse _
Show DescribeHandshakeResponse
Decode DescribeHandshakeResponse
Encode DescribeHandshakeResponse
```

#### `newDescribeHandshakeResponse`

``` purescript
newDescribeHandshakeResponse :: DescribeHandshakeResponse
```

Constructs DescribeHandshakeResponse from required parameters

#### `newDescribeHandshakeResponse'`

``` purescript
newDescribeHandshakeResponse' :: ({ "Handshake" :: Maybe (Handshake) } -> { "Handshake" :: Maybe (Handshake) }) -> DescribeHandshakeResponse
```

Constructs DescribeHandshakeResponse's fields from required parameters

#### `DescribeOrganizationResponse`

``` purescript
newtype DescribeOrganizationResponse
  = DescribeOrganizationResponse { "Organization" :: Maybe (Organization) }
```

##### Instances
``` purescript
Newtype DescribeOrganizationResponse _
Generic DescribeOrganizationResponse _
Show DescribeOrganizationResponse
Decode DescribeOrganizationResponse
Encode DescribeOrganizationResponse
```

#### `newDescribeOrganizationResponse`

``` purescript
newDescribeOrganizationResponse :: DescribeOrganizationResponse
```

Constructs DescribeOrganizationResponse from required parameters

#### `newDescribeOrganizationResponse'`

``` purescript
newDescribeOrganizationResponse' :: ({ "Organization" :: Maybe (Organization) } -> { "Organization" :: Maybe (Organization) }) -> DescribeOrganizationResponse
```

Constructs DescribeOrganizationResponse's fields from required parameters

#### `DescribeOrganizationalUnitRequest`

``` purescript
newtype DescribeOrganizationalUnitRequest
  = DescribeOrganizationalUnitRequest { "OrganizationalUnitId" :: OrganizationalUnitId }
```

##### Instances
``` purescript
Newtype DescribeOrganizationalUnitRequest _
Generic DescribeOrganizationalUnitRequest _
Show DescribeOrganizationalUnitRequest
Decode DescribeOrganizationalUnitRequest
Encode DescribeOrganizationalUnitRequest
```

#### `newDescribeOrganizationalUnitRequest`

``` purescript
newDescribeOrganizationalUnitRequest :: OrganizationalUnitId -> DescribeOrganizationalUnitRequest
```

Constructs DescribeOrganizationalUnitRequest from required parameters

#### `newDescribeOrganizationalUnitRequest'`

``` purescript
newDescribeOrganizationalUnitRequest' :: OrganizationalUnitId -> ({ "OrganizationalUnitId" :: OrganizationalUnitId } -> { "OrganizationalUnitId" :: OrganizationalUnitId }) -> DescribeOrganizationalUnitRequest
```

Constructs DescribeOrganizationalUnitRequest's fields from required parameters

#### `DescribeOrganizationalUnitResponse`

``` purescript
newtype DescribeOrganizationalUnitResponse
  = DescribeOrganizationalUnitResponse { "OrganizationalUnit" :: Maybe (OrganizationalUnit) }
```

##### Instances
``` purescript
Newtype DescribeOrganizationalUnitResponse _
Generic DescribeOrganizationalUnitResponse _
Show DescribeOrganizationalUnitResponse
Decode DescribeOrganizationalUnitResponse
Encode DescribeOrganizationalUnitResponse
```

#### `newDescribeOrganizationalUnitResponse`

``` purescript
newDescribeOrganizationalUnitResponse :: DescribeOrganizationalUnitResponse
```

Constructs DescribeOrganizationalUnitResponse from required parameters

#### `newDescribeOrganizationalUnitResponse'`

``` purescript
newDescribeOrganizationalUnitResponse' :: ({ "OrganizationalUnit" :: Maybe (OrganizationalUnit) } -> { "OrganizationalUnit" :: Maybe (OrganizationalUnit) }) -> DescribeOrganizationalUnitResponse
```

Constructs DescribeOrganizationalUnitResponse's fields from required parameters

#### `DescribePolicyRequest`

``` purescript
newtype DescribePolicyRequest
  = DescribePolicyRequest { "PolicyId" :: PolicyId }
```

##### Instances
``` purescript
Newtype DescribePolicyRequest _
Generic DescribePolicyRequest _
Show DescribePolicyRequest
Decode DescribePolicyRequest
Encode DescribePolicyRequest
```

#### `newDescribePolicyRequest`

``` purescript
newDescribePolicyRequest :: PolicyId -> DescribePolicyRequest
```

Constructs DescribePolicyRequest from required parameters

#### `newDescribePolicyRequest'`

``` purescript
newDescribePolicyRequest' :: PolicyId -> ({ "PolicyId" :: PolicyId } -> { "PolicyId" :: PolicyId }) -> DescribePolicyRequest
```

Constructs DescribePolicyRequest's fields from required parameters

#### `DescribePolicyResponse`

``` purescript
newtype DescribePolicyResponse
  = DescribePolicyResponse { "Policy" :: Maybe (Policy) }
```

##### Instances
``` purescript
Newtype DescribePolicyResponse _
Generic DescribePolicyResponse _
Show DescribePolicyResponse
Decode DescribePolicyResponse
Encode DescribePolicyResponse
```

#### `newDescribePolicyResponse`

``` purescript
newDescribePolicyResponse :: DescribePolicyResponse
```

Constructs DescribePolicyResponse from required parameters

#### `newDescribePolicyResponse'`

``` purescript
newDescribePolicyResponse' :: ({ "Policy" :: Maybe (Policy) } -> { "Policy" :: Maybe (Policy) }) -> DescribePolicyResponse
```

Constructs DescribePolicyResponse's fields from required parameters

#### `DestinationParentNotFoundException`

``` purescript
newtype DestinationParentNotFoundException
  = DestinationParentNotFoundException { "Message" :: Maybe (ExceptionMessage) }
```

<p>We can't find the destination container (a root or OU) with the ParentId that you specified.</p>

##### Instances
``` purescript
Newtype DestinationParentNotFoundException _
Generic DestinationParentNotFoundException _
Show DestinationParentNotFoundException
Decode DestinationParentNotFoundException
Encode DestinationParentNotFoundException
```

#### `newDestinationParentNotFoundException`

``` purescript
newDestinationParentNotFoundException :: DestinationParentNotFoundException
```

Constructs DestinationParentNotFoundException from required parameters

#### `newDestinationParentNotFoundException'`

``` purescript
newDestinationParentNotFoundException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> DestinationParentNotFoundException
```

Constructs DestinationParentNotFoundException's fields from required parameters

#### `DetachPolicyRequest`

``` purescript
newtype DetachPolicyRequest
  = DetachPolicyRequest { "PolicyId" :: PolicyId, "TargetId" :: PolicyTargetId }
```

##### Instances
``` purescript
Newtype DetachPolicyRequest _
Generic DetachPolicyRequest _
Show DetachPolicyRequest
Decode DetachPolicyRequest
Encode DetachPolicyRequest
```

#### `newDetachPolicyRequest`

``` purescript
newDetachPolicyRequest :: PolicyId -> PolicyTargetId -> DetachPolicyRequest
```

Constructs DetachPolicyRequest from required parameters

#### `newDetachPolicyRequest'`

``` purescript
newDetachPolicyRequest' :: PolicyId -> PolicyTargetId -> ({ "PolicyId" :: PolicyId, "TargetId" :: PolicyTargetId } -> { "PolicyId" :: PolicyId, "TargetId" :: PolicyTargetId }) -> DetachPolicyRequest
```

Constructs DetachPolicyRequest's fields from required parameters

#### `DisableAWSServiceAccessRequest`

``` purescript
newtype DisableAWSServiceAccessRequest
  = DisableAWSServiceAccessRequest { "ServicePrincipal" :: ServicePrincipal }
```

##### Instances
``` purescript
Newtype DisableAWSServiceAccessRequest _
Generic DisableAWSServiceAccessRequest _
Show DisableAWSServiceAccessRequest
Decode DisableAWSServiceAccessRequest
Encode DisableAWSServiceAccessRequest
```

#### `newDisableAWSServiceAccessRequest`

``` purescript
newDisableAWSServiceAccessRequest :: ServicePrincipal -> DisableAWSServiceAccessRequest
```

Constructs DisableAWSServiceAccessRequest from required parameters

#### `newDisableAWSServiceAccessRequest'`

``` purescript
newDisableAWSServiceAccessRequest' :: ServicePrincipal -> ({ "ServicePrincipal" :: ServicePrincipal } -> { "ServicePrincipal" :: ServicePrincipal }) -> DisableAWSServiceAccessRequest
```

Constructs DisableAWSServiceAccessRequest's fields from required parameters

#### `DisablePolicyTypeRequest`

``` purescript
newtype DisablePolicyTypeRequest
  = DisablePolicyTypeRequest { "RootId" :: RootId, "PolicyType" :: PolicyType }
```

##### Instances
``` purescript
Newtype DisablePolicyTypeRequest _
Generic DisablePolicyTypeRequest _
Show DisablePolicyTypeRequest
Decode DisablePolicyTypeRequest
Encode DisablePolicyTypeRequest
```

#### `newDisablePolicyTypeRequest`

``` purescript
newDisablePolicyTypeRequest :: PolicyType -> RootId -> DisablePolicyTypeRequest
```

Constructs DisablePolicyTypeRequest from required parameters

#### `newDisablePolicyTypeRequest'`

``` purescript
newDisablePolicyTypeRequest' :: PolicyType -> RootId -> ({ "RootId" :: RootId, "PolicyType" :: PolicyType } -> { "RootId" :: RootId, "PolicyType" :: PolicyType }) -> DisablePolicyTypeRequest
```

Constructs DisablePolicyTypeRequest's fields from required parameters

#### `DisablePolicyTypeResponse`

``` purescript
newtype DisablePolicyTypeResponse
  = DisablePolicyTypeResponse { "Root" :: Maybe (Root) }
```

##### Instances
``` purescript
Newtype DisablePolicyTypeResponse _
Generic DisablePolicyTypeResponse _
Show DisablePolicyTypeResponse
Decode DisablePolicyTypeResponse
Encode DisablePolicyTypeResponse
```

#### `newDisablePolicyTypeResponse`

``` purescript
newDisablePolicyTypeResponse :: DisablePolicyTypeResponse
```

Constructs DisablePolicyTypeResponse from required parameters

#### `newDisablePolicyTypeResponse'`

``` purescript
newDisablePolicyTypeResponse' :: ({ "Root" :: Maybe (Root) } -> { "Root" :: Maybe (Root) }) -> DisablePolicyTypeResponse
```

Constructs DisablePolicyTypeResponse's fields from required parameters

#### `DuplicateAccountException`

``` purescript
newtype DuplicateAccountException
  = DuplicateAccountException { "Message" :: Maybe (ExceptionMessage) }
```

<p>That account is already present in the specified destination.</p>

##### Instances
``` purescript
Newtype DuplicateAccountException _
Generic DuplicateAccountException _
Show DuplicateAccountException
Decode DuplicateAccountException
Encode DuplicateAccountException
```

#### `newDuplicateAccountException`

``` purescript
newDuplicateAccountException :: DuplicateAccountException
```

Constructs DuplicateAccountException from required parameters

#### `newDuplicateAccountException'`

``` purescript
newDuplicateAccountException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> DuplicateAccountException
```

Constructs DuplicateAccountException's fields from required parameters

#### `DuplicateHandshakeException`

``` purescript
newtype DuplicateHandshakeException
  = DuplicateHandshakeException { "Message" :: Maybe (ExceptionMessage) }
```

<p>A handshake with the same action and target already exists. For example, if you invited an account to join your organization, the invited account might already have a pending invitation from this organization. If you intend to resend an invitation to an account, ensure that existing handshakes that might be considered duplicates are canceled or declined.</p>

##### Instances
``` purescript
Newtype DuplicateHandshakeException _
Generic DuplicateHandshakeException _
Show DuplicateHandshakeException
Decode DuplicateHandshakeException
Encode DuplicateHandshakeException
```

#### `newDuplicateHandshakeException`

``` purescript
newDuplicateHandshakeException :: DuplicateHandshakeException
```

Constructs DuplicateHandshakeException from required parameters

#### `newDuplicateHandshakeException'`

``` purescript
newDuplicateHandshakeException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> DuplicateHandshakeException
```

Constructs DuplicateHandshakeException's fields from required parameters

#### `DuplicateOrganizationalUnitException`

``` purescript
newtype DuplicateOrganizationalUnitException
  = DuplicateOrganizationalUnitException { "Message" :: Maybe (ExceptionMessage) }
```

<p>An organizational unit (OU) with the same name already exists.</p>

##### Instances
``` purescript
Newtype DuplicateOrganizationalUnitException _
Generic DuplicateOrganizationalUnitException _
Show DuplicateOrganizationalUnitException
Decode DuplicateOrganizationalUnitException
Encode DuplicateOrganizationalUnitException
```

#### `newDuplicateOrganizationalUnitException`

``` purescript
newDuplicateOrganizationalUnitException :: DuplicateOrganizationalUnitException
```

Constructs DuplicateOrganizationalUnitException from required parameters

#### `newDuplicateOrganizationalUnitException'`

``` purescript
newDuplicateOrganizationalUnitException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> DuplicateOrganizationalUnitException
```

Constructs DuplicateOrganizationalUnitException's fields from required parameters

#### `DuplicatePolicyAttachmentException`

``` purescript
newtype DuplicatePolicyAttachmentException
  = DuplicatePolicyAttachmentException { "Message" :: Maybe (ExceptionMessage) }
```

<p>The selected policy is already attached to the specified target.</p>

##### Instances
``` purescript
Newtype DuplicatePolicyAttachmentException _
Generic DuplicatePolicyAttachmentException _
Show DuplicatePolicyAttachmentException
Decode DuplicatePolicyAttachmentException
Encode DuplicatePolicyAttachmentException
```

#### `newDuplicatePolicyAttachmentException`

``` purescript
newDuplicatePolicyAttachmentException :: DuplicatePolicyAttachmentException
```

Constructs DuplicatePolicyAttachmentException from required parameters

#### `newDuplicatePolicyAttachmentException'`

``` purescript
newDuplicatePolicyAttachmentException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> DuplicatePolicyAttachmentException
```

Constructs DuplicatePolicyAttachmentException's fields from required parameters

#### `DuplicatePolicyException`

``` purescript
newtype DuplicatePolicyException
  = DuplicatePolicyException { "Message" :: Maybe (ExceptionMessage) }
```

<p>A policy with the same name already exists.</p>

##### Instances
``` purescript
Newtype DuplicatePolicyException _
Generic DuplicatePolicyException _
Show DuplicatePolicyException
Decode DuplicatePolicyException
Encode DuplicatePolicyException
```

#### `newDuplicatePolicyException`

``` purescript
newDuplicatePolicyException :: DuplicatePolicyException
```

Constructs DuplicatePolicyException from required parameters

#### `newDuplicatePolicyException'`

``` purescript
newDuplicatePolicyException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> DuplicatePolicyException
```

Constructs DuplicatePolicyException's fields from required parameters

#### `Email`

``` purescript
newtype Email
  = Email String
```

##### Instances
``` purescript
Newtype Email _
Generic Email _
Show Email
Decode Email
Encode Email
```

#### `EnableAWSServiceAccessRequest`

``` purescript
newtype EnableAWSServiceAccessRequest
  = EnableAWSServiceAccessRequest { "ServicePrincipal" :: ServicePrincipal }
```

##### Instances
``` purescript
Newtype EnableAWSServiceAccessRequest _
Generic EnableAWSServiceAccessRequest _
Show EnableAWSServiceAccessRequest
Decode EnableAWSServiceAccessRequest
Encode EnableAWSServiceAccessRequest
```

#### `newEnableAWSServiceAccessRequest`

``` purescript
newEnableAWSServiceAccessRequest :: ServicePrincipal -> EnableAWSServiceAccessRequest
```

Constructs EnableAWSServiceAccessRequest from required parameters

#### `newEnableAWSServiceAccessRequest'`

``` purescript
newEnableAWSServiceAccessRequest' :: ServicePrincipal -> ({ "ServicePrincipal" :: ServicePrincipal } -> { "ServicePrincipal" :: ServicePrincipal }) -> EnableAWSServiceAccessRequest
```

Constructs EnableAWSServiceAccessRequest's fields from required parameters

#### `EnableAllFeaturesRequest`

``` purescript
newtype EnableAllFeaturesRequest
  = EnableAllFeaturesRequest NoArguments
```

##### Instances
``` purescript
Newtype EnableAllFeaturesRequest _
Generic EnableAllFeaturesRequest _
Show EnableAllFeaturesRequest
Decode EnableAllFeaturesRequest
Encode EnableAllFeaturesRequest
```

#### `EnableAllFeaturesResponse`

``` purescript
newtype EnableAllFeaturesResponse
  = EnableAllFeaturesResponse { "Handshake" :: Maybe (Handshake) }
```

##### Instances
``` purescript
Newtype EnableAllFeaturesResponse _
Generic EnableAllFeaturesResponse _
Show EnableAllFeaturesResponse
Decode EnableAllFeaturesResponse
Encode EnableAllFeaturesResponse
```

#### `newEnableAllFeaturesResponse`

``` purescript
newEnableAllFeaturesResponse :: EnableAllFeaturesResponse
```

Constructs EnableAllFeaturesResponse from required parameters

#### `newEnableAllFeaturesResponse'`

``` purescript
newEnableAllFeaturesResponse' :: ({ "Handshake" :: Maybe (Handshake) } -> { "Handshake" :: Maybe (Handshake) }) -> EnableAllFeaturesResponse
```

Constructs EnableAllFeaturesResponse's fields from required parameters

#### `EnablePolicyTypeRequest`

``` purescript
newtype EnablePolicyTypeRequest
  = EnablePolicyTypeRequest { "RootId" :: RootId, "PolicyType" :: PolicyType }
```

##### Instances
``` purescript
Newtype EnablePolicyTypeRequest _
Generic EnablePolicyTypeRequest _
Show EnablePolicyTypeRequest
Decode EnablePolicyTypeRequest
Encode EnablePolicyTypeRequest
```

#### `newEnablePolicyTypeRequest`

``` purescript
newEnablePolicyTypeRequest :: PolicyType -> RootId -> EnablePolicyTypeRequest
```

Constructs EnablePolicyTypeRequest from required parameters

#### `newEnablePolicyTypeRequest'`

``` purescript
newEnablePolicyTypeRequest' :: PolicyType -> RootId -> ({ "RootId" :: RootId, "PolicyType" :: PolicyType } -> { "RootId" :: RootId, "PolicyType" :: PolicyType }) -> EnablePolicyTypeRequest
```

Constructs EnablePolicyTypeRequest's fields from required parameters

#### `EnablePolicyTypeResponse`

``` purescript
newtype EnablePolicyTypeResponse
  = EnablePolicyTypeResponse { "Root" :: Maybe (Root) }
```

##### Instances
``` purescript
Newtype EnablePolicyTypeResponse _
Generic EnablePolicyTypeResponse _
Show EnablePolicyTypeResponse
Decode EnablePolicyTypeResponse
Encode EnablePolicyTypeResponse
```

#### `newEnablePolicyTypeResponse`

``` purescript
newEnablePolicyTypeResponse :: EnablePolicyTypeResponse
```

Constructs EnablePolicyTypeResponse from required parameters

#### `newEnablePolicyTypeResponse'`

``` purescript
newEnablePolicyTypeResponse' :: ({ "Root" :: Maybe (Root) } -> { "Root" :: Maybe (Root) }) -> EnablePolicyTypeResponse
```

Constructs EnablePolicyTypeResponse's fields from required parameters

#### `EnabledServicePrincipal`

``` purescript
newtype EnabledServicePrincipal
  = EnabledServicePrincipal { "ServicePrincipal" :: Maybe (ServicePrincipal), "DateEnabled" :: Maybe (Timestamp) }
```

<p>A structure that contains details of a service principal that is enabled to integrate with AWS Organizations.</p>

##### Instances
``` purescript
Newtype EnabledServicePrincipal _
Generic EnabledServicePrincipal _
Show EnabledServicePrincipal
Decode EnabledServicePrincipal
Encode EnabledServicePrincipal
```

#### `newEnabledServicePrincipal`

``` purescript
newEnabledServicePrincipal :: EnabledServicePrincipal
```

Constructs EnabledServicePrincipal from required parameters

#### `newEnabledServicePrincipal'`

``` purescript
newEnabledServicePrincipal' :: ({ "ServicePrincipal" :: Maybe (ServicePrincipal), "DateEnabled" :: Maybe (Timestamp) } -> { "ServicePrincipal" :: Maybe (ServicePrincipal), "DateEnabled" :: Maybe (Timestamp) }) -> EnabledServicePrincipal
```

Constructs EnabledServicePrincipal's fields from required parameters

#### `EnabledServicePrincipals`

``` purescript
newtype EnabledServicePrincipals
  = EnabledServicePrincipals (Array EnabledServicePrincipal)
```

##### Instances
``` purescript
Newtype EnabledServicePrincipals _
Generic EnabledServicePrincipals _
Show EnabledServicePrincipals
Decode EnabledServicePrincipals
Encode EnabledServicePrincipals
```

#### `ExceptionMessage`

``` purescript
newtype ExceptionMessage
  = ExceptionMessage String
```

##### Instances
``` purescript
Newtype ExceptionMessage _
Generic ExceptionMessage _
Show ExceptionMessage
Decode ExceptionMessage
Encode ExceptionMessage
```

#### `ExceptionType`

``` purescript
newtype ExceptionType
  = ExceptionType String
```

##### Instances
``` purescript
Newtype ExceptionType _
Generic ExceptionType _
Show ExceptionType
Decode ExceptionType
Encode ExceptionType
```

#### `FinalizingOrganizationException`

``` purescript
newtype FinalizingOrganizationException
  = FinalizingOrganizationException { "Message" :: Maybe (ExceptionMessage) }
```

<p>AWS Organizations could not finalize the creation of your organization. Try again later. If this persists, contact AWS customer support.</p>

##### Instances
``` purescript
Newtype FinalizingOrganizationException _
Generic FinalizingOrganizationException _
Show FinalizingOrganizationException
Decode FinalizingOrganizationException
Encode FinalizingOrganizationException
```

#### `newFinalizingOrganizationException`

``` purescript
newFinalizingOrganizationException :: FinalizingOrganizationException
```

Constructs FinalizingOrganizationException from required parameters

#### `newFinalizingOrganizationException'`

``` purescript
newFinalizingOrganizationException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> FinalizingOrganizationException
```

Constructs FinalizingOrganizationException's fields from required parameters

#### `GenericArn`

``` purescript
newtype GenericArn
  = GenericArn String
```

##### Instances
``` purescript
Newtype GenericArn _
Generic GenericArn _
Show GenericArn
Decode GenericArn
Encode GenericArn
```

#### `Handshake`

``` purescript
newtype Handshake
  = Handshake { "Id" :: Maybe (HandshakeId), "Arn" :: Maybe (HandshakeArn), "Parties" :: Maybe (HandshakeParties), "State" :: Maybe (HandshakeState), "RequestedTimestamp" :: Maybe (Timestamp), "ExpirationTimestamp" :: Maybe (Timestamp), "Action" :: Maybe (ActionType), "Resources" :: Maybe (HandshakeResources) }
```

<p>Contains information that must be exchanged to securely establish a relationship between two accounts (an <i>originator</i> and a <i>recipient</i>). For example, when a master account (the originator) invites another account (the recipient) to join its organization, the two accounts exchange information as a series of handshake requests and responses.</p> <p> <b>Note:</b> Handshakes that are CANCELED, ACCEPTED, or DECLINED show up in lists for only 30 days after entering that state After that they are deleted.</p>

##### Instances
``` purescript
Newtype Handshake _
Generic Handshake _
Show Handshake
Decode Handshake
Encode Handshake
```

#### `newHandshake`

``` purescript
newHandshake :: Handshake
```

Constructs Handshake from required parameters

#### `newHandshake'`

``` purescript
newHandshake' :: ({ "Id" :: Maybe (HandshakeId), "Arn" :: Maybe (HandshakeArn), "Parties" :: Maybe (HandshakeParties), "State" :: Maybe (HandshakeState), "RequestedTimestamp" :: Maybe (Timestamp), "ExpirationTimestamp" :: Maybe (Timestamp), "Action" :: Maybe (ActionType), "Resources" :: Maybe (HandshakeResources) } -> { "Id" :: Maybe (HandshakeId), "Arn" :: Maybe (HandshakeArn), "Parties" :: Maybe (HandshakeParties), "State" :: Maybe (HandshakeState), "RequestedTimestamp" :: Maybe (Timestamp), "ExpirationTimestamp" :: Maybe (Timestamp), "Action" :: Maybe (ActionType), "Resources" :: Maybe (HandshakeResources) }) -> Handshake
```

Constructs Handshake's fields from required parameters

#### `HandshakeAlreadyInStateException`

``` purescript
newtype HandshakeAlreadyInStateException
  = HandshakeAlreadyInStateException { "Message" :: Maybe (ExceptionMessage) }
```

<p>The specified handshake is already in the requested state. For example, you can't accept a handshake that was already accepted.</p>

##### Instances
``` purescript
Newtype HandshakeAlreadyInStateException _
Generic HandshakeAlreadyInStateException _
Show HandshakeAlreadyInStateException
Decode HandshakeAlreadyInStateException
Encode HandshakeAlreadyInStateException
```

#### `newHandshakeAlreadyInStateException`

``` purescript
newHandshakeAlreadyInStateException :: HandshakeAlreadyInStateException
```

Constructs HandshakeAlreadyInStateException from required parameters

#### `newHandshakeAlreadyInStateException'`

``` purescript
newHandshakeAlreadyInStateException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> HandshakeAlreadyInStateException
```

Constructs HandshakeAlreadyInStateException's fields from required parameters

#### `HandshakeArn`

``` purescript
newtype HandshakeArn
  = HandshakeArn String
```

##### Instances
``` purescript
Newtype HandshakeArn _
Generic HandshakeArn _
Show HandshakeArn
Decode HandshakeArn
Encode HandshakeArn
```

#### `HandshakeConstraintViolationException`

``` purescript
newtype HandshakeConstraintViolationException
  = HandshakeConstraintViolationException { "Message" :: Maybe (ExceptionMessage), "Reason" :: Maybe (HandshakeConstraintViolationExceptionReason) }
```

<p>The requested operation would violate the constraint identified in the reason code.</p> <note> <p>Some of the reasons in the following list might not be applicable to this specific API or operation:</p> </note> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. <b>Note</b>: deleted and closed accounts still count toward your limit.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>ALREADY_IN_AN_ORGANIZATION: The handshake request is invalid because the invited account is already a member of an organization.</p> </li> <li> <p>ORGANIZATION_ALREADY_HAS_ALL_FEATURES: The handshake request is invalid because the organization has already enabled all features.</p> </li> <li> <p>INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES: You cannot issue new invitations to join an organization while it is in the process of enabling all features. You can resume inviting accounts after you finalize the process when all accounts have agreed to the change.</p> </li> <li> <p>PAYMENT_INSTRUMENT_REQUIRED: You cannot complete the operation with an account that does not have a payment instrument, such as a credit card, associated with it.</p> </li> <li> <p>ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD: The request failed because the account is from a different marketplace than the accounts in the organization. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be from the same marketplace.</p> </li> <li> <p>ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED: You attempted to change the membership of an account too quickly after its previous change.</p> </li> </ul>

##### Instances
``` purescript
Newtype HandshakeConstraintViolationException _
Generic HandshakeConstraintViolationException _
Show HandshakeConstraintViolationException
Decode HandshakeConstraintViolationException
Encode HandshakeConstraintViolationException
```

#### `newHandshakeConstraintViolationException`

``` purescript
newHandshakeConstraintViolationException :: HandshakeConstraintViolationException
```

Constructs HandshakeConstraintViolationException from required parameters

#### `newHandshakeConstraintViolationException'`

``` purescript
newHandshakeConstraintViolationException' :: ({ "Message" :: Maybe (ExceptionMessage), "Reason" :: Maybe (HandshakeConstraintViolationExceptionReason) } -> { "Message" :: Maybe (ExceptionMessage), "Reason" :: Maybe (HandshakeConstraintViolationExceptionReason) }) -> HandshakeConstraintViolationException
```

Constructs HandshakeConstraintViolationException's fields from required parameters

#### `HandshakeConstraintViolationExceptionReason`

``` purescript
newtype HandshakeConstraintViolationExceptionReason
  = HandshakeConstraintViolationExceptionReason String
```

##### Instances
``` purescript
Newtype HandshakeConstraintViolationExceptionReason _
Generic HandshakeConstraintViolationExceptionReason _
Show HandshakeConstraintViolationExceptionReason
Decode HandshakeConstraintViolationExceptionReason
Encode HandshakeConstraintViolationExceptionReason
```

#### `HandshakeFilter`

``` purescript
newtype HandshakeFilter
  = HandshakeFilter { "ActionType" :: Maybe (ActionType), "ParentHandshakeId" :: Maybe (HandshakeId) }
```

<p>Specifies the criteria that are used to select the handshakes for the operation.</p>

##### Instances
``` purescript
Newtype HandshakeFilter _
Generic HandshakeFilter _
Show HandshakeFilter
Decode HandshakeFilter
Encode HandshakeFilter
```

#### `newHandshakeFilter`

``` purescript
newHandshakeFilter :: HandshakeFilter
```

Constructs HandshakeFilter from required parameters

#### `newHandshakeFilter'`

``` purescript
newHandshakeFilter' :: ({ "ActionType" :: Maybe (ActionType), "ParentHandshakeId" :: Maybe (HandshakeId) } -> { "ActionType" :: Maybe (ActionType), "ParentHandshakeId" :: Maybe (HandshakeId) }) -> HandshakeFilter
```

Constructs HandshakeFilter's fields from required parameters

#### `HandshakeId`

``` purescript
newtype HandshakeId
  = HandshakeId String
```

##### Instances
``` purescript
Newtype HandshakeId _
Generic HandshakeId _
Show HandshakeId
Decode HandshakeId
Encode HandshakeId
```

#### `HandshakeNotFoundException`

``` purescript
newtype HandshakeNotFoundException
  = HandshakeNotFoundException { "Message" :: Maybe (ExceptionMessage) }
```

<p>We can't find a handshake with the HandshakeId that you specified.</p>

##### Instances
``` purescript
Newtype HandshakeNotFoundException _
Generic HandshakeNotFoundException _
Show HandshakeNotFoundException
Decode HandshakeNotFoundException
Encode HandshakeNotFoundException
```

#### `newHandshakeNotFoundException`

``` purescript
newHandshakeNotFoundException :: HandshakeNotFoundException
```

Constructs HandshakeNotFoundException from required parameters

#### `newHandshakeNotFoundException'`

``` purescript
newHandshakeNotFoundException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> HandshakeNotFoundException
```

Constructs HandshakeNotFoundException's fields from required parameters

#### `HandshakeNotes`

``` purescript
newtype HandshakeNotes
  = HandshakeNotes String
```

##### Instances
``` purescript
Newtype HandshakeNotes _
Generic HandshakeNotes _
Show HandshakeNotes
Decode HandshakeNotes
Encode HandshakeNotes
```

#### `HandshakeParties`

``` purescript
newtype HandshakeParties
  = HandshakeParties (Array HandshakeParty)
```

##### Instances
``` purescript
Newtype HandshakeParties _
Generic HandshakeParties _
Show HandshakeParties
Decode HandshakeParties
Encode HandshakeParties
```

#### `HandshakeParty`

``` purescript
newtype HandshakeParty
  = HandshakeParty { "Id" :: HandshakePartyId, "Type" :: HandshakePartyType }
```

<p>Identifies a participant in a handshake.</p>

##### Instances
``` purescript
Newtype HandshakeParty _
Generic HandshakeParty _
Show HandshakeParty
Decode HandshakeParty
Encode HandshakeParty
```

#### `newHandshakeParty`

``` purescript
newHandshakeParty :: HandshakePartyId -> HandshakePartyType -> HandshakeParty
```

Constructs HandshakeParty from required parameters

#### `newHandshakeParty'`

``` purescript
newHandshakeParty' :: HandshakePartyId -> HandshakePartyType -> ({ "Id" :: HandshakePartyId, "Type" :: HandshakePartyType } -> { "Id" :: HandshakePartyId, "Type" :: HandshakePartyType }) -> HandshakeParty
```

Constructs HandshakeParty's fields from required parameters

#### `HandshakePartyId`

``` purescript
newtype HandshakePartyId
  = HandshakePartyId String
```

##### Instances
``` purescript
Newtype HandshakePartyId _
Generic HandshakePartyId _
Show HandshakePartyId
Decode HandshakePartyId
Encode HandshakePartyId
```

#### `HandshakePartyType`

``` purescript
newtype HandshakePartyType
  = HandshakePartyType String
```

##### Instances
``` purescript
Newtype HandshakePartyType _
Generic HandshakePartyType _
Show HandshakePartyType
Decode HandshakePartyType
Encode HandshakePartyType
```

#### `HandshakeResource`

``` purescript
newtype HandshakeResource
  = HandshakeResource { "Value" :: Maybe (HandshakeResourceValue), "Type" :: Maybe (HandshakeResourceType) }
```

<p>Contains additional data that is needed to process a handshake.</p>

##### Instances
``` purescript
Newtype HandshakeResource _
Generic HandshakeResource _
Show HandshakeResource
Decode HandshakeResource
Encode HandshakeResource
```

#### `newHandshakeResource`

``` purescript
newHandshakeResource :: HandshakeResource
```

Constructs HandshakeResource from required parameters

#### `newHandshakeResource'`

``` purescript
newHandshakeResource' :: ({ "Value" :: Maybe (HandshakeResourceValue), "Type" :: Maybe (HandshakeResourceType) } -> { "Value" :: Maybe (HandshakeResourceValue), "Type" :: Maybe (HandshakeResourceType) }) -> HandshakeResource
```

Constructs HandshakeResource's fields from required parameters

#### `HandshakeResourceType`

``` purescript
newtype HandshakeResourceType
  = HandshakeResourceType String
```

##### Instances
``` purescript
Newtype HandshakeResourceType _
Generic HandshakeResourceType _
Show HandshakeResourceType
Decode HandshakeResourceType
Encode HandshakeResourceType
```

#### `HandshakeResourceValue`

``` purescript
newtype HandshakeResourceValue
  = HandshakeResourceValue String
```

##### Instances
``` purescript
Newtype HandshakeResourceValue _
Generic HandshakeResourceValue _
Show HandshakeResourceValue
Decode HandshakeResourceValue
Encode HandshakeResourceValue
```

#### `HandshakeResources`

``` purescript
newtype HandshakeResources
  = HandshakeResources (Array HandshakeResource)
```

##### Instances
``` purescript
Newtype HandshakeResources _
Generic HandshakeResources _
Show HandshakeResources
Decode HandshakeResources
Encode HandshakeResources
```

#### `HandshakeState`

``` purescript
newtype HandshakeState
  = HandshakeState String
```

##### Instances
``` purescript
Newtype HandshakeState _
Generic HandshakeState _
Show HandshakeState
Decode HandshakeState
Encode HandshakeState
```

#### `Handshakes`

``` purescript
newtype Handshakes
  = Handshakes (Array Handshake)
```

##### Instances
``` purescript
Newtype Handshakes _
Generic Handshakes _
Show Handshakes
Decode Handshakes
Encode Handshakes
```

#### `IAMUserAccessToBilling`

``` purescript
newtype IAMUserAccessToBilling
  = IAMUserAccessToBilling String
```

##### Instances
``` purescript
Newtype IAMUserAccessToBilling _
Generic IAMUserAccessToBilling _
Show IAMUserAccessToBilling
Decode IAMUserAccessToBilling
Encode IAMUserAccessToBilling
```

#### `InvalidHandshakeTransitionException`

``` purescript
newtype InvalidHandshakeTransitionException
  = InvalidHandshakeTransitionException { "Message" :: Maybe (ExceptionMessage) }
```

<p>You can't perform the operation on the handshake in its current state. For example, you can't cancel a handshake that was already accepted, or accept a handshake that was already declined.</p>

##### Instances
``` purescript
Newtype InvalidHandshakeTransitionException _
Generic InvalidHandshakeTransitionException _
Show InvalidHandshakeTransitionException
Decode InvalidHandshakeTransitionException
Encode InvalidHandshakeTransitionException
```

#### `newInvalidHandshakeTransitionException`

``` purescript
newInvalidHandshakeTransitionException :: InvalidHandshakeTransitionException
```

Constructs InvalidHandshakeTransitionException from required parameters

#### `newInvalidHandshakeTransitionException'`

``` purescript
newInvalidHandshakeTransitionException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> InvalidHandshakeTransitionException
```

Constructs InvalidHandshakeTransitionException's fields from required parameters

#### `InvalidInputException`

``` purescript
newtype InvalidInputException
  = InvalidInputException { "Message" :: Maybe (ExceptionMessage), "Reason" :: Maybe (InvalidInputExceptionReason) }
```

<p>The requested operation failed because you provided invalid values for one or more of the request parameters. This exception includes a reason that contains additional information about the violated limit:</p> <note> <p>Some of the reasons in the following list might not be applicable to this specific API or operation:</p> </note> <ul> <li> <p>INVALID_PARTY_TYPE_TARGET: You specified the wrong type of entity (account, organization, or email) as a party.</p> </li> <li> <p>INVALID_SYNTAX_ORGANIZATION_ARN: You specified an invalid ARN for the organization.</p> </li> <li> <p>INVALID_SYNTAX_POLICY_ID: You specified an invalid policy ID. </p> </li> <li> <p>INVALID_ENUM: You specified a value that is not valid for that parameter.</p> </li> <li> <p>INVALID_FULL_NAME_TARGET: You specified a full name that contains invalid characters.</p> </li> <li> <p>INVALID_LIST_MEMBER: You provided a list to a parameter that contains at least one invalid value.</p> </li> <li> <p>MAX_LENGTH_EXCEEDED: You provided a string parameter that is longer than allowed.</p> </li> <li> <p>MAX_VALUE_EXCEEDED: You provided a numeric parameter that has a larger value than allowed.</p> </li> <li> <p>MIN_LENGTH_EXCEEDED: You provided a string parameter that is shorter than allowed.</p> </li> <li> <p>MIN_VALUE_EXCEEDED: You provided a numeric parameter that has a smaller value than allowed.</p> </li> <li> <p>IMMUTABLE_POLICY: You specified a policy that is managed by AWS and cannot be modified.</p> </li> <li> <p>INVALID_PATTERN: You provided a value that doesn't match the required pattern.</p> </li> <li> <p>INVALID_PATTERN_TARGET_ID: You specified a policy target ID that doesn't match the required pattern.</p> </li> <li> <p>INPUT_REQUIRED: You must include a value for all required parameters.</p> </li> <li> <p>INVALID_PAGINATION_TOKEN: Get the value for the NextToken parameter from the response to a previous call of the operation.</p> </li> <li> <p>MAX_FILTER_LIMIT_EXCEEDED: You can specify only one filter parameter for the operation.</p> </li> <li> <p>MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS: You can move an account only between entities in the same root.</p> </li> </ul>

##### Instances
``` purescript
Newtype InvalidInputException _
Generic InvalidInputException _
Show InvalidInputException
Decode InvalidInputException
Encode InvalidInputException
```

#### `newInvalidInputException`

``` purescript
newInvalidInputException :: InvalidInputException
```

Constructs InvalidInputException from required parameters

#### `newInvalidInputException'`

``` purescript
newInvalidInputException' :: ({ "Message" :: Maybe (ExceptionMessage), "Reason" :: Maybe (InvalidInputExceptionReason) } -> { "Message" :: Maybe (ExceptionMessage), "Reason" :: Maybe (InvalidInputExceptionReason) }) -> InvalidInputException
```

Constructs InvalidInputException's fields from required parameters

#### `InvalidInputExceptionReason`

``` purescript
newtype InvalidInputExceptionReason
  = InvalidInputExceptionReason String
```

##### Instances
``` purescript
Newtype InvalidInputExceptionReason _
Generic InvalidInputExceptionReason _
Show InvalidInputExceptionReason
Decode InvalidInputExceptionReason
Encode InvalidInputExceptionReason
```

#### `InviteAccountToOrganizationRequest`

``` purescript
newtype InviteAccountToOrganizationRequest
  = InviteAccountToOrganizationRequest { "Target" :: HandshakeParty, "Notes" :: Maybe (HandshakeNotes) }
```

##### Instances
``` purescript
Newtype InviteAccountToOrganizationRequest _
Generic InviteAccountToOrganizationRequest _
Show InviteAccountToOrganizationRequest
Decode InviteAccountToOrganizationRequest
Encode InviteAccountToOrganizationRequest
```

#### `newInviteAccountToOrganizationRequest`

``` purescript
newInviteAccountToOrganizationRequest :: HandshakeParty -> InviteAccountToOrganizationRequest
```

Constructs InviteAccountToOrganizationRequest from required parameters

#### `newInviteAccountToOrganizationRequest'`

``` purescript
newInviteAccountToOrganizationRequest' :: HandshakeParty -> ({ "Target" :: HandshakeParty, "Notes" :: Maybe (HandshakeNotes) } -> { "Target" :: HandshakeParty, "Notes" :: Maybe (HandshakeNotes) }) -> InviteAccountToOrganizationRequest
```

Constructs InviteAccountToOrganizationRequest's fields from required parameters

#### `InviteAccountToOrganizationResponse`

``` purescript
newtype InviteAccountToOrganizationResponse
  = InviteAccountToOrganizationResponse { "Handshake" :: Maybe (Handshake) }
```

##### Instances
``` purescript
Newtype InviteAccountToOrganizationResponse _
Generic InviteAccountToOrganizationResponse _
Show InviteAccountToOrganizationResponse
Decode InviteAccountToOrganizationResponse
Encode InviteAccountToOrganizationResponse
```

#### `newInviteAccountToOrganizationResponse`

``` purescript
newInviteAccountToOrganizationResponse :: InviteAccountToOrganizationResponse
```

Constructs InviteAccountToOrganizationResponse from required parameters

#### `newInviteAccountToOrganizationResponse'`

``` purescript
newInviteAccountToOrganizationResponse' :: ({ "Handshake" :: Maybe (Handshake) } -> { "Handshake" :: Maybe (Handshake) }) -> InviteAccountToOrganizationResponse
```

Constructs InviteAccountToOrganizationResponse's fields from required parameters

#### `ListAWSServiceAccessForOrganizationRequest`

``` purescript
newtype ListAWSServiceAccessForOrganizationRequest
  = ListAWSServiceAccessForOrganizationRequest { "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListAWSServiceAccessForOrganizationRequest _
Generic ListAWSServiceAccessForOrganizationRequest _
Show ListAWSServiceAccessForOrganizationRequest
Decode ListAWSServiceAccessForOrganizationRequest
Encode ListAWSServiceAccessForOrganizationRequest
```

#### `newListAWSServiceAccessForOrganizationRequest`

``` purescript
newListAWSServiceAccessForOrganizationRequest :: ListAWSServiceAccessForOrganizationRequest
```

Constructs ListAWSServiceAccessForOrganizationRequest from required parameters

#### `newListAWSServiceAccessForOrganizationRequest'`

``` purescript
newListAWSServiceAccessForOrganizationRequest' :: ({ "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListAWSServiceAccessForOrganizationRequest
```

Constructs ListAWSServiceAccessForOrganizationRequest's fields from required parameters

#### `ListAWSServiceAccessForOrganizationResponse`

``` purescript
newtype ListAWSServiceAccessForOrganizationResponse
  = ListAWSServiceAccessForOrganizationResponse { "EnabledServicePrincipals" :: Maybe (EnabledServicePrincipals), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListAWSServiceAccessForOrganizationResponse _
Generic ListAWSServiceAccessForOrganizationResponse _
Show ListAWSServiceAccessForOrganizationResponse
Decode ListAWSServiceAccessForOrganizationResponse
Encode ListAWSServiceAccessForOrganizationResponse
```

#### `newListAWSServiceAccessForOrganizationResponse`

``` purescript
newListAWSServiceAccessForOrganizationResponse :: ListAWSServiceAccessForOrganizationResponse
```

Constructs ListAWSServiceAccessForOrganizationResponse from required parameters

#### `newListAWSServiceAccessForOrganizationResponse'`

``` purescript
newListAWSServiceAccessForOrganizationResponse' :: ({ "EnabledServicePrincipals" :: Maybe (EnabledServicePrincipals), "NextToken" :: Maybe (NextToken) } -> { "EnabledServicePrincipals" :: Maybe (EnabledServicePrincipals), "NextToken" :: Maybe (NextToken) }) -> ListAWSServiceAccessForOrganizationResponse
```

Constructs ListAWSServiceAccessForOrganizationResponse's fields from required parameters

#### `ListAccountsForParentRequest`

``` purescript
newtype ListAccountsForParentRequest
  = ListAccountsForParentRequest { "ParentId" :: ParentId, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListAccountsForParentRequest _
Generic ListAccountsForParentRequest _
Show ListAccountsForParentRequest
Decode ListAccountsForParentRequest
Encode ListAccountsForParentRequest
```

#### `newListAccountsForParentRequest`

``` purescript
newListAccountsForParentRequest :: ParentId -> ListAccountsForParentRequest
```

Constructs ListAccountsForParentRequest from required parameters

#### `newListAccountsForParentRequest'`

``` purescript
newListAccountsForParentRequest' :: ParentId -> ({ "ParentId" :: ParentId, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "ParentId" :: ParentId, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListAccountsForParentRequest
```

Constructs ListAccountsForParentRequest's fields from required parameters

#### `ListAccountsForParentResponse`

``` purescript
newtype ListAccountsForParentResponse
  = ListAccountsForParentResponse { "Accounts" :: Maybe (Accounts), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListAccountsForParentResponse _
Generic ListAccountsForParentResponse _
Show ListAccountsForParentResponse
Decode ListAccountsForParentResponse
Encode ListAccountsForParentResponse
```

#### `newListAccountsForParentResponse`

``` purescript
newListAccountsForParentResponse :: ListAccountsForParentResponse
```

Constructs ListAccountsForParentResponse from required parameters

#### `newListAccountsForParentResponse'`

``` purescript
newListAccountsForParentResponse' :: ({ "Accounts" :: Maybe (Accounts), "NextToken" :: Maybe (NextToken) } -> { "Accounts" :: Maybe (Accounts), "NextToken" :: Maybe (NextToken) }) -> ListAccountsForParentResponse
```

Constructs ListAccountsForParentResponse's fields from required parameters

#### `ListAccountsRequest`

``` purescript
newtype ListAccountsRequest
  = ListAccountsRequest { "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListAccountsRequest _
Generic ListAccountsRequest _
Show ListAccountsRequest
Decode ListAccountsRequest
Encode ListAccountsRequest
```

#### `newListAccountsRequest`

``` purescript
newListAccountsRequest :: ListAccountsRequest
```

Constructs ListAccountsRequest from required parameters

#### `newListAccountsRequest'`

``` purescript
newListAccountsRequest' :: ({ "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListAccountsRequest
```

Constructs ListAccountsRequest's fields from required parameters

#### `ListAccountsResponse`

``` purescript
newtype ListAccountsResponse
  = ListAccountsResponse { "Accounts" :: Maybe (Accounts), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListAccountsResponse _
Generic ListAccountsResponse _
Show ListAccountsResponse
Decode ListAccountsResponse
Encode ListAccountsResponse
```

#### `newListAccountsResponse`

``` purescript
newListAccountsResponse :: ListAccountsResponse
```

Constructs ListAccountsResponse from required parameters

#### `newListAccountsResponse'`

``` purescript
newListAccountsResponse' :: ({ "Accounts" :: Maybe (Accounts), "NextToken" :: Maybe (NextToken) } -> { "Accounts" :: Maybe (Accounts), "NextToken" :: Maybe (NextToken) }) -> ListAccountsResponse
```

Constructs ListAccountsResponse's fields from required parameters

#### `ListChildrenRequest`

``` purescript
newtype ListChildrenRequest
  = ListChildrenRequest { "ParentId" :: ParentId, "ChildType" :: ChildType, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListChildrenRequest _
Generic ListChildrenRequest _
Show ListChildrenRequest
Decode ListChildrenRequest
Encode ListChildrenRequest
```

#### `newListChildrenRequest`

``` purescript
newListChildrenRequest :: ChildType -> ParentId -> ListChildrenRequest
```

Constructs ListChildrenRequest from required parameters

#### `newListChildrenRequest'`

``` purescript
newListChildrenRequest' :: ChildType -> ParentId -> ({ "ParentId" :: ParentId, "ChildType" :: ChildType, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "ParentId" :: ParentId, "ChildType" :: ChildType, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListChildrenRequest
```

Constructs ListChildrenRequest's fields from required parameters

#### `ListChildrenResponse`

``` purescript
newtype ListChildrenResponse
  = ListChildrenResponse { "Children" :: Maybe (Children), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListChildrenResponse _
Generic ListChildrenResponse _
Show ListChildrenResponse
Decode ListChildrenResponse
Encode ListChildrenResponse
```

#### `newListChildrenResponse`

``` purescript
newListChildrenResponse :: ListChildrenResponse
```

Constructs ListChildrenResponse from required parameters

#### `newListChildrenResponse'`

``` purescript
newListChildrenResponse' :: ({ "Children" :: Maybe (Children), "NextToken" :: Maybe (NextToken) } -> { "Children" :: Maybe (Children), "NextToken" :: Maybe (NextToken) }) -> ListChildrenResponse
```

Constructs ListChildrenResponse's fields from required parameters

#### `ListCreateAccountStatusRequest`

``` purescript
newtype ListCreateAccountStatusRequest
  = ListCreateAccountStatusRequest { "States" :: Maybe (CreateAccountStates), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListCreateAccountStatusRequest _
Generic ListCreateAccountStatusRequest _
Show ListCreateAccountStatusRequest
Decode ListCreateAccountStatusRequest
Encode ListCreateAccountStatusRequest
```

#### `newListCreateAccountStatusRequest`

``` purescript
newListCreateAccountStatusRequest :: ListCreateAccountStatusRequest
```

Constructs ListCreateAccountStatusRequest from required parameters

#### `newListCreateAccountStatusRequest'`

``` purescript
newListCreateAccountStatusRequest' :: ({ "States" :: Maybe (CreateAccountStates), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "States" :: Maybe (CreateAccountStates), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListCreateAccountStatusRequest
```

Constructs ListCreateAccountStatusRequest's fields from required parameters

#### `ListCreateAccountStatusResponse`

``` purescript
newtype ListCreateAccountStatusResponse
  = ListCreateAccountStatusResponse { "CreateAccountStatuses" :: Maybe (CreateAccountStatuses), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListCreateAccountStatusResponse _
Generic ListCreateAccountStatusResponse _
Show ListCreateAccountStatusResponse
Decode ListCreateAccountStatusResponse
Encode ListCreateAccountStatusResponse
```

#### `newListCreateAccountStatusResponse`

``` purescript
newListCreateAccountStatusResponse :: ListCreateAccountStatusResponse
```

Constructs ListCreateAccountStatusResponse from required parameters

#### `newListCreateAccountStatusResponse'`

``` purescript
newListCreateAccountStatusResponse' :: ({ "CreateAccountStatuses" :: Maybe (CreateAccountStatuses), "NextToken" :: Maybe (NextToken) } -> { "CreateAccountStatuses" :: Maybe (CreateAccountStatuses), "NextToken" :: Maybe (NextToken) }) -> ListCreateAccountStatusResponse
```

Constructs ListCreateAccountStatusResponse's fields from required parameters

#### `ListHandshakesForAccountRequest`

``` purescript
newtype ListHandshakesForAccountRequest
  = ListHandshakesForAccountRequest { "Filter" :: Maybe (HandshakeFilter), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListHandshakesForAccountRequest _
Generic ListHandshakesForAccountRequest _
Show ListHandshakesForAccountRequest
Decode ListHandshakesForAccountRequest
Encode ListHandshakesForAccountRequest
```

#### `newListHandshakesForAccountRequest`

``` purescript
newListHandshakesForAccountRequest :: ListHandshakesForAccountRequest
```

Constructs ListHandshakesForAccountRequest from required parameters

#### `newListHandshakesForAccountRequest'`

``` purescript
newListHandshakesForAccountRequest' :: ({ "Filter" :: Maybe (HandshakeFilter), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "Filter" :: Maybe (HandshakeFilter), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListHandshakesForAccountRequest
```

Constructs ListHandshakesForAccountRequest's fields from required parameters

#### `ListHandshakesForAccountResponse`

``` purescript
newtype ListHandshakesForAccountResponse
  = ListHandshakesForAccountResponse { "Handshakes" :: Maybe (Handshakes), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListHandshakesForAccountResponse _
Generic ListHandshakesForAccountResponse _
Show ListHandshakesForAccountResponse
Decode ListHandshakesForAccountResponse
Encode ListHandshakesForAccountResponse
```

#### `newListHandshakesForAccountResponse`

``` purescript
newListHandshakesForAccountResponse :: ListHandshakesForAccountResponse
```

Constructs ListHandshakesForAccountResponse from required parameters

#### `newListHandshakesForAccountResponse'`

``` purescript
newListHandshakesForAccountResponse' :: ({ "Handshakes" :: Maybe (Handshakes), "NextToken" :: Maybe (NextToken) } -> { "Handshakes" :: Maybe (Handshakes), "NextToken" :: Maybe (NextToken) }) -> ListHandshakesForAccountResponse
```

Constructs ListHandshakesForAccountResponse's fields from required parameters

#### `ListHandshakesForOrganizationRequest`

``` purescript
newtype ListHandshakesForOrganizationRequest
  = ListHandshakesForOrganizationRequest { "Filter" :: Maybe (HandshakeFilter), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListHandshakesForOrganizationRequest _
Generic ListHandshakesForOrganizationRequest _
Show ListHandshakesForOrganizationRequest
Decode ListHandshakesForOrganizationRequest
Encode ListHandshakesForOrganizationRequest
```

#### `newListHandshakesForOrganizationRequest`

``` purescript
newListHandshakesForOrganizationRequest :: ListHandshakesForOrganizationRequest
```

Constructs ListHandshakesForOrganizationRequest from required parameters

#### `newListHandshakesForOrganizationRequest'`

``` purescript
newListHandshakesForOrganizationRequest' :: ({ "Filter" :: Maybe (HandshakeFilter), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "Filter" :: Maybe (HandshakeFilter), "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListHandshakesForOrganizationRequest
```

Constructs ListHandshakesForOrganizationRequest's fields from required parameters

#### `ListHandshakesForOrganizationResponse`

``` purescript
newtype ListHandshakesForOrganizationResponse
  = ListHandshakesForOrganizationResponse { "Handshakes" :: Maybe (Handshakes), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListHandshakesForOrganizationResponse _
Generic ListHandshakesForOrganizationResponse _
Show ListHandshakesForOrganizationResponse
Decode ListHandshakesForOrganizationResponse
Encode ListHandshakesForOrganizationResponse
```

#### `newListHandshakesForOrganizationResponse`

``` purescript
newListHandshakesForOrganizationResponse :: ListHandshakesForOrganizationResponse
```

Constructs ListHandshakesForOrganizationResponse from required parameters

#### `newListHandshakesForOrganizationResponse'`

``` purescript
newListHandshakesForOrganizationResponse' :: ({ "Handshakes" :: Maybe (Handshakes), "NextToken" :: Maybe (NextToken) } -> { "Handshakes" :: Maybe (Handshakes), "NextToken" :: Maybe (NextToken) }) -> ListHandshakesForOrganizationResponse
```

Constructs ListHandshakesForOrganizationResponse's fields from required parameters

#### `ListOrganizationalUnitsForParentRequest`

``` purescript
newtype ListOrganizationalUnitsForParentRequest
  = ListOrganizationalUnitsForParentRequest { "ParentId" :: ParentId, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListOrganizationalUnitsForParentRequest _
Generic ListOrganizationalUnitsForParentRequest _
Show ListOrganizationalUnitsForParentRequest
Decode ListOrganizationalUnitsForParentRequest
Encode ListOrganizationalUnitsForParentRequest
```

#### `newListOrganizationalUnitsForParentRequest`

``` purescript
newListOrganizationalUnitsForParentRequest :: ParentId -> ListOrganizationalUnitsForParentRequest
```

Constructs ListOrganizationalUnitsForParentRequest from required parameters

#### `newListOrganizationalUnitsForParentRequest'`

``` purescript
newListOrganizationalUnitsForParentRequest' :: ParentId -> ({ "ParentId" :: ParentId, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "ParentId" :: ParentId, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListOrganizationalUnitsForParentRequest
```

Constructs ListOrganizationalUnitsForParentRequest's fields from required parameters

#### `ListOrganizationalUnitsForParentResponse`

``` purescript
newtype ListOrganizationalUnitsForParentResponse
  = ListOrganizationalUnitsForParentResponse { "OrganizationalUnits" :: Maybe (OrganizationalUnits), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListOrganizationalUnitsForParentResponse _
Generic ListOrganizationalUnitsForParentResponse _
Show ListOrganizationalUnitsForParentResponse
Decode ListOrganizationalUnitsForParentResponse
Encode ListOrganizationalUnitsForParentResponse
```

#### `newListOrganizationalUnitsForParentResponse`

``` purescript
newListOrganizationalUnitsForParentResponse :: ListOrganizationalUnitsForParentResponse
```

Constructs ListOrganizationalUnitsForParentResponse from required parameters

#### `newListOrganizationalUnitsForParentResponse'`

``` purescript
newListOrganizationalUnitsForParentResponse' :: ({ "OrganizationalUnits" :: Maybe (OrganizationalUnits), "NextToken" :: Maybe (NextToken) } -> { "OrganizationalUnits" :: Maybe (OrganizationalUnits), "NextToken" :: Maybe (NextToken) }) -> ListOrganizationalUnitsForParentResponse
```

Constructs ListOrganizationalUnitsForParentResponse's fields from required parameters

#### `ListParentsRequest`

``` purescript
newtype ListParentsRequest
  = ListParentsRequest { "ChildId" :: ChildId, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListParentsRequest _
Generic ListParentsRequest _
Show ListParentsRequest
Decode ListParentsRequest
Encode ListParentsRequest
```

#### `newListParentsRequest`

``` purescript
newListParentsRequest :: ChildId -> ListParentsRequest
```

Constructs ListParentsRequest from required parameters

#### `newListParentsRequest'`

``` purescript
newListParentsRequest' :: ChildId -> ({ "ChildId" :: ChildId, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "ChildId" :: ChildId, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListParentsRequest
```

Constructs ListParentsRequest's fields from required parameters

#### `ListParentsResponse`

``` purescript
newtype ListParentsResponse
  = ListParentsResponse { "Parents" :: Maybe (Parents), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListParentsResponse _
Generic ListParentsResponse _
Show ListParentsResponse
Decode ListParentsResponse
Encode ListParentsResponse
```

#### `newListParentsResponse`

``` purescript
newListParentsResponse :: ListParentsResponse
```

Constructs ListParentsResponse from required parameters

#### `newListParentsResponse'`

``` purescript
newListParentsResponse' :: ({ "Parents" :: Maybe (Parents), "NextToken" :: Maybe (NextToken) } -> { "Parents" :: Maybe (Parents), "NextToken" :: Maybe (NextToken) }) -> ListParentsResponse
```

Constructs ListParentsResponse's fields from required parameters

#### `ListPoliciesForTargetRequest`

``` purescript
newtype ListPoliciesForTargetRequest
  = ListPoliciesForTargetRequest { "TargetId" :: PolicyTargetId, "Filter" :: PolicyType, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListPoliciesForTargetRequest _
Generic ListPoliciesForTargetRequest _
Show ListPoliciesForTargetRequest
Decode ListPoliciesForTargetRequest
Encode ListPoliciesForTargetRequest
```

#### `newListPoliciesForTargetRequest`

``` purescript
newListPoliciesForTargetRequest :: PolicyType -> PolicyTargetId -> ListPoliciesForTargetRequest
```

Constructs ListPoliciesForTargetRequest from required parameters

#### `newListPoliciesForTargetRequest'`

``` purescript
newListPoliciesForTargetRequest' :: PolicyType -> PolicyTargetId -> ({ "TargetId" :: PolicyTargetId, "Filter" :: PolicyType, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "TargetId" :: PolicyTargetId, "Filter" :: PolicyType, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListPoliciesForTargetRequest
```

Constructs ListPoliciesForTargetRequest's fields from required parameters

#### `ListPoliciesForTargetResponse`

``` purescript
newtype ListPoliciesForTargetResponse
  = ListPoliciesForTargetResponse { "Policies" :: Maybe (Policies), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListPoliciesForTargetResponse _
Generic ListPoliciesForTargetResponse _
Show ListPoliciesForTargetResponse
Decode ListPoliciesForTargetResponse
Encode ListPoliciesForTargetResponse
```

#### `newListPoliciesForTargetResponse`

``` purescript
newListPoliciesForTargetResponse :: ListPoliciesForTargetResponse
```

Constructs ListPoliciesForTargetResponse from required parameters

#### `newListPoliciesForTargetResponse'`

``` purescript
newListPoliciesForTargetResponse' :: ({ "Policies" :: Maybe (Policies), "NextToken" :: Maybe (NextToken) } -> { "Policies" :: Maybe (Policies), "NextToken" :: Maybe (NextToken) }) -> ListPoliciesForTargetResponse
```

Constructs ListPoliciesForTargetResponse's fields from required parameters

#### `ListPoliciesRequest`

``` purescript
newtype ListPoliciesRequest
  = ListPoliciesRequest { "Filter" :: PolicyType, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListPoliciesRequest _
Generic ListPoliciesRequest _
Show ListPoliciesRequest
Decode ListPoliciesRequest
Encode ListPoliciesRequest
```

#### `newListPoliciesRequest`

``` purescript
newListPoliciesRequest :: PolicyType -> ListPoliciesRequest
```

Constructs ListPoliciesRequest from required parameters

#### `newListPoliciesRequest'`

``` purescript
newListPoliciesRequest' :: PolicyType -> ({ "Filter" :: PolicyType, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "Filter" :: PolicyType, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListPoliciesRequest
```

Constructs ListPoliciesRequest's fields from required parameters

#### `ListPoliciesResponse`

``` purescript
newtype ListPoliciesResponse
  = ListPoliciesResponse { "Policies" :: Maybe (Policies), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListPoliciesResponse _
Generic ListPoliciesResponse _
Show ListPoliciesResponse
Decode ListPoliciesResponse
Encode ListPoliciesResponse
```

#### `newListPoliciesResponse`

``` purescript
newListPoliciesResponse :: ListPoliciesResponse
```

Constructs ListPoliciesResponse from required parameters

#### `newListPoliciesResponse'`

``` purescript
newListPoliciesResponse' :: ({ "Policies" :: Maybe (Policies), "NextToken" :: Maybe (NextToken) } -> { "Policies" :: Maybe (Policies), "NextToken" :: Maybe (NextToken) }) -> ListPoliciesResponse
```

Constructs ListPoliciesResponse's fields from required parameters

#### `ListRootsRequest`

``` purescript
newtype ListRootsRequest
  = ListRootsRequest { "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListRootsRequest _
Generic ListRootsRequest _
Show ListRootsRequest
Decode ListRootsRequest
Encode ListRootsRequest
```

#### `newListRootsRequest`

``` purescript
newListRootsRequest :: ListRootsRequest
```

Constructs ListRootsRequest from required parameters

#### `newListRootsRequest'`

``` purescript
newListRootsRequest' :: ({ "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListRootsRequest
```

Constructs ListRootsRequest's fields from required parameters

#### `ListRootsResponse`

``` purescript
newtype ListRootsResponse
  = ListRootsResponse { "Roots" :: Maybe (Roots), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListRootsResponse _
Generic ListRootsResponse _
Show ListRootsResponse
Decode ListRootsResponse
Encode ListRootsResponse
```

#### `newListRootsResponse`

``` purescript
newListRootsResponse :: ListRootsResponse
```

Constructs ListRootsResponse from required parameters

#### `newListRootsResponse'`

``` purescript
newListRootsResponse' :: ({ "Roots" :: Maybe (Roots), "NextToken" :: Maybe (NextToken) } -> { "Roots" :: Maybe (Roots), "NextToken" :: Maybe (NextToken) }) -> ListRootsResponse
```

Constructs ListRootsResponse's fields from required parameters

#### `ListTargetsForPolicyRequest`

``` purescript
newtype ListTargetsForPolicyRequest
  = ListTargetsForPolicyRequest { "PolicyId" :: PolicyId, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }
```

##### Instances
``` purescript
Newtype ListTargetsForPolicyRequest _
Generic ListTargetsForPolicyRequest _
Show ListTargetsForPolicyRequest
Decode ListTargetsForPolicyRequest
Encode ListTargetsForPolicyRequest
```

#### `newListTargetsForPolicyRequest`

``` purescript
newListTargetsForPolicyRequest :: PolicyId -> ListTargetsForPolicyRequest
```

Constructs ListTargetsForPolicyRequest from required parameters

#### `newListTargetsForPolicyRequest'`

``` purescript
newListTargetsForPolicyRequest' :: PolicyId -> ({ "PolicyId" :: PolicyId, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) } -> { "PolicyId" :: PolicyId, "NextToken" :: Maybe (NextToken), "MaxResults" :: Maybe (MaxResults) }) -> ListTargetsForPolicyRequest
```

Constructs ListTargetsForPolicyRequest's fields from required parameters

#### `ListTargetsForPolicyResponse`

``` purescript
newtype ListTargetsForPolicyResponse
  = ListTargetsForPolicyResponse { "Targets" :: Maybe (PolicyTargets), "NextToken" :: Maybe (NextToken) }
```

##### Instances
``` purescript
Newtype ListTargetsForPolicyResponse _
Generic ListTargetsForPolicyResponse _
Show ListTargetsForPolicyResponse
Decode ListTargetsForPolicyResponse
Encode ListTargetsForPolicyResponse
```

#### `newListTargetsForPolicyResponse`

``` purescript
newListTargetsForPolicyResponse :: ListTargetsForPolicyResponse
```

Constructs ListTargetsForPolicyResponse from required parameters

#### `newListTargetsForPolicyResponse'`

``` purescript
newListTargetsForPolicyResponse' :: ({ "Targets" :: Maybe (PolicyTargets), "NextToken" :: Maybe (NextToken) } -> { "Targets" :: Maybe (PolicyTargets), "NextToken" :: Maybe (NextToken) }) -> ListTargetsForPolicyResponse
```

Constructs ListTargetsForPolicyResponse's fields from required parameters

#### `MalformedPolicyDocumentException`

``` purescript
newtype MalformedPolicyDocumentException
  = MalformedPolicyDocumentException { "Message" :: Maybe (ExceptionMessage) }
```

<p>The provided policy document does not meet the requirements of the specified policy type. For example, the syntax might be incorrect. For details about service control policy syntax, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service Control Policy Syntax</a> in the <i>AWS Organizations User Guide</i>.</p>

##### Instances
``` purescript
Newtype MalformedPolicyDocumentException _
Generic MalformedPolicyDocumentException _
Show MalformedPolicyDocumentException
Decode MalformedPolicyDocumentException
Encode MalformedPolicyDocumentException
```

#### `newMalformedPolicyDocumentException`

``` purescript
newMalformedPolicyDocumentException :: MalformedPolicyDocumentException
```

Constructs MalformedPolicyDocumentException from required parameters

#### `newMalformedPolicyDocumentException'`

``` purescript
newMalformedPolicyDocumentException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> MalformedPolicyDocumentException
```

Constructs MalformedPolicyDocumentException's fields from required parameters

#### `MasterCannotLeaveOrganizationException`

``` purescript
newtype MasterCannotLeaveOrganizationException
  = MasterCannotLeaveOrganizationException { "Message" :: Maybe (ExceptionMessage) }
```

<p>You can't remove a master account from an organization. If you want the master account to become a member account in another organization, you must first delete the current organization of the master account.</p>

##### Instances
``` purescript
Newtype MasterCannotLeaveOrganizationException _
Generic MasterCannotLeaveOrganizationException _
Show MasterCannotLeaveOrganizationException
Decode MasterCannotLeaveOrganizationException
Encode MasterCannotLeaveOrganizationException
```

#### `newMasterCannotLeaveOrganizationException`

``` purescript
newMasterCannotLeaveOrganizationException :: MasterCannotLeaveOrganizationException
```

Constructs MasterCannotLeaveOrganizationException from required parameters

#### `newMasterCannotLeaveOrganizationException'`

``` purescript
newMasterCannotLeaveOrganizationException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> MasterCannotLeaveOrganizationException
```

Constructs MasterCannotLeaveOrganizationException's fields from required parameters

#### `MaxResults`

``` purescript
newtype MaxResults
  = MaxResults Int
```

##### Instances
``` purescript
Newtype MaxResults _
Generic MaxResults _
Show MaxResults
Decode MaxResults
Encode MaxResults
```

#### `MoveAccountRequest`

``` purescript
newtype MoveAccountRequest
  = MoveAccountRequest { "AccountId" :: AccountId, "SourceParentId" :: ParentId, "DestinationParentId" :: ParentId }
```

##### Instances
``` purescript
Newtype MoveAccountRequest _
Generic MoveAccountRequest _
Show MoveAccountRequest
Decode MoveAccountRequest
Encode MoveAccountRequest
```

#### `newMoveAccountRequest`

``` purescript
newMoveAccountRequest :: AccountId -> ParentId -> ParentId -> MoveAccountRequest
```

Constructs MoveAccountRequest from required parameters

#### `newMoveAccountRequest'`

``` purescript
newMoveAccountRequest' :: AccountId -> ParentId -> ParentId -> ({ "AccountId" :: AccountId, "SourceParentId" :: ParentId, "DestinationParentId" :: ParentId } -> { "AccountId" :: AccountId, "SourceParentId" :: ParentId, "DestinationParentId" :: ParentId }) -> MoveAccountRequest
```

Constructs MoveAccountRequest's fields from required parameters

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

##### Instances
``` purescript
Newtype NextToken _
Generic NextToken _
Show NextToken
Decode NextToken
Encode NextToken
```

#### `Organization`

``` purescript
newtype Organization
  = Organization { "Id" :: Maybe (OrganizationId), "Arn" :: Maybe (OrganizationArn), "FeatureSet" :: Maybe (OrganizationFeatureSet), "MasterAccountArn" :: Maybe (AccountArn), "MasterAccountId" :: Maybe (AccountId), "MasterAccountEmail" :: Maybe (Email), "AvailablePolicyTypes" :: Maybe (PolicyTypes) }
```

<p>Contains details about an organization. An organization is a collection of accounts that are centrally managed together using consolidated billing, organized hierarchically with organizational units (OUs), and controlled with policies .</p>

##### Instances
``` purescript
Newtype Organization _
Generic Organization _
Show Organization
Decode Organization
Encode Organization
```

#### `newOrganization`

``` purescript
newOrganization :: Organization
```

Constructs Organization from required parameters

#### `newOrganization'`

``` purescript
newOrganization' :: ({ "Id" :: Maybe (OrganizationId), "Arn" :: Maybe (OrganizationArn), "FeatureSet" :: Maybe (OrganizationFeatureSet), "MasterAccountArn" :: Maybe (AccountArn), "MasterAccountId" :: Maybe (AccountId), "MasterAccountEmail" :: Maybe (Email), "AvailablePolicyTypes" :: Maybe (PolicyTypes) } -> { "Id" :: Maybe (OrganizationId), "Arn" :: Maybe (OrganizationArn), "FeatureSet" :: Maybe (OrganizationFeatureSet), "MasterAccountArn" :: Maybe (AccountArn), "MasterAccountId" :: Maybe (AccountId), "MasterAccountEmail" :: Maybe (Email), "AvailablePolicyTypes" :: Maybe (PolicyTypes) }) -> Organization
```

Constructs Organization's fields from required parameters

#### `OrganizationArn`

``` purescript
newtype OrganizationArn
  = OrganizationArn String
```

##### Instances
``` purescript
Newtype OrganizationArn _
Generic OrganizationArn _
Show OrganizationArn
Decode OrganizationArn
Encode OrganizationArn
```

#### `OrganizationFeatureSet`

``` purescript
newtype OrganizationFeatureSet
  = OrganizationFeatureSet String
```

##### Instances
``` purescript
Newtype OrganizationFeatureSet _
Generic OrganizationFeatureSet _
Show OrganizationFeatureSet
Decode OrganizationFeatureSet
Encode OrganizationFeatureSet
```

#### `OrganizationId`

``` purescript
newtype OrganizationId
  = OrganizationId String
```

##### Instances
``` purescript
Newtype OrganizationId _
Generic OrganizationId _
Show OrganizationId
Decode OrganizationId
Encode OrganizationId
```

#### `OrganizationNotEmptyException`

``` purescript
newtype OrganizationNotEmptyException
  = OrganizationNotEmptyException { "Message" :: Maybe (ExceptionMessage) }
```

<p>The organization isn't empty. To delete an organization, you must first remove all accounts except the master account, delete all organizational units (OUs), and delete all policies.</p>

##### Instances
``` purescript
Newtype OrganizationNotEmptyException _
Generic OrganizationNotEmptyException _
Show OrganizationNotEmptyException
Decode OrganizationNotEmptyException
Encode OrganizationNotEmptyException
```

#### `newOrganizationNotEmptyException`

``` purescript
newOrganizationNotEmptyException :: OrganizationNotEmptyException
```

Constructs OrganizationNotEmptyException from required parameters

#### `newOrganizationNotEmptyException'`

``` purescript
newOrganizationNotEmptyException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> OrganizationNotEmptyException
```

Constructs OrganizationNotEmptyException's fields from required parameters

#### `OrganizationalUnit`

``` purescript
newtype OrganizationalUnit
  = OrganizationalUnit { "Id" :: Maybe (OrganizationalUnitId), "Arn" :: Maybe (OrganizationalUnitArn), "Name" :: Maybe (OrganizationalUnitName) }
```

<p>Contains details about an organizational unit (OU). An OU is a container of AWS accounts within a root of an organization. Policies that are attached to an OU apply to all accounts contained in that OU and in any child OUs.</p>

##### Instances
``` purescript
Newtype OrganizationalUnit _
Generic OrganizationalUnit _
Show OrganizationalUnit
Decode OrganizationalUnit
Encode OrganizationalUnit
```

#### `newOrganizationalUnit`

``` purescript
newOrganizationalUnit :: OrganizationalUnit
```

Constructs OrganizationalUnit from required parameters

#### `newOrganizationalUnit'`

``` purescript
newOrganizationalUnit' :: ({ "Id" :: Maybe (OrganizationalUnitId), "Arn" :: Maybe (OrganizationalUnitArn), "Name" :: Maybe (OrganizationalUnitName) } -> { "Id" :: Maybe (OrganizationalUnitId), "Arn" :: Maybe (OrganizationalUnitArn), "Name" :: Maybe (OrganizationalUnitName) }) -> OrganizationalUnit
```

Constructs OrganizationalUnit's fields from required parameters

#### `OrganizationalUnitArn`

``` purescript
newtype OrganizationalUnitArn
  = OrganizationalUnitArn String
```

##### Instances
``` purescript
Newtype OrganizationalUnitArn _
Generic OrganizationalUnitArn _
Show OrganizationalUnitArn
Decode OrganizationalUnitArn
Encode OrganizationalUnitArn
```

#### `OrganizationalUnitId`

``` purescript
newtype OrganizationalUnitId
  = OrganizationalUnitId String
```

##### Instances
``` purescript
Newtype OrganizationalUnitId _
Generic OrganizationalUnitId _
Show OrganizationalUnitId
Decode OrganizationalUnitId
Encode OrganizationalUnitId
```

#### `OrganizationalUnitName`

``` purescript
newtype OrganizationalUnitName
  = OrganizationalUnitName String
```

##### Instances
``` purescript
Newtype OrganizationalUnitName _
Generic OrganizationalUnitName _
Show OrganizationalUnitName
Decode OrganizationalUnitName
Encode OrganizationalUnitName
```

#### `OrganizationalUnitNotEmptyException`

``` purescript
newtype OrganizationalUnitNotEmptyException
  = OrganizationalUnitNotEmptyException { "Message" :: Maybe (ExceptionMessage) }
```

<p>The specified organizational unit (OU) is not empty. Move all accounts to another root or to other OUs, remove all child OUs, and then try the operation again.</p>

##### Instances
``` purescript
Newtype OrganizationalUnitNotEmptyException _
Generic OrganizationalUnitNotEmptyException _
Show OrganizationalUnitNotEmptyException
Decode OrganizationalUnitNotEmptyException
Encode OrganizationalUnitNotEmptyException
```

#### `newOrganizationalUnitNotEmptyException`

``` purescript
newOrganizationalUnitNotEmptyException :: OrganizationalUnitNotEmptyException
```

Constructs OrganizationalUnitNotEmptyException from required parameters

#### `newOrganizationalUnitNotEmptyException'`

``` purescript
newOrganizationalUnitNotEmptyException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> OrganizationalUnitNotEmptyException
```

Constructs OrganizationalUnitNotEmptyException's fields from required parameters

#### `OrganizationalUnitNotFoundException`

``` purescript
newtype OrganizationalUnitNotFoundException
  = OrganizationalUnitNotFoundException { "Message" :: Maybe (ExceptionMessage) }
```

<p>We can't find an organizational unit (OU) with the OrganizationalUnitId that you specified.</p>

##### Instances
``` purescript
Newtype OrganizationalUnitNotFoundException _
Generic OrganizationalUnitNotFoundException _
Show OrganizationalUnitNotFoundException
Decode OrganizationalUnitNotFoundException
Encode OrganizationalUnitNotFoundException
```

#### `newOrganizationalUnitNotFoundException`

``` purescript
newOrganizationalUnitNotFoundException :: OrganizationalUnitNotFoundException
```

Constructs OrganizationalUnitNotFoundException from required parameters

#### `newOrganizationalUnitNotFoundException'`

``` purescript
newOrganizationalUnitNotFoundException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> OrganizationalUnitNotFoundException
```

Constructs OrganizationalUnitNotFoundException's fields from required parameters

#### `OrganizationalUnits`

``` purescript
newtype OrganizationalUnits
  = OrganizationalUnits (Array OrganizationalUnit)
```

##### Instances
``` purescript
Newtype OrganizationalUnits _
Generic OrganizationalUnits _
Show OrganizationalUnits
Decode OrganizationalUnits
Encode OrganizationalUnits
```

#### `Parent`

``` purescript
newtype Parent
  = Parent { "Id" :: Maybe (ParentId), "Type" :: Maybe (ParentType) }
```

<p>Contains information about either a root or an organizational unit (OU) that can contain OUs or accounts in an organization.</p>

##### Instances
``` purescript
Newtype Parent _
Generic Parent _
Show Parent
Decode Parent
Encode Parent
```

#### `newParent`

``` purescript
newParent :: Parent
```

Constructs Parent from required parameters

#### `newParent'`

``` purescript
newParent' :: ({ "Id" :: Maybe (ParentId), "Type" :: Maybe (ParentType) } -> { "Id" :: Maybe (ParentId), "Type" :: Maybe (ParentType) }) -> Parent
```

Constructs Parent's fields from required parameters

#### `ParentId`

``` purescript
newtype ParentId
  = ParentId String
```

##### Instances
``` purescript
Newtype ParentId _
Generic ParentId _
Show ParentId
Decode ParentId
Encode ParentId
```

#### `ParentNotFoundException`

``` purescript
newtype ParentNotFoundException
  = ParentNotFoundException { "Message" :: Maybe (ExceptionMessage) }
```

<p>We can't find a root or organizational unit (OU) with the ParentId that you specified.</p>

##### Instances
``` purescript
Newtype ParentNotFoundException _
Generic ParentNotFoundException _
Show ParentNotFoundException
Decode ParentNotFoundException
Encode ParentNotFoundException
```

#### `newParentNotFoundException`

``` purescript
newParentNotFoundException :: ParentNotFoundException
```

Constructs ParentNotFoundException from required parameters

#### `newParentNotFoundException'`

``` purescript
newParentNotFoundException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> ParentNotFoundException
```

Constructs ParentNotFoundException's fields from required parameters

#### `ParentType`

``` purescript
newtype ParentType
  = ParentType String
```

##### Instances
``` purescript
Newtype ParentType _
Generic ParentType _
Show ParentType
Decode ParentType
Encode ParentType
```

#### `Parents`

``` purescript
newtype Parents
  = Parents (Array Parent)
```

##### Instances
``` purescript
Newtype Parents _
Generic Parents _
Show Parents
Decode Parents
Encode Parents
```

#### `Policies`

``` purescript
newtype Policies
  = Policies (Array PolicySummary)
```

##### Instances
``` purescript
Newtype Policies _
Generic Policies _
Show Policies
Decode Policies
Encode Policies
```

#### `Policy`

``` purescript
newtype Policy
  = Policy { "PolicySummary" :: Maybe (PolicySummary), "Content" :: Maybe (PolicyContent) }
```

<p>Contains rules to be applied to the affected accounts. Policies can be attached directly to accounts, or to roots and OUs to affect all accounts in those hierarchies.</p>

##### Instances
``` purescript
Newtype Policy _
Generic Policy _
Show Policy
Decode Policy
Encode Policy
```

#### `newPolicy`

``` purescript
newPolicy :: Policy
```

Constructs Policy from required parameters

#### `newPolicy'`

``` purescript
newPolicy' :: ({ "PolicySummary" :: Maybe (PolicySummary), "Content" :: Maybe (PolicyContent) } -> { "PolicySummary" :: Maybe (PolicySummary), "Content" :: Maybe (PolicyContent) }) -> Policy
```

Constructs Policy's fields from required parameters

#### `PolicyArn`

``` purescript
newtype PolicyArn
  = PolicyArn String
```

##### Instances
``` purescript
Newtype PolicyArn _
Generic PolicyArn _
Show PolicyArn
Decode PolicyArn
Encode PolicyArn
```

#### `PolicyContent`

``` purescript
newtype PolicyContent
  = PolicyContent String
```

##### Instances
``` purescript
Newtype PolicyContent _
Generic PolicyContent _
Show PolicyContent
Decode PolicyContent
Encode PolicyContent
```

#### `PolicyDescription`

``` purescript
newtype PolicyDescription
  = PolicyDescription String
```

##### Instances
``` purescript
Newtype PolicyDescription _
Generic PolicyDescription _
Show PolicyDescription
Decode PolicyDescription
Encode PolicyDescription
```

#### `PolicyId`

``` purescript
newtype PolicyId
  = PolicyId String
```

##### Instances
``` purescript
Newtype PolicyId _
Generic PolicyId _
Show PolicyId
Decode PolicyId
Encode PolicyId
```

#### `PolicyInUseException`

``` purescript
newtype PolicyInUseException
  = PolicyInUseException { "Message" :: Maybe (ExceptionMessage) }
```

<p>The policy is attached to one or more entities. You must detach it from all roots, organizational units (OUs), and accounts before performing this operation.</p>

##### Instances
``` purescript
Newtype PolicyInUseException _
Generic PolicyInUseException _
Show PolicyInUseException
Decode PolicyInUseException
Encode PolicyInUseException
```

#### `newPolicyInUseException`

``` purescript
newPolicyInUseException :: PolicyInUseException
```

Constructs PolicyInUseException from required parameters

#### `newPolicyInUseException'`

``` purescript
newPolicyInUseException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> PolicyInUseException
```

Constructs PolicyInUseException's fields from required parameters

#### `PolicyName`

``` purescript
newtype PolicyName
  = PolicyName String
```

##### Instances
``` purescript
Newtype PolicyName _
Generic PolicyName _
Show PolicyName
Decode PolicyName
Encode PolicyName
```

#### `PolicyNotAttachedException`

``` purescript
newtype PolicyNotAttachedException
  = PolicyNotAttachedException { "Message" :: Maybe (ExceptionMessage) }
```

<p>The policy isn't attached to the specified target in the specified root.</p>

##### Instances
``` purescript
Newtype PolicyNotAttachedException _
Generic PolicyNotAttachedException _
Show PolicyNotAttachedException
Decode PolicyNotAttachedException
Encode PolicyNotAttachedException
```

#### `newPolicyNotAttachedException`

``` purescript
newPolicyNotAttachedException :: PolicyNotAttachedException
```

Constructs PolicyNotAttachedException from required parameters

#### `newPolicyNotAttachedException'`

``` purescript
newPolicyNotAttachedException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> PolicyNotAttachedException
```

Constructs PolicyNotAttachedException's fields from required parameters

#### `PolicyNotFoundException`

``` purescript
newtype PolicyNotFoundException
  = PolicyNotFoundException { "Message" :: Maybe (ExceptionMessage) }
```

<p>We can't find a policy with the PolicyId that you specified.</p>

##### Instances
``` purescript
Newtype PolicyNotFoundException _
Generic PolicyNotFoundException _
Show PolicyNotFoundException
Decode PolicyNotFoundException
Encode PolicyNotFoundException
```

#### `newPolicyNotFoundException`

``` purescript
newPolicyNotFoundException :: PolicyNotFoundException
```

Constructs PolicyNotFoundException from required parameters

#### `newPolicyNotFoundException'`

``` purescript
newPolicyNotFoundException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> PolicyNotFoundException
```

Constructs PolicyNotFoundException's fields from required parameters

#### `PolicySummary`

``` purescript
newtype PolicySummary
  = PolicySummary { "Id" :: Maybe (PolicyId), "Arn" :: Maybe (PolicyArn), "Name" :: Maybe (PolicyName), "Description" :: Maybe (PolicyDescription), "Type" :: Maybe (PolicyType), "AwsManaged" :: Maybe (AwsManagedPolicy) }
```

<p>Contains information about a policy, but does not include the content. To see the content of a policy, see <a>DescribePolicy</a>.</p>

##### Instances
``` purescript
Newtype PolicySummary _
Generic PolicySummary _
Show PolicySummary
Decode PolicySummary
Encode PolicySummary
```

#### `newPolicySummary`

``` purescript
newPolicySummary :: PolicySummary
```

Constructs PolicySummary from required parameters

#### `newPolicySummary'`

``` purescript
newPolicySummary' :: ({ "Id" :: Maybe (PolicyId), "Arn" :: Maybe (PolicyArn), "Name" :: Maybe (PolicyName), "Description" :: Maybe (PolicyDescription), "Type" :: Maybe (PolicyType), "AwsManaged" :: Maybe (AwsManagedPolicy) } -> { "Id" :: Maybe (PolicyId), "Arn" :: Maybe (PolicyArn), "Name" :: Maybe (PolicyName), "Description" :: Maybe (PolicyDescription), "Type" :: Maybe (PolicyType), "AwsManaged" :: Maybe (AwsManagedPolicy) }) -> PolicySummary
```

Constructs PolicySummary's fields from required parameters

#### `PolicyTargetId`

``` purescript
newtype PolicyTargetId
  = PolicyTargetId String
```

##### Instances
``` purescript
Newtype PolicyTargetId _
Generic PolicyTargetId _
Show PolicyTargetId
Decode PolicyTargetId
Encode PolicyTargetId
```

#### `PolicyTargetSummary`

``` purescript
newtype PolicyTargetSummary
  = PolicyTargetSummary { "TargetId" :: Maybe (PolicyTargetId), "Arn" :: Maybe (GenericArn), "Name" :: Maybe (TargetName), "Type" :: Maybe (TargetType) }
```

<p>Contains information about a root, OU, or account that a policy is attached to.</p>

##### Instances
``` purescript
Newtype PolicyTargetSummary _
Generic PolicyTargetSummary _
Show PolicyTargetSummary
Decode PolicyTargetSummary
Encode PolicyTargetSummary
```

#### `newPolicyTargetSummary`

``` purescript
newPolicyTargetSummary :: PolicyTargetSummary
```

Constructs PolicyTargetSummary from required parameters

#### `newPolicyTargetSummary'`

``` purescript
newPolicyTargetSummary' :: ({ "TargetId" :: Maybe (PolicyTargetId), "Arn" :: Maybe (GenericArn), "Name" :: Maybe (TargetName), "Type" :: Maybe (TargetType) } -> { "TargetId" :: Maybe (PolicyTargetId), "Arn" :: Maybe (GenericArn), "Name" :: Maybe (TargetName), "Type" :: Maybe (TargetType) }) -> PolicyTargetSummary
```

Constructs PolicyTargetSummary's fields from required parameters

#### `PolicyTargets`

``` purescript
newtype PolicyTargets
  = PolicyTargets (Array PolicyTargetSummary)
```

##### Instances
``` purescript
Newtype PolicyTargets _
Generic PolicyTargets _
Show PolicyTargets
Decode PolicyTargets
Encode PolicyTargets
```

#### `PolicyType`

``` purescript
newtype PolicyType
  = PolicyType String
```

##### Instances
``` purescript
Newtype PolicyType _
Generic PolicyType _
Show PolicyType
Decode PolicyType
Encode PolicyType
```

#### `PolicyTypeAlreadyEnabledException`

``` purescript
newtype PolicyTypeAlreadyEnabledException
  = PolicyTypeAlreadyEnabledException { "Message" :: Maybe (ExceptionMessage) }
```

<p>The specified policy type is already enabled in the specified root.</p>

##### Instances
``` purescript
Newtype PolicyTypeAlreadyEnabledException _
Generic PolicyTypeAlreadyEnabledException _
Show PolicyTypeAlreadyEnabledException
Decode PolicyTypeAlreadyEnabledException
Encode PolicyTypeAlreadyEnabledException
```

#### `newPolicyTypeAlreadyEnabledException`

``` purescript
newPolicyTypeAlreadyEnabledException :: PolicyTypeAlreadyEnabledException
```

Constructs PolicyTypeAlreadyEnabledException from required parameters

#### `newPolicyTypeAlreadyEnabledException'`

``` purescript
newPolicyTypeAlreadyEnabledException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> PolicyTypeAlreadyEnabledException
```

Constructs PolicyTypeAlreadyEnabledException's fields from required parameters

#### `PolicyTypeNotAvailableForOrganizationException`

``` purescript
newtype PolicyTypeNotAvailableForOrganizationException
  = PolicyTypeNotAvailableForOrganizationException { "Message" :: Maybe (ExceptionMessage) }
```

<p>You can't use the specified policy type with the feature set currently enabled for this organization. For example, you can enable service control policies (SCPs) only after you enable all features in the organization. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html#enable_policies_on_root">Enabling and Disabling a Policy Type on a Root</a> in the <i>AWS Organizations User Guide</i>.</p>

##### Instances
``` purescript
Newtype PolicyTypeNotAvailableForOrganizationException _
Generic PolicyTypeNotAvailableForOrganizationException _
Show PolicyTypeNotAvailableForOrganizationException
Decode PolicyTypeNotAvailableForOrganizationException
Encode PolicyTypeNotAvailableForOrganizationException
```

#### `newPolicyTypeNotAvailableForOrganizationException`

``` purescript
newPolicyTypeNotAvailableForOrganizationException :: PolicyTypeNotAvailableForOrganizationException
```

Constructs PolicyTypeNotAvailableForOrganizationException from required parameters

#### `newPolicyTypeNotAvailableForOrganizationException'`

``` purescript
newPolicyTypeNotAvailableForOrganizationException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> PolicyTypeNotAvailableForOrganizationException
```

Constructs PolicyTypeNotAvailableForOrganizationException's fields from required parameters

#### `PolicyTypeNotEnabledException`

``` purescript
newtype PolicyTypeNotEnabledException
  = PolicyTypeNotEnabledException { "Message" :: Maybe (ExceptionMessage) }
```

<p>The specified policy type is not currently enabled in this root. You cannot attach policies of the specified type to entities in a root until you enable that type in the root. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p>

##### Instances
``` purescript
Newtype PolicyTypeNotEnabledException _
Generic PolicyTypeNotEnabledException _
Show PolicyTypeNotEnabledException
Decode PolicyTypeNotEnabledException
Encode PolicyTypeNotEnabledException
```

#### `newPolicyTypeNotEnabledException`

``` purescript
newPolicyTypeNotEnabledException :: PolicyTypeNotEnabledException
```

Constructs PolicyTypeNotEnabledException from required parameters

#### `newPolicyTypeNotEnabledException'`

``` purescript
newPolicyTypeNotEnabledException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> PolicyTypeNotEnabledException
```

Constructs PolicyTypeNotEnabledException's fields from required parameters

#### `PolicyTypeStatus`

``` purescript
newtype PolicyTypeStatus
  = PolicyTypeStatus String
```

##### Instances
``` purescript
Newtype PolicyTypeStatus _
Generic PolicyTypeStatus _
Show PolicyTypeStatus
Decode PolicyTypeStatus
Encode PolicyTypeStatus
```

#### `PolicyTypeSummary`

``` purescript
newtype PolicyTypeSummary
  = PolicyTypeSummary { "Type" :: Maybe (PolicyType), "Status" :: Maybe (PolicyTypeStatus) }
```

<p>Contains information about a policy type and its status in the associated root.</p>

##### Instances
``` purescript
Newtype PolicyTypeSummary _
Generic PolicyTypeSummary _
Show PolicyTypeSummary
Decode PolicyTypeSummary
Encode PolicyTypeSummary
```

#### `newPolicyTypeSummary`

``` purescript
newPolicyTypeSummary :: PolicyTypeSummary
```

Constructs PolicyTypeSummary from required parameters

#### `newPolicyTypeSummary'`

``` purescript
newPolicyTypeSummary' :: ({ "Type" :: Maybe (PolicyType), "Status" :: Maybe (PolicyTypeStatus) } -> { "Type" :: Maybe (PolicyType), "Status" :: Maybe (PolicyTypeStatus) }) -> PolicyTypeSummary
```

Constructs PolicyTypeSummary's fields from required parameters

#### `PolicyTypes`

``` purescript
newtype PolicyTypes
  = PolicyTypes (Array PolicyTypeSummary)
```

##### Instances
``` purescript
Newtype PolicyTypes _
Generic PolicyTypes _
Show PolicyTypes
Decode PolicyTypes
Encode PolicyTypes
```

#### `RemoveAccountFromOrganizationRequest`

``` purescript
newtype RemoveAccountFromOrganizationRequest
  = RemoveAccountFromOrganizationRequest { "AccountId" :: AccountId }
```

##### Instances
``` purescript
Newtype RemoveAccountFromOrganizationRequest _
Generic RemoveAccountFromOrganizationRequest _
Show RemoveAccountFromOrganizationRequest
Decode RemoveAccountFromOrganizationRequest
Encode RemoveAccountFromOrganizationRequest
```

#### `newRemoveAccountFromOrganizationRequest`

``` purescript
newRemoveAccountFromOrganizationRequest :: AccountId -> RemoveAccountFromOrganizationRequest
```

Constructs RemoveAccountFromOrganizationRequest from required parameters

#### `newRemoveAccountFromOrganizationRequest'`

``` purescript
newRemoveAccountFromOrganizationRequest' :: AccountId -> ({ "AccountId" :: AccountId } -> { "AccountId" :: AccountId }) -> RemoveAccountFromOrganizationRequest
```

Constructs RemoveAccountFromOrganizationRequest's fields from required parameters

#### `RoleName`

``` purescript
newtype RoleName
  = RoleName String
```

##### Instances
``` purescript
Newtype RoleName _
Generic RoleName _
Show RoleName
Decode RoleName
Encode RoleName
```

#### `Root`

``` purescript
newtype Root
  = Root { "Id" :: Maybe (RootId), "Arn" :: Maybe (RootArn), "Name" :: Maybe (RootName), "PolicyTypes" :: Maybe (PolicyTypes) }
```

<p>Contains details about a root. A root is a top-level parent node in the hierarchy of an organization that can contain organizational units (OUs) and accounts. Every root contains every AWS account in the organization. Each root enables the accounts to be organized in a different way and to have different policy types enabled for use in that root.</p>

##### Instances
``` purescript
Newtype Root _
Generic Root _
Show Root
Decode Root
Encode Root
```

#### `newRoot`

``` purescript
newRoot :: Root
```

Constructs Root from required parameters

#### `newRoot'`

``` purescript
newRoot' :: ({ "Id" :: Maybe (RootId), "Arn" :: Maybe (RootArn), "Name" :: Maybe (RootName), "PolicyTypes" :: Maybe (PolicyTypes) } -> { "Id" :: Maybe (RootId), "Arn" :: Maybe (RootArn), "Name" :: Maybe (RootName), "PolicyTypes" :: Maybe (PolicyTypes) }) -> Root
```

Constructs Root's fields from required parameters

#### `RootArn`

``` purescript
newtype RootArn
  = RootArn String
```

##### Instances
``` purescript
Newtype RootArn _
Generic RootArn _
Show RootArn
Decode RootArn
Encode RootArn
```

#### `RootId`

``` purescript
newtype RootId
  = RootId String
```

##### Instances
``` purescript
Newtype RootId _
Generic RootId _
Show RootId
Decode RootId
Encode RootId
```

#### `RootName`

``` purescript
newtype RootName
  = RootName String
```

##### Instances
``` purescript
Newtype RootName _
Generic RootName _
Show RootName
Decode RootName
Encode RootName
```

#### `RootNotFoundException`

``` purescript
newtype RootNotFoundException
  = RootNotFoundException { "Message" :: Maybe (ExceptionMessage) }
```

<p>We can't find a root with the RootId that you specified.</p>

##### Instances
``` purescript
Newtype RootNotFoundException _
Generic RootNotFoundException _
Show RootNotFoundException
Decode RootNotFoundException
Encode RootNotFoundException
```

#### `newRootNotFoundException`

``` purescript
newRootNotFoundException :: RootNotFoundException
```

Constructs RootNotFoundException from required parameters

#### `newRootNotFoundException'`

``` purescript
newRootNotFoundException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> RootNotFoundException
```

Constructs RootNotFoundException's fields from required parameters

#### `Roots`

``` purescript
newtype Roots
  = Roots (Array Root)
```

##### Instances
``` purescript
Newtype Roots _
Generic Roots _
Show Roots
Decode Roots
Encode Roots
```

#### `ServiceException`

``` purescript
newtype ServiceException
  = ServiceException { "Message" :: Maybe (ExceptionMessage) }
```

<p>AWS Organizations can't complete your request because of an internal service error. Try again later.</p>

##### Instances
``` purescript
Newtype ServiceException _
Generic ServiceException _
Show ServiceException
Decode ServiceException
Encode ServiceException
```

#### `newServiceException`

``` purescript
newServiceException :: ServiceException
```

Constructs ServiceException from required parameters

#### `newServiceException'`

``` purescript
newServiceException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> ServiceException
```

Constructs ServiceException's fields from required parameters

#### `ServicePrincipal`

``` purescript
newtype ServicePrincipal
  = ServicePrincipal String
```

##### Instances
``` purescript
Newtype ServicePrincipal _
Generic ServicePrincipal _
Show ServicePrincipal
Decode ServicePrincipal
Encode ServicePrincipal
```

#### `SourceParentNotFoundException`

``` purescript
newtype SourceParentNotFoundException
  = SourceParentNotFoundException { "Message" :: Maybe (ExceptionMessage) }
```

<p>We can't find a source root or OU with the ParentId that you specified.</p>

##### Instances
``` purescript
Newtype SourceParentNotFoundException _
Generic SourceParentNotFoundException _
Show SourceParentNotFoundException
Decode SourceParentNotFoundException
Encode SourceParentNotFoundException
```

#### `newSourceParentNotFoundException`

``` purescript
newSourceParentNotFoundException :: SourceParentNotFoundException
```

Constructs SourceParentNotFoundException from required parameters

#### `newSourceParentNotFoundException'`

``` purescript
newSourceParentNotFoundException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> SourceParentNotFoundException
```

Constructs SourceParentNotFoundException's fields from required parameters

#### `TargetName`

``` purescript
newtype TargetName
  = TargetName String
```

##### Instances
``` purescript
Newtype TargetName _
Generic TargetName _
Show TargetName
Decode TargetName
Encode TargetName
```

#### `TargetNotFoundException`

``` purescript
newtype TargetNotFoundException
  = TargetNotFoundException { "Message" :: Maybe (ExceptionMessage) }
```

<p>We can't find a root, OU, or account with the TargetId that you specified.</p>

##### Instances
``` purescript
Newtype TargetNotFoundException _
Generic TargetNotFoundException _
Show TargetNotFoundException
Decode TargetNotFoundException
Encode TargetNotFoundException
```

#### `newTargetNotFoundException`

``` purescript
newTargetNotFoundException :: TargetNotFoundException
```

Constructs TargetNotFoundException from required parameters

#### `newTargetNotFoundException'`

``` purescript
newTargetNotFoundException' :: ({ "Message" :: Maybe (ExceptionMessage) } -> { "Message" :: Maybe (ExceptionMessage) }) -> TargetNotFoundException
```

Constructs TargetNotFoundException's fields from required parameters

#### `TargetType`

``` purescript
newtype TargetType
  = TargetType String
```

##### Instances
``` purescript
Newtype TargetType _
Generic TargetType _
Show TargetType
Decode TargetType
Encode TargetType
```

#### `TooManyRequestsException`

``` purescript
newtype TooManyRequestsException
  = TooManyRequestsException { "Type" :: Maybe (ExceptionType), "Message" :: Maybe (ExceptionMessage) }
```

<p>You've sent too many requests in too short a period of time. The limit helps protect against denial-of-service attacks. Try again later.</p>

##### Instances
``` purescript
Newtype TooManyRequestsException _
Generic TooManyRequestsException _
Show TooManyRequestsException
Decode TooManyRequestsException
Encode TooManyRequestsException
```

#### `newTooManyRequestsException`

``` purescript
newTooManyRequestsException :: TooManyRequestsException
```

Constructs TooManyRequestsException from required parameters

#### `newTooManyRequestsException'`

``` purescript
newTooManyRequestsException' :: ({ "Type" :: Maybe (ExceptionType), "Message" :: Maybe (ExceptionMessage) } -> { "Type" :: Maybe (ExceptionType), "Message" :: Maybe (ExceptionMessage) }) -> TooManyRequestsException
```

Constructs TooManyRequestsException's fields from required parameters

#### `UpdateOrganizationalUnitRequest`

``` purescript
newtype UpdateOrganizationalUnitRequest
  = UpdateOrganizationalUnitRequest { "OrganizationalUnitId" :: OrganizationalUnitId, "Name" :: Maybe (OrganizationalUnitName) }
```

##### Instances
``` purescript
Newtype UpdateOrganizationalUnitRequest _
Generic UpdateOrganizationalUnitRequest _
Show UpdateOrganizationalUnitRequest
Decode UpdateOrganizationalUnitRequest
Encode UpdateOrganizationalUnitRequest
```

#### `newUpdateOrganizationalUnitRequest`

``` purescript
newUpdateOrganizationalUnitRequest :: OrganizationalUnitId -> UpdateOrganizationalUnitRequest
```

Constructs UpdateOrganizationalUnitRequest from required parameters

#### `newUpdateOrganizationalUnitRequest'`

``` purescript
newUpdateOrganizationalUnitRequest' :: OrganizationalUnitId -> ({ "OrganizationalUnitId" :: OrganizationalUnitId, "Name" :: Maybe (OrganizationalUnitName) } -> { "OrganizationalUnitId" :: OrganizationalUnitId, "Name" :: Maybe (OrganizationalUnitName) }) -> UpdateOrganizationalUnitRequest
```

Constructs UpdateOrganizationalUnitRequest's fields from required parameters

#### `UpdateOrganizationalUnitResponse`

``` purescript
newtype UpdateOrganizationalUnitResponse
  = UpdateOrganizationalUnitResponse { "OrganizationalUnit" :: Maybe (OrganizationalUnit) }
```

##### Instances
``` purescript
Newtype UpdateOrganizationalUnitResponse _
Generic UpdateOrganizationalUnitResponse _
Show UpdateOrganizationalUnitResponse
Decode UpdateOrganizationalUnitResponse
Encode UpdateOrganizationalUnitResponse
```

#### `newUpdateOrganizationalUnitResponse`

``` purescript
newUpdateOrganizationalUnitResponse :: UpdateOrganizationalUnitResponse
```

Constructs UpdateOrganizationalUnitResponse from required parameters

#### `newUpdateOrganizationalUnitResponse'`

``` purescript
newUpdateOrganizationalUnitResponse' :: ({ "OrganizationalUnit" :: Maybe (OrganizationalUnit) } -> { "OrganizationalUnit" :: Maybe (OrganizationalUnit) }) -> UpdateOrganizationalUnitResponse
```

Constructs UpdateOrganizationalUnitResponse's fields from required parameters

#### `UpdatePolicyRequest`

``` purescript
newtype UpdatePolicyRequest
  = UpdatePolicyRequest { "PolicyId" :: PolicyId, "Name" :: Maybe (PolicyName), "Description" :: Maybe (PolicyDescription), "Content" :: Maybe (PolicyContent) }
```

##### Instances
``` purescript
Newtype UpdatePolicyRequest _
Generic UpdatePolicyRequest _
Show UpdatePolicyRequest
Decode UpdatePolicyRequest
Encode UpdatePolicyRequest
```

#### `newUpdatePolicyRequest`

``` purescript
newUpdatePolicyRequest :: PolicyId -> UpdatePolicyRequest
```

Constructs UpdatePolicyRequest from required parameters

#### `newUpdatePolicyRequest'`

``` purescript
newUpdatePolicyRequest' :: PolicyId -> ({ "PolicyId" :: PolicyId, "Name" :: Maybe (PolicyName), "Description" :: Maybe (PolicyDescription), "Content" :: Maybe (PolicyContent) } -> { "PolicyId" :: PolicyId, "Name" :: Maybe (PolicyName), "Description" :: Maybe (PolicyDescription), "Content" :: Maybe (PolicyContent) }) -> UpdatePolicyRequest
```

Constructs UpdatePolicyRequest's fields from required parameters

#### `UpdatePolicyResponse`

``` purescript
newtype UpdatePolicyResponse
  = UpdatePolicyResponse { "Policy" :: Maybe (Policy) }
```

##### Instances
``` purescript
Newtype UpdatePolicyResponse _
Generic UpdatePolicyResponse _
Show UpdatePolicyResponse
Decode UpdatePolicyResponse
Encode UpdatePolicyResponse
```

#### `newUpdatePolicyResponse`

``` purescript
newUpdatePolicyResponse :: UpdatePolicyResponse
```

Constructs UpdatePolicyResponse from required parameters

#### `newUpdatePolicyResponse'`

``` purescript
newUpdatePolicyResponse' :: ({ "Policy" :: Maybe (Policy) } -> { "Policy" :: Maybe (Policy) }) -> UpdatePolicyResponse
```

Constructs UpdatePolicyResponse's fields from required parameters


