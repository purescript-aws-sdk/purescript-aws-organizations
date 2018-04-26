
module AWS.Organizations.Types where

import Prelude
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.Generic.Types (Options)
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap (StrMap) as StrMap

import AWS.Request.Types as Types

options :: Options
options = defaultOptions { unwrapSingleConstructors = true }


-- | <p>Your account is not a member of an organization. To make this request, you must use the credentials of an account that belongs to an organization.</p>
newtype AWSOrganizationsNotInUseException = AWSOrganizationsNotInUseException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeAWSOrganizationsNotInUseException :: Newtype AWSOrganizationsNotInUseException _
derive instance repGenericAWSOrganizationsNotInUseException :: Generic AWSOrganizationsNotInUseException _
instance showAWSOrganizationsNotInUseException :: Show AWSOrganizationsNotInUseException where show = genericShow
instance decodeAWSOrganizationsNotInUseException :: Decode AWSOrganizationsNotInUseException where decode = genericDecode options
instance encodeAWSOrganizationsNotInUseException :: Encode AWSOrganizationsNotInUseException where encode = genericEncode options

-- | Constructs AWSOrganizationsNotInUseException from required parameters
newAWSOrganizationsNotInUseException :: AWSOrganizationsNotInUseException
newAWSOrganizationsNotInUseException  = AWSOrganizationsNotInUseException { "Message": Nothing }

-- | Constructs AWSOrganizationsNotInUseException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAWSOrganizationsNotInUseException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> AWSOrganizationsNotInUseException
newAWSOrganizationsNotInUseException'  customize = (AWSOrganizationsNotInUseException <<< customize) { "Message": Nothing }



newtype AcceptHandshakeRequest = AcceptHandshakeRequest 
  { "HandshakeId" :: (HandshakeId)
  }
derive instance newtypeAcceptHandshakeRequest :: Newtype AcceptHandshakeRequest _
derive instance repGenericAcceptHandshakeRequest :: Generic AcceptHandshakeRequest _
instance showAcceptHandshakeRequest :: Show AcceptHandshakeRequest where show = genericShow
instance decodeAcceptHandshakeRequest :: Decode AcceptHandshakeRequest where decode = genericDecode options
instance encodeAcceptHandshakeRequest :: Encode AcceptHandshakeRequest where encode = genericEncode options

-- | Constructs AcceptHandshakeRequest from required parameters
newAcceptHandshakeRequest :: HandshakeId -> AcceptHandshakeRequest
newAcceptHandshakeRequest _HandshakeId = AcceptHandshakeRequest { "HandshakeId": _HandshakeId }

-- | Constructs AcceptHandshakeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAcceptHandshakeRequest' :: HandshakeId -> ( { "HandshakeId" :: (HandshakeId) } -> {"HandshakeId" :: (HandshakeId) } ) -> AcceptHandshakeRequest
newAcceptHandshakeRequest' _HandshakeId customize = (AcceptHandshakeRequest <<< customize) { "HandshakeId": _HandshakeId }



newtype AcceptHandshakeResponse = AcceptHandshakeResponse 
  { "Handshake" :: Maybe (Handshake)
  }
derive instance newtypeAcceptHandshakeResponse :: Newtype AcceptHandshakeResponse _
derive instance repGenericAcceptHandshakeResponse :: Generic AcceptHandshakeResponse _
instance showAcceptHandshakeResponse :: Show AcceptHandshakeResponse where show = genericShow
instance decodeAcceptHandshakeResponse :: Decode AcceptHandshakeResponse where decode = genericDecode options
instance encodeAcceptHandshakeResponse :: Encode AcceptHandshakeResponse where encode = genericEncode options

-- | Constructs AcceptHandshakeResponse from required parameters
newAcceptHandshakeResponse :: AcceptHandshakeResponse
newAcceptHandshakeResponse  = AcceptHandshakeResponse { "Handshake": Nothing }

-- | Constructs AcceptHandshakeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAcceptHandshakeResponse' :: ( { "Handshake" :: Maybe (Handshake) } -> {"Handshake" :: Maybe (Handshake) } ) -> AcceptHandshakeResponse
newAcceptHandshakeResponse'  customize = (AcceptHandshakeResponse <<< customize) { "Handshake": Nothing }



-- | <p>You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the <i>IAM User Guide</i>.</p>
newtype AccessDeniedException = AccessDeniedException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeAccessDeniedException :: Newtype AccessDeniedException _
derive instance repGenericAccessDeniedException :: Generic AccessDeniedException _
instance showAccessDeniedException :: Show AccessDeniedException where show = genericShow
instance decodeAccessDeniedException :: Decode AccessDeniedException where decode = genericDecode options
instance encodeAccessDeniedException :: Encode AccessDeniedException where encode = genericEncode options

-- | Constructs AccessDeniedException from required parameters
newAccessDeniedException :: AccessDeniedException
newAccessDeniedException  = AccessDeniedException { "Message": Nothing }

-- | Constructs AccessDeniedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessDeniedException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> AccessDeniedException
newAccessDeniedException'  customize = (AccessDeniedException <<< customize) { "Message": Nothing }



-- | <p>The operation you attempted requires you to have the <code>iam:CreateServiceLinkedRole</code> so that Organizations can create the required service-linked role. You do not have that permission.</p>
newtype AccessDeniedForDependencyException = AccessDeniedForDependencyException 
  { "Message" :: Maybe (ExceptionMessage)
  , "Reason" :: Maybe (AccessDeniedForDependencyExceptionReason)
  }
derive instance newtypeAccessDeniedForDependencyException :: Newtype AccessDeniedForDependencyException _
derive instance repGenericAccessDeniedForDependencyException :: Generic AccessDeniedForDependencyException _
instance showAccessDeniedForDependencyException :: Show AccessDeniedForDependencyException where show = genericShow
instance decodeAccessDeniedForDependencyException :: Decode AccessDeniedForDependencyException where decode = genericDecode options
instance encodeAccessDeniedForDependencyException :: Encode AccessDeniedForDependencyException where encode = genericEncode options

-- | Constructs AccessDeniedForDependencyException from required parameters
newAccessDeniedForDependencyException :: AccessDeniedForDependencyException
newAccessDeniedForDependencyException  = AccessDeniedForDependencyException { "Message": Nothing, "Reason": Nothing }

-- | Constructs AccessDeniedForDependencyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessDeniedForDependencyException' :: ( { "Message" :: Maybe (ExceptionMessage) , "Reason" :: Maybe (AccessDeniedForDependencyExceptionReason) } -> {"Message" :: Maybe (ExceptionMessage) , "Reason" :: Maybe (AccessDeniedForDependencyExceptionReason) } ) -> AccessDeniedForDependencyException
newAccessDeniedForDependencyException'  customize = (AccessDeniedForDependencyException <<< customize) { "Message": Nothing, "Reason": Nothing }



newtype AccessDeniedForDependencyExceptionReason = AccessDeniedForDependencyExceptionReason String
derive instance newtypeAccessDeniedForDependencyExceptionReason :: Newtype AccessDeniedForDependencyExceptionReason _
derive instance repGenericAccessDeniedForDependencyExceptionReason :: Generic AccessDeniedForDependencyExceptionReason _
instance showAccessDeniedForDependencyExceptionReason :: Show AccessDeniedForDependencyExceptionReason where show = genericShow
instance decodeAccessDeniedForDependencyExceptionReason :: Decode AccessDeniedForDependencyExceptionReason where decode = genericDecode options
instance encodeAccessDeniedForDependencyExceptionReason :: Encode AccessDeniedForDependencyExceptionReason where encode = genericEncode options



-- | <p>Contains information about an AWS account that is a member of an organization.</p>
newtype Account = Account 
  { "Id" :: Maybe (AccountId)
  , "Arn" :: Maybe (AccountArn)
  , "Email" :: Maybe (Email)
  , "Name" :: Maybe (AccountName)
  , "Status" :: Maybe (AccountStatus)
  , "JoinedMethod" :: Maybe (AccountJoinedMethod)
  , "JoinedTimestamp" :: Maybe (Types.Timestamp)
  }
derive instance newtypeAccount :: Newtype Account _
derive instance repGenericAccount :: Generic Account _
instance showAccount :: Show Account where show = genericShow
instance decodeAccount :: Decode Account where decode = genericDecode options
instance encodeAccount :: Encode Account where encode = genericEncode options

-- | Constructs Account from required parameters
newAccount :: Account
newAccount  = Account { "Arn": Nothing, "Email": Nothing, "Id": Nothing, "JoinedMethod": Nothing, "JoinedTimestamp": Nothing, "Name": Nothing, "Status": Nothing }

-- | Constructs Account's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccount' :: ( { "Id" :: Maybe (AccountId) , "Arn" :: Maybe (AccountArn) , "Email" :: Maybe (Email) , "Name" :: Maybe (AccountName) , "Status" :: Maybe (AccountStatus) , "JoinedMethod" :: Maybe (AccountJoinedMethod) , "JoinedTimestamp" :: Maybe (Types.Timestamp) } -> {"Id" :: Maybe (AccountId) , "Arn" :: Maybe (AccountArn) , "Email" :: Maybe (Email) , "Name" :: Maybe (AccountName) , "Status" :: Maybe (AccountStatus) , "JoinedMethod" :: Maybe (AccountJoinedMethod) , "JoinedTimestamp" :: Maybe (Types.Timestamp) } ) -> Account
newAccount'  customize = (Account <<< customize) { "Arn": Nothing, "Email": Nothing, "Id": Nothing, "JoinedMethod": Nothing, "JoinedTimestamp": Nothing, "Name": Nothing, "Status": Nothing }



newtype AccountArn = AccountArn String
derive instance newtypeAccountArn :: Newtype AccountArn _
derive instance repGenericAccountArn :: Generic AccountArn _
instance showAccountArn :: Show AccountArn where show = genericShow
instance decodeAccountArn :: Decode AccountArn where decode = genericDecode options
instance encodeAccountArn :: Encode AccountArn where encode = genericEncode options



newtype AccountId = AccountId String
derive instance newtypeAccountId :: Newtype AccountId _
derive instance repGenericAccountId :: Generic AccountId _
instance showAccountId :: Show AccountId where show = genericShow
instance decodeAccountId :: Decode AccountId where decode = genericDecode options
instance encodeAccountId :: Encode AccountId where encode = genericEncode options



newtype AccountJoinedMethod = AccountJoinedMethod String
derive instance newtypeAccountJoinedMethod :: Newtype AccountJoinedMethod _
derive instance repGenericAccountJoinedMethod :: Generic AccountJoinedMethod _
instance showAccountJoinedMethod :: Show AccountJoinedMethod where show = genericShow
instance decodeAccountJoinedMethod :: Decode AccountJoinedMethod where decode = genericDecode options
instance encodeAccountJoinedMethod :: Encode AccountJoinedMethod where encode = genericEncode options



newtype AccountName = AccountName String
derive instance newtypeAccountName :: Newtype AccountName _
derive instance repGenericAccountName :: Generic AccountName _
instance showAccountName :: Show AccountName where show = genericShow
instance decodeAccountName :: Decode AccountName where decode = genericDecode options
instance encodeAccountName :: Encode AccountName where encode = genericEncode options



-- | <p> We can't find an AWS account with the AccountId that you specified, or the account whose credentials you used to make this request is not a member of an organization.</p>
newtype AccountNotFoundException = AccountNotFoundException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeAccountNotFoundException :: Newtype AccountNotFoundException _
derive instance repGenericAccountNotFoundException :: Generic AccountNotFoundException _
instance showAccountNotFoundException :: Show AccountNotFoundException where show = genericShow
instance decodeAccountNotFoundException :: Decode AccountNotFoundException where decode = genericDecode options
instance encodeAccountNotFoundException :: Encode AccountNotFoundException where encode = genericEncode options

-- | Constructs AccountNotFoundException from required parameters
newAccountNotFoundException :: AccountNotFoundException
newAccountNotFoundException  = AccountNotFoundException { "Message": Nothing }

-- | Constructs AccountNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccountNotFoundException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> AccountNotFoundException
newAccountNotFoundException'  customize = (AccountNotFoundException <<< customize) { "Message": Nothing }



newtype AccountStatus = AccountStatus String
derive instance newtypeAccountStatus :: Newtype AccountStatus _
derive instance repGenericAccountStatus :: Generic AccountStatus _
instance showAccountStatus :: Show AccountStatus where show = genericShow
instance decodeAccountStatus :: Decode AccountStatus where decode = genericDecode options
instance encodeAccountStatus :: Encode AccountStatus where encode = genericEncode options



newtype Accounts = Accounts (Array Account)
derive instance newtypeAccounts :: Newtype Accounts _
derive instance repGenericAccounts :: Generic Accounts _
instance showAccounts :: Show Accounts where show = genericShow
instance decodeAccounts :: Decode Accounts where decode = genericDecode options
instance encodeAccounts :: Encode Accounts where encode = genericEncode options



newtype ActionType = ActionType String
derive instance newtypeActionType :: Newtype ActionType _
derive instance repGenericActionType :: Generic ActionType _
instance showActionType :: Show ActionType where show = genericShow
instance decodeActionType :: Decode ActionType where decode = genericDecode options
instance encodeActionType :: Encode ActionType where encode = genericEncode options



-- | <p>This account is already a member of an organization. An account can belong to only one organization at a time.</p>
newtype AlreadyInOrganizationException = AlreadyInOrganizationException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeAlreadyInOrganizationException :: Newtype AlreadyInOrganizationException _
derive instance repGenericAlreadyInOrganizationException :: Generic AlreadyInOrganizationException _
instance showAlreadyInOrganizationException :: Show AlreadyInOrganizationException where show = genericShow
instance decodeAlreadyInOrganizationException :: Decode AlreadyInOrganizationException where decode = genericDecode options
instance encodeAlreadyInOrganizationException :: Encode AlreadyInOrganizationException where encode = genericEncode options

-- | Constructs AlreadyInOrganizationException from required parameters
newAlreadyInOrganizationException :: AlreadyInOrganizationException
newAlreadyInOrganizationException  = AlreadyInOrganizationException { "Message": Nothing }

-- | Constructs AlreadyInOrganizationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAlreadyInOrganizationException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> AlreadyInOrganizationException
newAlreadyInOrganizationException'  customize = (AlreadyInOrganizationException <<< customize) { "Message": Nothing }



newtype AttachPolicyRequest = AttachPolicyRequest 
  { "PolicyId" :: (PolicyId)
  , "TargetId" :: (PolicyTargetId)
  }
derive instance newtypeAttachPolicyRequest :: Newtype AttachPolicyRequest _
derive instance repGenericAttachPolicyRequest :: Generic AttachPolicyRequest _
instance showAttachPolicyRequest :: Show AttachPolicyRequest where show = genericShow
instance decodeAttachPolicyRequest :: Decode AttachPolicyRequest where decode = genericDecode options
instance encodeAttachPolicyRequest :: Encode AttachPolicyRequest where encode = genericEncode options

-- | Constructs AttachPolicyRequest from required parameters
newAttachPolicyRequest :: PolicyId -> PolicyTargetId -> AttachPolicyRequest
newAttachPolicyRequest _PolicyId _TargetId = AttachPolicyRequest { "PolicyId": _PolicyId, "TargetId": _TargetId }

-- | Constructs AttachPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAttachPolicyRequest' :: PolicyId -> PolicyTargetId -> ( { "PolicyId" :: (PolicyId) , "TargetId" :: (PolicyTargetId) } -> {"PolicyId" :: (PolicyId) , "TargetId" :: (PolicyTargetId) } ) -> AttachPolicyRequest
newAttachPolicyRequest' _PolicyId _TargetId customize = (AttachPolicyRequest <<< customize) { "PolicyId": _PolicyId, "TargetId": _TargetId }



newtype AwsManagedPolicy = AwsManagedPolicy Boolean
derive instance newtypeAwsManagedPolicy :: Newtype AwsManagedPolicy _
derive instance repGenericAwsManagedPolicy :: Generic AwsManagedPolicy _
instance showAwsManagedPolicy :: Show AwsManagedPolicy where show = genericShow
instance decodeAwsManagedPolicy :: Decode AwsManagedPolicy where decode = genericDecode options
instance encodeAwsManagedPolicy :: Encode AwsManagedPolicy where encode = genericEncode options



newtype CancelHandshakeRequest = CancelHandshakeRequest 
  { "HandshakeId" :: (HandshakeId)
  }
derive instance newtypeCancelHandshakeRequest :: Newtype CancelHandshakeRequest _
derive instance repGenericCancelHandshakeRequest :: Generic CancelHandshakeRequest _
instance showCancelHandshakeRequest :: Show CancelHandshakeRequest where show = genericShow
instance decodeCancelHandshakeRequest :: Decode CancelHandshakeRequest where decode = genericDecode options
instance encodeCancelHandshakeRequest :: Encode CancelHandshakeRequest where encode = genericEncode options

-- | Constructs CancelHandshakeRequest from required parameters
newCancelHandshakeRequest :: HandshakeId -> CancelHandshakeRequest
newCancelHandshakeRequest _HandshakeId = CancelHandshakeRequest { "HandshakeId": _HandshakeId }

-- | Constructs CancelHandshakeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelHandshakeRequest' :: HandshakeId -> ( { "HandshakeId" :: (HandshakeId) } -> {"HandshakeId" :: (HandshakeId) } ) -> CancelHandshakeRequest
newCancelHandshakeRequest' _HandshakeId customize = (CancelHandshakeRequest <<< customize) { "HandshakeId": _HandshakeId }



newtype CancelHandshakeResponse = CancelHandshakeResponse 
  { "Handshake" :: Maybe (Handshake)
  }
derive instance newtypeCancelHandshakeResponse :: Newtype CancelHandshakeResponse _
derive instance repGenericCancelHandshakeResponse :: Generic CancelHandshakeResponse _
instance showCancelHandshakeResponse :: Show CancelHandshakeResponse where show = genericShow
instance decodeCancelHandshakeResponse :: Decode CancelHandshakeResponse where decode = genericDecode options
instance encodeCancelHandshakeResponse :: Encode CancelHandshakeResponse where encode = genericEncode options

-- | Constructs CancelHandshakeResponse from required parameters
newCancelHandshakeResponse :: CancelHandshakeResponse
newCancelHandshakeResponse  = CancelHandshakeResponse { "Handshake": Nothing }

-- | Constructs CancelHandshakeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelHandshakeResponse' :: ( { "Handshake" :: Maybe (Handshake) } -> {"Handshake" :: Maybe (Handshake) } ) -> CancelHandshakeResponse
newCancelHandshakeResponse'  customize = (CancelHandshakeResponse <<< customize) { "Handshake": Nothing }



-- | <p>Contains a list of child entities, either OUs or accounts.</p>
newtype Child = Child 
  { "Id" :: Maybe (ChildId)
  , "Type" :: Maybe (ChildType)
  }
derive instance newtypeChild :: Newtype Child _
derive instance repGenericChild :: Generic Child _
instance showChild :: Show Child where show = genericShow
instance decodeChild :: Decode Child where decode = genericDecode options
instance encodeChild :: Encode Child where encode = genericEncode options

-- | Constructs Child from required parameters
newChild :: Child
newChild  = Child { "Id": Nothing, "Type": Nothing }

-- | Constructs Child's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChild' :: ( { "Id" :: Maybe (ChildId) , "Type" :: Maybe (ChildType) } -> {"Id" :: Maybe (ChildId) , "Type" :: Maybe (ChildType) } ) -> Child
newChild'  customize = (Child <<< customize) { "Id": Nothing, "Type": Nothing }



newtype ChildId = ChildId String
derive instance newtypeChildId :: Newtype ChildId _
derive instance repGenericChildId :: Generic ChildId _
instance showChildId :: Show ChildId where show = genericShow
instance decodeChildId :: Decode ChildId where decode = genericDecode options
instance encodeChildId :: Encode ChildId where encode = genericEncode options



-- | <p>We can't find an organizational unit (OU) or AWS account with the ChildId that you specified.</p>
newtype ChildNotFoundException = ChildNotFoundException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeChildNotFoundException :: Newtype ChildNotFoundException _
derive instance repGenericChildNotFoundException :: Generic ChildNotFoundException _
instance showChildNotFoundException :: Show ChildNotFoundException where show = genericShow
instance decodeChildNotFoundException :: Decode ChildNotFoundException where decode = genericDecode options
instance encodeChildNotFoundException :: Encode ChildNotFoundException where encode = genericEncode options

-- | Constructs ChildNotFoundException from required parameters
newChildNotFoundException :: ChildNotFoundException
newChildNotFoundException  = ChildNotFoundException { "Message": Nothing }

-- | Constructs ChildNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChildNotFoundException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> ChildNotFoundException
newChildNotFoundException'  customize = (ChildNotFoundException <<< customize) { "Message": Nothing }



newtype ChildType = ChildType String
derive instance newtypeChildType :: Newtype ChildType _
derive instance repGenericChildType :: Generic ChildType _
instance showChildType :: Show ChildType where show = genericShow
instance decodeChildType :: Decode ChildType where decode = genericDecode options
instance encodeChildType :: Encode ChildType where encode = genericEncode options



newtype Children = Children (Array Child)
derive instance newtypeChildren :: Newtype Children _
derive instance repGenericChildren :: Generic Children _
instance showChildren :: Show Children where show = genericShow
instance decodeChildren :: Decode Children where decode = genericDecode options
instance encodeChildren :: Encode Children where encode = genericEncode options



-- | <p>The target of the operation is currently being modified by a different request. Try again later.</p>
newtype ConcurrentModificationException = ConcurrentModificationException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeConcurrentModificationException :: Newtype ConcurrentModificationException _
derive instance repGenericConcurrentModificationException :: Generic ConcurrentModificationException _
instance showConcurrentModificationException :: Show ConcurrentModificationException where show = genericShow
instance decodeConcurrentModificationException :: Decode ConcurrentModificationException where decode = genericDecode options
instance encodeConcurrentModificationException :: Encode ConcurrentModificationException where encode = genericEncode options

-- | Constructs ConcurrentModificationException from required parameters
newConcurrentModificationException :: ConcurrentModificationException
newConcurrentModificationException  = ConcurrentModificationException { "Message": Nothing }

-- | Constructs ConcurrentModificationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConcurrentModificationException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> ConcurrentModificationException
newConcurrentModificationException'  customize = (ConcurrentModificationException <<< customize) { "Message": Nothing }



-- | <p>Performing this operation violates a minimum or maximum value limit. For example, attempting to removing the last SCP from an OU or root, inviting or creating too many accounts to the organization, or attaching too many policies to an account, OU, or root. This exception includes a reason that contains additional information about the violated limit:</p> <p/> <note> <p>Some of the reasons in the following list might not be applicable to this specific API or operation:</p> </note> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. If you need more accounts, contact AWS Support to request an increase in your limit. </p> <p>Or, The number of invitations that you tried to send would cause you to exceed the limit of accounts in your organization. Send fewer invitations, or contact AWS Support to request an increase in the number of accounts.</p> <p> <b>Note</b>: deleted and closed accounts still count toward your limit.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>OU_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the number of organizational units you can have in an organization.</p> </li> <li> <p>OU_DEPTH_LIMIT_EXCEEDED: You attempted to create an organizational unit tree that is too many levels deep.</p> </li> <li> <p>POLICY_NUMBER_LIMIT_EXCEEDED. You attempted to exceed the number of policies that you can have in an organization.</p> </li> <li> <p>MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to exceed the number of policies of a certain type that can be attached to an entity at one time.</p> </li> <li> <p>MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to detach a policy from an entity that would cause the entity to have fewer than the minimum number of policies of a certain type required.</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first agree to the AWS Customer Agreement. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first complete phone verification. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To create an organization with this account, you first must associate a payment instrument, such as a credit card, with the account. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To complete this operation with this member account, you first must associate a payment instrument, such as a credit card, with the account. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of accounts that you can create in one day.</p> </li> <li> <p>MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE: To create an account in this organization, you first must migrate the organization's master account to the marketplace that corresponds to the master account's address. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be associated with the same marketplace.</p> </li> <li> <p>MASTER_ACCOUNT_MISSING_CONTACT_INFO: To complete this operation, you must first provide contact a valid address and phone number for the master account. Then try the operation again.</p> </li> </ul>
newtype ConstraintViolationException = ConstraintViolationException 
  { "Message" :: Maybe (ExceptionMessage)
  , "Reason" :: Maybe (ConstraintViolationExceptionReason)
  }
derive instance newtypeConstraintViolationException :: Newtype ConstraintViolationException _
derive instance repGenericConstraintViolationException :: Generic ConstraintViolationException _
instance showConstraintViolationException :: Show ConstraintViolationException where show = genericShow
instance decodeConstraintViolationException :: Decode ConstraintViolationException where decode = genericDecode options
instance encodeConstraintViolationException :: Encode ConstraintViolationException where encode = genericEncode options

-- | Constructs ConstraintViolationException from required parameters
newConstraintViolationException :: ConstraintViolationException
newConstraintViolationException  = ConstraintViolationException { "Message": Nothing, "Reason": Nothing }

-- | Constructs ConstraintViolationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConstraintViolationException' :: ( { "Message" :: Maybe (ExceptionMessage) , "Reason" :: Maybe (ConstraintViolationExceptionReason) } -> {"Message" :: Maybe (ExceptionMessage) , "Reason" :: Maybe (ConstraintViolationExceptionReason) } ) -> ConstraintViolationException
newConstraintViolationException'  customize = (ConstraintViolationException <<< customize) { "Message": Nothing, "Reason": Nothing }



newtype ConstraintViolationExceptionReason = ConstraintViolationExceptionReason String
derive instance newtypeConstraintViolationExceptionReason :: Newtype ConstraintViolationExceptionReason _
derive instance repGenericConstraintViolationExceptionReason :: Generic ConstraintViolationExceptionReason _
instance showConstraintViolationExceptionReason :: Show ConstraintViolationExceptionReason where show = genericShow
instance decodeConstraintViolationExceptionReason :: Decode ConstraintViolationExceptionReason where decode = genericDecode options
instance encodeConstraintViolationExceptionReason :: Encode ConstraintViolationExceptionReason where encode = genericEncode options



newtype CreateAccountFailureReason = CreateAccountFailureReason String
derive instance newtypeCreateAccountFailureReason :: Newtype CreateAccountFailureReason _
derive instance repGenericCreateAccountFailureReason :: Generic CreateAccountFailureReason _
instance showCreateAccountFailureReason :: Show CreateAccountFailureReason where show = genericShow
instance decodeCreateAccountFailureReason :: Decode CreateAccountFailureReason where decode = genericDecode options
instance encodeCreateAccountFailureReason :: Encode CreateAccountFailureReason where encode = genericEncode options



newtype CreateAccountRequest = CreateAccountRequest 
  { "Email" :: (Email)
  , "AccountName" :: (AccountName)
  , "RoleName" :: Maybe (RoleName)
  , "IamUserAccessToBilling" :: Maybe (IAMUserAccessToBilling)
  }
derive instance newtypeCreateAccountRequest :: Newtype CreateAccountRequest _
derive instance repGenericCreateAccountRequest :: Generic CreateAccountRequest _
instance showCreateAccountRequest :: Show CreateAccountRequest where show = genericShow
instance decodeCreateAccountRequest :: Decode CreateAccountRequest where decode = genericDecode options
instance encodeCreateAccountRequest :: Encode CreateAccountRequest where encode = genericEncode options

-- | Constructs CreateAccountRequest from required parameters
newCreateAccountRequest :: AccountName -> Email -> CreateAccountRequest
newCreateAccountRequest _AccountName _Email = CreateAccountRequest { "AccountName": _AccountName, "Email": _Email, "IamUserAccessToBilling": Nothing, "RoleName": Nothing }

-- | Constructs CreateAccountRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccountRequest' :: AccountName -> Email -> ( { "Email" :: (Email) , "AccountName" :: (AccountName) , "RoleName" :: Maybe (RoleName) , "IamUserAccessToBilling" :: Maybe (IAMUserAccessToBilling) } -> {"Email" :: (Email) , "AccountName" :: (AccountName) , "RoleName" :: Maybe (RoleName) , "IamUserAccessToBilling" :: Maybe (IAMUserAccessToBilling) } ) -> CreateAccountRequest
newCreateAccountRequest' _AccountName _Email customize = (CreateAccountRequest <<< customize) { "AccountName": _AccountName, "Email": _Email, "IamUserAccessToBilling": Nothing, "RoleName": Nothing }



newtype CreateAccountRequestId = CreateAccountRequestId String
derive instance newtypeCreateAccountRequestId :: Newtype CreateAccountRequestId _
derive instance repGenericCreateAccountRequestId :: Generic CreateAccountRequestId _
instance showCreateAccountRequestId :: Show CreateAccountRequestId where show = genericShow
instance decodeCreateAccountRequestId :: Decode CreateAccountRequestId where decode = genericDecode options
instance encodeCreateAccountRequestId :: Encode CreateAccountRequestId where encode = genericEncode options



newtype CreateAccountResponse = CreateAccountResponse 
  { "CreateAccountStatus" :: Maybe (CreateAccountStatus)
  }
derive instance newtypeCreateAccountResponse :: Newtype CreateAccountResponse _
derive instance repGenericCreateAccountResponse :: Generic CreateAccountResponse _
instance showCreateAccountResponse :: Show CreateAccountResponse where show = genericShow
instance decodeCreateAccountResponse :: Decode CreateAccountResponse where decode = genericDecode options
instance encodeCreateAccountResponse :: Encode CreateAccountResponse where encode = genericEncode options

-- | Constructs CreateAccountResponse from required parameters
newCreateAccountResponse :: CreateAccountResponse
newCreateAccountResponse  = CreateAccountResponse { "CreateAccountStatus": Nothing }

-- | Constructs CreateAccountResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccountResponse' :: ( { "CreateAccountStatus" :: Maybe (CreateAccountStatus) } -> {"CreateAccountStatus" :: Maybe (CreateAccountStatus) } ) -> CreateAccountResponse
newCreateAccountResponse'  customize = (CreateAccountResponse <<< customize) { "CreateAccountStatus": Nothing }



newtype CreateAccountState = CreateAccountState String
derive instance newtypeCreateAccountState :: Newtype CreateAccountState _
derive instance repGenericCreateAccountState :: Generic CreateAccountState _
instance showCreateAccountState :: Show CreateAccountState where show = genericShow
instance decodeCreateAccountState :: Decode CreateAccountState where decode = genericDecode options
instance encodeCreateAccountState :: Encode CreateAccountState where encode = genericEncode options



newtype CreateAccountStates = CreateAccountStates (Array CreateAccountState)
derive instance newtypeCreateAccountStates :: Newtype CreateAccountStates _
derive instance repGenericCreateAccountStates :: Generic CreateAccountStates _
instance showCreateAccountStates :: Show CreateAccountStates where show = genericShow
instance decodeCreateAccountStates :: Decode CreateAccountStates where decode = genericDecode options
instance encodeCreateAccountStates :: Encode CreateAccountStates where encode = genericEncode options



-- | <p>Contains the status about a <a>CreateAccount</a> request to create an AWS account in an organization.</p>
newtype CreateAccountStatus = CreateAccountStatus 
  { "Id" :: Maybe (CreateAccountRequestId)
  , "AccountName" :: Maybe (AccountName)
  , "State" :: Maybe (CreateAccountState)
  , "RequestedTimestamp" :: Maybe (Types.Timestamp)
  , "CompletedTimestamp" :: Maybe (Types.Timestamp)
  , "AccountId" :: Maybe (AccountId)
  , "FailureReason" :: Maybe (CreateAccountFailureReason)
  }
derive instance newtypeCreateAccountStatus :: Newtype CreateAccountStatus _
derive instance repGenericCreateAccountStatus :: Generic CreateAccountStatus _
instance showCreateAccountStatus :: Show CreateAccountStatus where show = genericShow
instance decodeCreateAccountStatus :: Decode CreateAccountStatus where decode = genericDecode options
instance encodeCreateAccountStatus :: Encode CreateAccountStatus where encode = genericEncode options

-- | Constructs CreateAccountStatus from required parameters
newCreateAccountStatus :: CreateAccountStatus
newCreateAccountStatus  = CreateAccountStatus { "AccountId": Nothing, "AccountName": Nothing, "CompletedTimestamp": Nothing, "FailureReason": Nothing, "Id": Nothing, "RequestedTimestamp": Nothing, "State": Nothing }

-- | Constructs CreateAccountStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccountStatus' :: ( { "Id" :: Maybe (CreateAccountRequestId) , "AccountName" :: Maybe (AccountName) , "State" :: Maybe (CreateAccountState) , "RequestedTimestamp" :: Maybe (Types.Timestamp) , "CompletedTimestamp" :: Maybe (Types.Timestamp) , "AccountId" :: Maybe (AccountId) , "FailureReason" :: Maybe (CreateAccountFailureReason) } -> {"Id" :: Maybe (CreateAccountRequestId) , "AccountName" :: Maybe (AccountName) , "State" :: Maybe (CreateAccountState) , "RequestedTimestamp" :: Maybe (Types.Timestamp) , "CompletedTimestamp" :: Maybe (Types.Timestamp) , "AccountId" :: Maybe (AccountId) , "FailureReason" :: Maybe (CreateAccountFailureReason) } ) -> CreateAccountStatus
newCreateAccountStatus'  customize = (CreateAccountStatus <<< customize) { "AccountId": Nothing, "AccountName": Nothing, "CompletedTimestamp": Nothing, "FailureReason": Nothing, "Id": Nothing, "RequestedTimestamp": Nothing, "State": Nothing }



-- | <p>We can't find an create account request with the CreateAccountRequestId that you specified.</p>
newtype CreateAccountStatusNotFoundException = CreateAccountStatusNotFoundException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeCreateAccountStatusNotFoundException :: Newtype CreateAccountStatusNotFoundException _
derive instance repGenericCreateAccountStatusNotFoundException :: Generic CreateAccountStatusNotFoundException _
instance showCreateAccountStatusNotFoundException :: Show CreateAccountStatusNotFoundException where show = genericShow
instance decodeCreateAccountStatusNotFoundException :: Decode CreateAccountStatusNotFoundException where decode = genericDecode options
instance encodeCreateAccountStatusNotFoundException :: Encode CreateAccountStatusNotFoundException where encode = genericEncode options

-- | Constructs CreateAccountStatusNotFoundException from required parameters
newCreateAccountStatusNotFoundException :: CreateAccountStatusNotFoundException
newCreateAccountStatusNotFoundException  = CreateAccountStatusNotFoundException { "Message": Nothing }

-- | Constructs CreateAccountStatusNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccountStatusNotFoundException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> CreateAccountStatusNotFoundException
newCreateAccountStatusNotFoundException'  customize = (CreateAccountStatusNotFoundException <<< customize) { "Message": Nothing }



newtype CreateAccountStatuses = CreateAccountStatuses (Array CreateAccountStatus)
derive instance newtypeCreateAccountStatuses :: Newtype CreateAccountStatuses _
derive instance repGenericCreateAccountStatuses :: Generic CreateAccountStatuses _
instance showCreateAccountStatuses :: Show CreateAccountStatuses where show = genericShow
instance decodeCreateAccountStatuses :: Decode CreateAccountStatuses where decode = genericDecode options
instance encodeCreateAccountStatuses :: Encode CreateAccountStatuses where encode = genericEncode options



newtype CreateOrganizationRequest = CreateOrganizationRequest 
  { "FeatureSet" :: Maybe (OrganizationFeatureSet)
  }
derive instance newtypeCreateOrganizationRequest :: Newtype CreateOrganizationRequest _
derive instance repGenericCreateOrganizationRequest :: Generic CreateOrganizationRequest _
instance showCreateOrganizationRequest :: Show CreateOrganizationRequest where show = genericShow
instance decodeCreateOrganizationRequest :: Decode CreateOrganizationRequest where decode = genericDecode options
instance encodeCreateOrganizationRequest :: Encode CreateOrganizationRequest where encode = genericEncode options

-- | Constructs CreateOrganizationRequest from required parameters
newCreateOrganizationRequest :: CreateOrganizationRequest
newCreateOrganizationRequest  = CreateOrganizationRequest { "FeatureSet": Nothing }

-- | Constructs CreateOrganizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOrganizationRequest' :: ( { "FeatureSet" :: Maybe (OrganizationFeatureSet) } -> {"FeatureSet" :: Maybe (OrganizationFeatureSet) } ) -> CreateOrganizationRequest
newCreateOrganizationRequest'  customize = (CreateOrganizationRequest <<< customize) { "FeatureSet": Nothing }



newtype CreateOrganizationResponse = CreateOrganizationResponse 
  { "Organization" :: Maybe (Organization)
  }
derive instance newtypeCreateOrganizationResponse :: Newtype CreateOrganizationResponse _
derive instance repGenericCreateOrganizationResponse :: Generic CreateOrganizationResponse _
instance showCreateOrganizationResponse :: Show CreateOrganizationResponse where show = genericShow
instance decodeCreateOrganizationResponse :: Decode CreateOrganizationResponse where decode = genericDecode options
instance encodeCreateOrganizationResponse :: Encode CreateOrganizationResponse where encode = genericEncode options

-- | Constructs CreateOrganizationResponse from required parameters
newCreateOrganizationResponse :: CreateOrganizationResponse
newCreateOrganizationResponse  = CreateOrganizationResponse { "Organization": Nothing }

-- | Constructs CreateOrganizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOrganizationResponse' :: ( { "Organization" :: Maybe (Organization) } -> {"Organization" :: Maybe (Organization) } ) -> CreateOrganizationResponse
newCreateOrganizationResponse'  customize = (CreateOrganizationResponse <<< customize) { "Organization": Nothing }



newtype CreateOrganizationalUnitRequest = CreateOrganizationalUnitRequest 
  { "ParentId" :: (ParentId)
  , "Name" :: (OrganizationalUnitName)
  }
derive instance newtypeCreateOrganizationalUnitRequest :: Newtype CreateOrganizationalUnitRequest _
derive instance repGenericCreateOrganizationalUnitRequest :: Generic CreateOrganizationalUnitRequest _
instance showCreateOrganizationalUnitRequest :: Show CreateOrganizationalUnitRequest where show = genericShow
instance decodeCreateOrganizationalUnitRequest :: Decode CreateOrganizationalUnitRequest where decode = genericDecode options
instance encodeCreateOrganizationalUnitRequest :: Encode CreateOrganizationalUnitRequest where encode = genericEncode options

-- | Constructs CreateOrganizationalUnitRequest from required parameters
newCreateOrganizationalUnitRequest :: OrganizationalUnitName -> ParentId -> CreateOrganizationalUnitRequest
newCreateOrganizationalUnitRequest _Name _ParentId = CreateOrganizationalUnitRequest { "Name": _Name, "ParentId": _ParentId }

-- | Constructs CreateOrganizationalUnitRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOrganizationalUnitRequest' :: OrganizationalUnitName -> ParentId -> ( { "ParentId" :: (ParentId) , "Name" :: (OrganizationalUnitName) } -> {"ParentId" :: (ParentId) , "Name" :: (OrganizationalUnitName) } ) -> CreateOrganizationalUnitRequest
newCreateOrganizationalUnitRequest' _Name _ParentId customize = (CreateOrganizationalUnitRequest <<< customize) { "Name": _Name, "ParentId": _ParentId }



newtype CreateOrganizationalUnitResponse = CreateOrganizationalUnitResponse 
  { "OrganizationalUnit" :: Maybe (OrganizationalUnit)
  }
derive instance newtypeCreateOrganizationalUnitResponse :: Newtype CreateOrganizationalUnitResponse _
derive instance repGenericCreateOrganizationalUnitResponse :: Generic CreateOrganizationalUnitResponse _
instance showCreateOrganizationalUnitResponse :: Show CreateOrganizationalUnitResponse where show = genericShow
instance decodeCreateOrganizationalUnitResponse :: Decode CreateOrganizationalUnitResponse where decode = genericDecode options
instance encodeCreateOrganizationalUnitResponse :: Encode CreateOrganizationalUnitResponse where encode = genericEncode options

-- | Constructs CreateOrganizationalUnitResponse from required parameters
newCreateOrganizationalUnitResponse :: CreateOrganizationalUnitResponse
newCreateOrganizationalUnitResponse  = CreateOrganizationalUnitResponse { "OrganizationalUnit": Nothing }

-- | Constructs CreateOrganizationalUnitResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOrganizationalUnitResponse' :: ( { "OrganizationalUnit" :: Maybe (OrganizationalUnit) } -> {"OrganizationalUnit" :: Maybe (OrganizationalUnit) } ) -> CreateOrganizationalUnitResponse
newCreateOrganizationalUnitResponse'  customize = (CreateOrganizationalUnitResponse <<< customize) { "OrganizationalUnit": Nothing }



newtype CreatePolicyRequest = CreatePolicyRequest 
  { "Content" :: (PolicyContent)
  , "Description" :: (PolicyDescription)
  , "Name" :: (PolicyName)
  , "Type" :: (PolicyType)
  }
derive instance newtypeCreatePolicyRequest :: Newtype CreatePolicyRequest _
derive instance repGenericCreatePolicyRequest :: Generic CreatePolicyRequest _
instance showCreatePolicyRequest :: Show CreatePolicyRequest where show = genericShow
instance decodeCreatePolicyRequest :: Decode CreatePolicyRequest where decode = genericDecode options
instance encodeCreatePolicyRequest :: Encode CreatePolicyRequest where encode = genericEncode options

-- | Constructs CreatePolicyRequest from required parameters
newCreatePolicyRequest :: PolicyContent -> PolicyDescription -> PolicyName -> PolicyType -> CreatePolicyRequest
newCreatePolicyRequest _Content _Description _Name _Type = CreatePolicyRequest { "Content": _Content, "Description": _Description, "Name": _Name, "Type": _Type }

-- | Constructs CreatePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyRequest' :: PolicyContent -> PolicyDescription -> PolicyName -> PolicyType -> ( { "Content" :: (PolicyContent) , "Description" :: (PolicyDescription) , "Name" :: (PolicyName) , "Type" :: (PolicyType) } -> {"Content" :: (PolicyContent) , "Description" :: (PolicyDescription) , "Name" :: (PolicyName) , "Type" :: (PolicyType) } ) -> CreatePolicyRequest
newCreatePolicyRequest' _Content _Description _Name _Type customize = (CreatePolicyRequest <<< customize) { "Content": _Content, "Description": _Description, "Name": _Name, "Type": _Type }



newtype CreatePolicyResponse = CreatePolicyResponse 
  { "Policy" :: Maybe (Policy)
  }
derive instance newtypeCreatePolicyResponse :: Newtype CreatePolicyResponse _
derive instance repGenericCreatePolicyResponse :: Generic CreatePolicyResponse _
instance showCreatePolicyResponse :: Show CreatePolicyResponse where show = genericShow
instance decodeCreatePolicyResponse :: Decode CreatePolicyResponse where decode = genericDecode options
instance encodeCreatePolicyResponse :: Encode CreatePolicyResponse where encode = genericEncode options

-- | Constructs CreatePolicyResponse from required parameters
newCreatePolicyResponse :: CreatePolicyResponse
newCreatePolicyResponse  = CreatePolicyResponse { "Policy": Nothing }

-- | Constructs CreatePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyResponse' :: ( { "Policy" :: Maybe (Policy) } -> {"Policy" :: Maybe (Policy) } ) -> CreatePolicyResponse
newCreatePolicyResponse'  customize = (CreatePolicyResponse <<< customize) { "Policy": Nothing }



newtype DeclineHandshakeRequest = DeclineHandshakeRequest 
  { "HandshakeId" :: (HandshakeId)
  }
derive instance newtypeDeclineHandshakeRequest :: Newtype DeclineHandshakeRequest _
derive instance repGenericDeclineHandshakeRequest :: Generic DeclineHandshakeRequest _
instance showDeclineHandshakeRequest :: Show DeclineHandshakeRequest where show = genericShow
instance decodeDeclineHandshakeRequest :: Decode DeclineHandshakeRequest where decode = genericDecode options
instance encodeDeclineHandshakeRequest :: Encode DeclineHandshakeRequest where encode = genericEncode options

-- | Constructs DeclineHandshakeRequest from required parameters
newDeclineHandshakeRequest :: HandshakeId -> DeclineHandshakeRequest
newDeclineHandshakeRequest _HandshakeId = DeclineHandshakeRequest { "HandshakeId": _HandshakeId }

-- | Constructs DeclineHandshakeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeclineHandshakeRequest' :: HandshakeId -> ( { "HandshakeId" :: (HandshakeId) } -> {"HandshakeId" :: (HandshakeId) } ) -> DeclineHandshakeRequest
newDeclineHandshakeRequest' _HandshakeId customize = (DeclineHandshakeRequest <<< customize) { "HandshakeId": _HandshakeId }



newtype DeclineHandshakeResponse = DeclineHandshakeResponse 
  { "Handshake" :: Maybe (Handshake)
  }
derive instance newtypeDeclineHandshakeResponse :: Newtype DeclineHandshakeResponse _
derive instance repGenericDeclineHandshakeResponse :: Generic DeclineHandshakeResponse _
instance showDeclineHandshakeResponse :: Show DeclineHandshakeResponse where show = genericShow
instance decodeDeclineHandshakeResponse :: Decode DeclineHandshakeResponse where decode = genericDecode options
instance encodeDeclineHandshakeResponse :: Encode DeclineHandshakeResponse where encode = genericEncode options

-- | Constructs DeclineHandshakeResponse from required parameters
newDeclineHandshakeResponse :: DeclineHandshakeResponse
newDeclineHandshakeResponse  = DeclineHandshakeResponse { "Handshake": Nothing }

-- | Constructs DeclineHandshakeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeclineHandshakeResponse' :: ( { "Handshake" :: Maybe (Handshake) } -> {"Handshake" :: Maybe (Handshake) } ) -> DeclineHandshakeResponse
newDeclineHandshakeResponse'  customize = (DeclineHandshakeResponse <<< customize) { "Handshake": Nothing }



newtype DeleteOrganizationalUnitRequest = DeleteOrganizationalUnitRequest 
  { "OrganizationalUnitId" :: (OrganizationalUnitId)
  }
derive instance newtypeDeleteOrganizationalUnitRequest :: Newtype DeleteOrganizationalUnitRequest _
derive instance repGenericDeleteOrganizationalUnitRequest :: Generic DeleteOrganizationalUnitRequest _
instance showDeleteOrganizationalUnitRequest :: Show DeleteOrganizationalUnitRequest where show = genericShow
instance decodeDeleteOrganizationalUnitRequest :: Decode DeleteOrganizationalUnitRequest where decode = genericDecode options
instance encodeDeleteOrganizationalUnitRequest :: Encode DeleteOrganizationalUnitRequest where encode = genericEncode options

-- | Constructs DeleteOrganizationalUnitRequest from required parameters
newDeleteOrganizationalUnitRequest :: OrganizationalUnitId -> DeleteOrganizationalUnitRequest
newDeleteOrganizationalUnitRequest _OrganizationalUnitId = DeleteOrganizationalUnitRequest { "OrganizationalUnitId": _OrganizationalUnitId }

-- | Constructs DeleteOrganizationalUnitRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeleteOrganizationalUnitRequest' :: OrganizationalUnitId -> ( { "OrganizationalUnitId" :: (OrganizationalUnitId) } -> {"OrganizationalUnitId" :: (OrganizationalUnitId) } ) -> DeleteOrganizationalUnitRequest
newDeleteOrganizationalUnitRequest' _OrganizationalUnitId customize = (DeleteOrganizationalUnitRequest <<< customize) { "OrganizationalUnitId": _OrganizationalUnitId }



newtype DeletePolicyRequest = DeletePolicyRequest 
  { "PolicyId" :: (PolicyId)
  }
derive instance newtypeDeletePolicyRequest :: Newtype DeletePolicyRequest _
derive instance repGenericDeletePolicyRequest :: Generic DeletePolicyRequest _
instance showDeletePolicyRequest :: Show DeletePolicyRequest where show = genericShow
instance decodeDeletePolicyRequest :: Decode DeletePolicyRequest where decode = genericDecode options
instance encodeDeletePolicyRequest :: Encode DeletePolicyRequest where encode = genericEncode options

-- | Constructs DeletePolicyRequest from required parameters
newDeletePolicyRequest :: PolicyId -> DeletePolicyRequest
newDeletePolicyRequest _PolicyId = DeletePolicyRequest { "PolicyId": _PolicyId }

-- | Constructs DeletePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeletePolicyRequest' :: PolicyId -> ( { "PolicyId" :: (PolicyId) } -> {"PolicyId" :: (PolicyId) } ) -> DeletePolicyRequest
newDeletePolicyRequest' _PolicyId customize = (DeletePolicyRequest <<< customize) { "PolicyId": _PolicyId }



newtype DescribeAccountRequest = DescribeAccountRequest 
  { "AccountId" :: (AccountId)
  }
derive instance newtypeDescribeAccountRequest :: Newtype DescribeAccountRequest _
derive instance repGenericDescribeAccountRequest :: Generic DescribeAccountRequest _
instance showDescribeAccountRequest :: Show DescribeAccountRequest where show = genericShow
instance decodeDescribeAccountRequest :: Decode DescribeAccountRequest where decode = genericDecode options
instance encodeDescribeAccountRequest :: Encode DescribeAccountRequest where encode = genericEncode options

-- | Constructs DescribeAccountRequest from required parameters
newDescribeAccountRequest :: AccountId -> DescribeAccountRequest
newDescribeAccountRequest _AccountId = DescribeAccountRequest { "AccountId": _AccountId }

-- | Constructs DescribeAccountRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAccountRequest' :: AccountId -> ( { "AccountId" :: (AccountId) } -> {"AccountId" :: (AccountId) } ) -> DescribeAccountRequest
newDescribeAccountRequest' _AccountId customize = (DescribeAccountRequest <<< customize) { "AccountId": _AccountId }



newtype DescribeAccountResponse = DescribeAccountResponse 
  { "Account" :: Maybe (Account)
  }
derive instance newtypeDescribeAccountResponse :: Newtype DescribeAccountResponse _
derive instance repGenericDescribeAccountResponse :: Generic DescribeAccountResponse _
instance showDescribeAccountResponse :: Show DescribeAccountResponse where show = genericShow
instance decodeDescribeAccountResponse :: Decode DescribeAccountResponse where decode = genericDecode options
instance encodeDescribeAccountResponse :: Encode DescribeAccountResponse where encode = genericEncode options

-- | Constructs DescribeAccountResponse from required parameters
newDescribeAccountResponse :: DescribeAccountResponse
newDescribeAccountResponse  = DescribeAccountResponse { "Account": Nothing }

-- | Constructs DescribeAccountResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAccountResponse' :: ( { "Account" :: Maybe (Account) } -> {"Account" :: Maybe (Account) } ) -> DescribeAccountResponse
newDescribeAccountResponse'  customize = (DescribeAccountResponse <<< customize) { "Account": Nothing }



newtype DescribeCreateAccountStatusRequest = DescribeCreateAccountStatusRequest 
  { "CreateAccountRequestId" :: (CreateAccountRequestId)
  }
derive instance newtypeDescribeCreateAccountStatusRequest :: Newtype DescribeCreateAccountStatusRequest _
derive instance repGenericDescribeCreateAccountStatusRequest :: Generic DescribeCreateAccountStatusRequest _
instance showDescribeCreateAccountStatusRequest :: Show DescribeCreateAccountStatusRequest where show = genericShow
instance decodeDescribeCreateAccountStatusRequest :: Decode DescribeCreateAccountStatusRequest where decode = genericDecode options
instance encodeDescribeCreateAccountStatusRequest :: Encode DescribeCreateAccountStatusRequest where encode = genericEncode options

-- | Constructs DescribeCreateAccountStatusRequest from required parameters
newDescribeCreateAccountStatusRequest :: CreateAccountRequestId -> DescribeCreateAccountStatusRequest
newDescribeCreateAccountStatusRequest _CreateAccountRequestId = DescribeCreateAccountStatusRequest { "CreateAccountRequestId": _CreateAccountRequestId }

-- | Constructs DescribeCreateAccountStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCreateAccountStatusRequest' :: CreateAccountRequestId -> ( { "CreateAccountRequestId" :: (CreateAccountRequestId) } -> {"CreateAccountRequestId" :: (CreateAccountRequestId) } ) -> DescribeCreateAccountStatusRequest
newDescribeCreateAccountStatusRequest' _CreateAccountRequestId customize = (DescribeCreateAccountStatusRequest <<< customize) { "CreateAccountRequestId": _CreateAccountRequestId }



newtype DescribeCreateAccountStatusResponse = DescribeCreateAccountStatusResponse 
  { "CreateAccountStatus" :: Maybe (CreateAccountStatus)
  }
derive instance newtypeDescribeCreateAccountStatusResponse :: Newtype DescribeCreateAccountStatusResponse _
derive instance repGenericDescribeCreateAccountStatusResponse :: Generic DescribeCreateAccountStatusResponse _
instance showDescribeCreateAccountStatusResponse :: Show DescribeCreateAccountStatusResponse where show = genericShow
instance decodeDescribeCreateAccountStatusResponse :: Decode DescribeCreateAccountStatusResponse where decode = genericDecode options
instance encodeDescribeCreateAccountStatusResponse :: Encode DescribeCreateAccountStatusResponse where encode = genericEncode options

-- | Constructs DescribeCreateAccountStatusResponse from required parameters
newDescribeCreateAccountStatusResponse :: DescribeCreateAccountStatusResponse
newDescribeCreateAccountStatusResponse  = DescribeCreateAccountStatusResponse { "CreateAccountStatus": Nothing }

-- | Constructs DescribeCreateAccountStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCreateAccountStatusResponse' :: ( { "CreateAccountStatus" :: Maybe (CreateAccountStatus) } -> {"CreateAccountStatus" :: Maybe (CreateAccountStatus) } ) -> DescribeCreateAccountStatusResponse
newDescribeCreateAccountStatusResponse'  customize = (DescribeCreateAccountStatusResponse <<< customize) { "CreateAccountStatus": Nothing }



newtype DescribeHandshakeRequest = DescribeHandshakeRequest 
  { "HandshakeId" :: (HandshakeId)
  }
derive instance newtypeDescribeHandshakeRequest :: Newtype DescribeHandshakeRequest _
derive instance repGenericDescribeHandshakeRequest :: Generic DescribeHandshakeRequest _
instance showDescribeHandshakeRequest :: Show DescribeHandshakeRequest where show = genericShow
instance decodeDescribeHandshakeRequest :: Decode DescribeHandshakeRequest where decode = genericDecode options
instance encodeDescribeHandshakeRequest :: Encode DescribeHandshakeRequest where encode = genericEncode options

-- | Constructs DescribeHandshakeRequest from required parameters
newDescribeHandshakeRequest :: HandshakeId -> DescribeHandshakeRequest
newDescribeHandshakeRequest _HandshakeId = DescribeHandshakeRequest { "HandshakeId": _HandshakeId }

-- | Constructs DescribeHandshakeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeHandshakeRequest' :: HandshakeId -> ( { "HandshakeId" :: (HandshakeId) } -> {"HandshakeId" :: (HandshakeId) } ) -> DescribeHandshakeRequest
newDescribeHandshakeRequest' _HandshakeId customize = (DescribeHandshakeRequest <<< customize) { "HandshakeId": _HandshakeId }



newtype DescribeHandshakeResponse = DescribeHandshakeResponse 
  { "Handshake" :: Maybe (Handshake)
  }
derive instance newtypeDescribeHandshakeResponse :: Newtype DescribeHandshakeResponse _
derive instance repGenericDescribeHandshakeResponse :: Generic DescribeHandshakeResponse _
instance showDescribeHandshakeResponse :: Show DescribeHandshakeResponse where show = genericShow
instance decodeDescribeHandshakeResponse :: Decode DescribeHandshakeResponse where decode = genericDecode options
instance encodeDescribeHandshakeResponse :: Encode DescribeHandshakeResponse where encode = genericEncode options

-- | Constructs DescribeHandshakeResponse from required parameters
newDescribeHandshakeResponse :: DescribeHandshakeResponse
newDescribeHandshakeResponse  = DescribeHandshakeResponse { "Handshake": Nothing }

-- | Constructs DescribeHandshakeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeHandshakeResponse' :: ( { "Handshake" :: Maybe (Handshake) } -> {"Handshake" :: Maybe (Handshake) } ) -> DescribeHandshakeResponse
newDescribeHandshakeResponse'  customize = (DescribeHandshakeResponse <<< customize) { "Handshake": Nothing }



newtype DescribeOrganizationResponse = DescribeOrganizationResponse 
  { "Organization" :: Maybe (Organization)
  }
derive instance newtypeDescribeOrganizationResponse :: Newtype DescribeOrganizationResponse _
derive instance repGenericDescribeOrganizationResponse :: Generic DescribeOrganizationResponse _
instance showDescribeOrganizationResponse :: Show DescribeOrganizationResponse where show = genericShow
instance decodeDescribeOrganizationResponse :: Decode DescribeOrganizationResponse where decode = genericDecode options
instance encodeDescribeOrganizationResponse :: Encode DescribeOrganizationResponse where encode = genericEncode options

-- | Constructs DescribeOrganizationResponse from required parameters
newDescribeOrganizationResponse :: DescribeOrganizationResponse
newDescribeOrganizationResponse  = DescribeOrganizationResponse { "Organization": Nothing }

-- | Constructs DescribeOrganizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeOrganizationResponse' :: ( { "Organization" :: Maybe (Organization) } -> {"Organization" :: Maybe (Organization) } ) -> DescribeOrganizationResponse
newDescribeOrganizationResponse'  customize = (DescribeOrganizationResponse <<< customize) { "Organization": Nothing }



newtype DescribeOrganizationalUnitRequest = DescribeOrganizationalUnitRequest 
  { "OrganizationalUnitId" :: (OrganizationalUnitId)
  }
derive instance newtypeDescribeOrganizationalUnitRequest :: Newtype DescribeOrganizationalUnitRequest _
derive instance repGenericDescribeOrganizationalUnitRequest :: Generic DescribeOrganizationalUnitRequest _
instance showDescribeOrganizationalUnitRequest :: Show DescribeOrganizationalUnitRequest where show = genericShow
instance decodeDescribeOrganizationalUnitRequest :: Decode DescribeOrganizationalUnitRequest where decode = genericDecode options
instance encodeDescribeOrganizationalUnitRequest :: Encode DescribeOrganizationalUnitRequest where encode = genericEncode options

-- | Constructs DescribeOrganizationalUnitRequest from required parameters
newDescribeOrganizationalUnitRequest :: OrganizationalUnitId -> DescribeOrganizationalUnitRequest
newDescribeOrganizationalUnitRequest _OrganizationalUnitId = DescribeOrganizationalUnitRequest { "OrganizationalUnitId": _OrganizationalUnitId }

-- | Constructs DescribeOrganizationalUnitRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeOrganizationalUnitRequest' :: OrganizationalUnitId -> ( { "OrganizationalUnitId" :: (OrganizationalUnitId) } -> {"OrganizationalUnitId" :: (OrganizationalUnitId) } ) -> DescribeOrganizationalUnitRequest
newDescribeOrganizationalUnitRequest' _OrganizationalUnitId customize = (DescribeOrganizationalUnitRequest <<< customize) { "OrganizationalUnitId": _OrganizationalUnitId }



newtype DescribeOrganizationalUnitResponse = DescribeOrganizationalUnitResponse 
  { "OrganizationalUnit" :: Maybe (OrganizationalUnit)
  }
derive instance newtypeDescribeOrganizationalUnitResponse :: Newtype DescribeOrganizationalUnitResponse _
derive instance repGenericDescribeOrganizationalUnitResponse :: Generic DescribeOrganizationalUnitResponse _
instance showDescribeOrganizationalUnitResponse :: Show DescribeOrganizationalUnitResponse where show = genericShow
instance decodeDescribeOrganizationalUnitResponse :: Decode DescribeOrganizationalUnitResponse where decode = genericDecode options
instance encodeDescribeOrganizationalUnitResponse :: Encode DescribeOrganizationalUnitResponse where encode = genericEncode options

-- | Constructs DescribeOrganizationalUnitResponse from required parameters
newDescribeOrganizationalUnitResponse :: DescribeOrganizationalUnitResponse
newDescribeOrganizationalUnitResponse  = DescribeOrganizationalUnitResponse { "OrganizationalUnit": Nothing }

-- | Constructs DescribeOrganizationalUnitResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeOrganizationalUnitResponse' :: ( { "OrganizationalUnit" :: Maybe (OrganizationalUnit) } -> {"OrganizationalUnit" :: Maybe (OrganizationalUnit) } ) -> DescribeOrganizationalUnitResponse
newDescribeOrganizationalUnitResponse'  customize = (DescribeOrganizationalUnitResponse <<< customize) { "OrganizationalUnit": Nothing }



newtype DescribePolicyRequest = DescribePolicyRequest 
  { "PolicyId" :: (PolicyId)
  }
derive instance newtypeDescribePolicyRequest :: Newtype DescribePolicyRequest _
derive instance repGenericDescribePolicyRequest :: Generic DescribePolicyRequest _
instance showDescribePolicyRequest :: Show DescribePolicyRequest where show = genericShow
instance decodeDescribePolicyRequest :: Decode DescribePolicyRequest where decode = genericDecode options
instance encodeDescribePolicyRequest :: Encode DescribePolicyRequest where encode = genericEncode options

-- | Constructs DescribePolicyRequest from required parameters
newDescribePolicyRequest :: PolicyId -> DescribePolicyRequest
newDescribePolicyRequest _PolicyId = DescribePolicyRequest { "PolicyId": _PolicyId }

-- | Constructs DescribePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribePolicyRequest' :: PolicyId -> ( { "PolicyId" :: (PolicyId) } -> {"PolicyId" :: (PolicyId) } ) -> DescribePolicyRequest
newDescribePolicyRequest' _PolicyId customize = (DescribePolicyRequest <<< customize) { "PolicyId": _PolicyId }



newtype DescribePolicyResponse = DescribePolicyResponse 
  { "Policy" :: Maybe (Policy)
  }
derive instance newtypeDescribePolicyResponse :: Newtype DescribePolicyResponse _
derive instance repGenericDescribePolicyResponse :: Generic DescribePolicyResponse _
instance showDescribePolicyResponse :: Show DescribePolicyResponse where show = genericShow
instance decodeDescribePolicyResponse :: Decode DescribePolicyResponse where decode = genericDecode options
instance encodeDescribePolicyResponse :: Encode DescribePolicyResponse where encode = genericEncode options

-- | Constructs DescribePolicyResponse from required parameters
newDescribePolicyResponse :: DescribePolicyResponse
newDescribePolicyResponse  = DescribePolicyResponse { "Policy": Nothing }

-- | Constructs DescribePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribePolicyResponse' :: ( { "Policy" :: Maybe (Policy) } -> {"Policy" :: Maybe (Policy) } ) -> DescribePolicyResponse
newDescribePolicyResponse'  customize = (DescribePolicyResponse <<< customize) { "Policy": Nothing }



-- | <p>We can't find the destination container (a root or OU) with the ParentId that you specified.</p>
newtype DestinationParentNotFoundException = DestinationParentNotFoundException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeDestinationParentNotFoundException :: Newtype DestinationParentNotFoundException _
derive instance repGenericDestinationParentNotFoundException :: Generic DestinationParentNotFoundException _
instance showDestinationParentNotFoundException :: Show DestinationParentNotFoundException where show = genericShow
instance decodeDestinationParentNotFoundException :: Decode DestinationParentNotFoundException where decode = genericDecode options
instance encodeDestinationParentNotFoundException :: Encode DestinationParentNotFoundException where encode = genericEncode options

-- | Constructs DestinationParentNotFoundException from required parameters
newDestinationParentNotFoundException :: DestinationParentNotFoundException
newDestinationParentNotFoundException  = DestinationParentNotFoundException { "Message": Nothing }

-- | Constructs DestinationParentNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDestinationParentNotFoundException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> DestinationParentNotFoundException
newDestinationParentNotFoundException'  customize = (DestinationParentNotFoundException <<< customize) { "Message": Nothing }



newtype DetachPolicyRequest = DetachPolicyRequest 
  { "PolicyId" :: (PolicyId)
  , "TargetId" :: (PolicyTargetId)
  }
derive instance newtypeDetachPolicyRequest :: Newtype DetachPolicyRequest _
derive instance repGenericDetachPolicyRequest :: Generic DetachPolicyRequest _
instance showDetachPolicyRequest :: Show DetachPolicyRequest where show = genericShow
instance decodeDetachPolicyRequest :: Decode DetachPolicyRequest where decode = genericDecode options
instance encodeDetachPolicyRequest :: Encode DetachPolicyRequest where encode = genericEncode options

-- | Constructs DetachPolicyRequest from required parameters
newDetachPolicyRequest :: PolicyId -> PolicyTargetId -> DetachPolicyRequest
newDetachPolicyRequest _PolicyId _TargetId = DetachPolicyRequest { "PolicyId": _PolicyId, "TargetId": _TargetId }

-- | Constructs DetachPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDetachPolicyRequest' :: PolicyId -> PolicyTargetId -> ( { "PolicyId" :: (PolicyId) , "TargetId" :: (PolicyTargetId) } -> {"PolicyId" :: (PolicyId) , "TargetId" :: (PolicyTargetId) } ) -> DetachPolicyRequest
newDetachPolicyRequest' _PolicyId _TargetId customize = (DetachPolicyRequest <<< customize) { "PolicyId": _PolicyId, "TargetId": _TargetId }



newtype DisableAWSServiceAccessRequest = DisableAWSServiceAccessRequest 
  { "ServicePrincipal" :: (ServicePrincipal)
  }
derive instance newtypeDisableAWSServiceAccessRequest :: Newtype DisableAWSServiceAccessRequest _
derive instance repGenericDisableAWSServiceAccessRequest :: Generic DisableAWSServiceAccessRequest _
instance showDisableAWSServiceAccessRequest :: Show DisableAWSServiceAccessRequest where show = genericShow
instance decodeDisableAWSServiceAccessRequest :: Decode DisableAWSServiceAccessRequest where decode = genericDecode options
instance encodeDisableAWSServiceAccessRequest :: Encode DisableAWSServiceAccessRequest where encode = genericEncode options

-- | Constructs DisableAWSServiceAccessRequest from required parameters
newDisableAWSServiceAccessRequest :: ServicePrincipal -> DisableAWSServiceAccessRequest
newDisableAWSServiceAccessRequest _ServicePrincipal = DisableAWSServiceAccessRequest { "ServicePrincipal": _ServicePrincipal }

-- | Constructs DisableAWSServiceAccessRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisableAWSServiceAccessRequest' :: ServicePrincipal -> ( { "ServicePrincipal" :: (ServicePrincipal) } -> {"ServicePrincipal" :: (ServicePrincipal) } ) -> DisableAWSServiceAccessRequest
newDisableAWSServiceAccessRequest' _ServicePrincipal customize = (DisableAWSServiceAccessRequest <<< customize) { "ServicePrincipal": _ServicePrincipal }



newtype DisablePolicyTypeRequest = DisablePolicyTypeRequest 
  { "RootId" :: (RootId)
  , "PolicyType" :: (PolicyType)
  }
derive instance newtypeDisablePolicyTypeRequest :: Newtype DisablePolicyTypeRequest _
derive instance repGenericDisablePolicyTypeRequest :: Generic DisablePolicyTypeRequest _
instance showDisablePolicyTypeRequest :: Show DisablePolicyTypeRequest where show = genericShow
instance decodeDisablePolicyTypeRequest :: Decode DisablePolicyTypeRequest where decode = genericDecode options
instance encodeDisablePolicyTypeRequest :: Encode DisablePolicyTypeRequest where encode = genericEncode options

-- | Constructs DisablePolicyTypeRequest from required parameters
newDisablePolicyTypeRequest :: PolicyType -> RootId -> DisablePolicyTypeRequest
newDisablePolicyTypeRequest _PolicyType _RootId = DisablePolicyTypeRequest { "PolicyType": _PolicyType, "RootId": _RootId }

-- | Constructs DisablePolicyTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisablePolicyTypeRequest' :: PolicyType -> RootId -> ( { "RootId" :: (RootId) , "PolicyType" :: (PolicyType) } -> {"RootId" :: (RootId) , "PolicyType" :: (PolicyType) } ) -> DisablePolicyTypeRequest
newDisablePolicyTypeRequest' _PolicyType _RootId customize = (DisablePolicyTypeRequest <<< customize) { "PolicyType": _PolicyType, "RootId": _RootId }



newtype DisablePolicyTypeResponse = DisablePolicyTypeResponse 
  { "Root" :: Maybe (Root)
  }
derive instance newtypeDisablePolicyTypeResponse :: Newtype DisablePolicyTypeResponse _
derive instance repGenericDisablePolicyTypeResponse :: Generic DisablePolicyTypeResponse _
instance showDisablePolicyTypeResponse :: Show DisablePolicyTypeResponse where show = genericShow
instance decodeDisablePolicyTypeResponse :: Decode DisablePolicyTypeResponse where decode = genericDecode options
instance encodeDisablePolicyTypeResponse :: Encode DisablePolicyTypeResponse where encode = genericEncode options

-- | Constructs DisablePolicyTypeResponse from required parameters
newDisablePolicyTypeResponse :: DisablePolicyTypeResponse
newDisablePolicyTypeResponse  = DisablePolicyTypeResponse { "Root": Nothing }

-- | Constructs DisablePolicyTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisablePolicyTypeResponse' :: ( { "Root" :: Maybe (Root) } -> {"Root" :: Maybe (Root) } ) -> DisablePolicyTypeResponse
newDisablePolicyTypeResponse'  customize = (DisablePolicyTypeResponse <<< customize) { "Root": Nothing }



-- | <p>That account is already present in the specified destination.</p>
newtype DuplicateAccountException = DuplicateAccountException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeDuplicateAccountException :: Newtype DuplicateAccountException _
derive instance repGenericDuplicateAccountException :: Generic DuplicateAccountException _
instance showDuplicateAccountException :: Show DuplicateAccountException where show = genericShow
instance decodeDuplicateAccountException :: Decode DuplicateAccountException where decode = genericDecode options
instance encodeDuplicateAccountException :: Encode DuplicateAccountException where encode = genericEncode options

-- | Constructs DuplicateAccountException from required parameters
newDuplicateAccountException :: DuplicateAccountException
newDuplicateAccountException  = DuplicateAccountException { "Message": Nothing }

-- | Constructs DuplicateAccountException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateAccountException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> DuplicateAccountException
newDuplicateAccountException'  customize = (DuplicateAccountException <<< customize) { "Message": Nothing }



-- | <p>A handshake with the same action and target already exists. For example, if you invited an account to join your organization, the invited account might already have a pending invitation from this organization. If you intend to resend an invitation to an account, ensure that existing handshakes that might be considered duplicates are canceled or declined.</p>
newtype DuplicateHandshakeException = DuplicateHandshakeException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeDuplicateHandshakeException :: Newtype DuplicateHandshakeException _
derive instance repGenericDuplicateHandshakeException :: Generic DuplicateHandshakeException _
instance showDuplicateHandshakeException :: Show DuplicateHandshakeException where show = genericShow
instance decodeDuplicateHandshakeException :: Decode DuplicateHandshakeException where decode = genericDecode options
instance encodeDuplicateHandshakeException :: Encode DuplicateHandshakeException where encode = genericEncode options

-- | Constructs DuplicateHandshakeException from required parameters
newDuplicateHandshakeException :: DuplicateHandshakeException
newDuplicateHandshakeException  = DuplicateHandshakeException { "Message": Nothing }

-- | Constructs DuplicateHandshakeException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateHandshakeException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> DuplicateHandshakeException
newDuplicateHandshakeException'  customize = (DuplicateHandshakeException <<< customize) { "Message": Nothing }



-- | <p>An organizational unit (OU) with the same name already exists.</p>
newtype DuplicateOrganizationalUnitException = DuplicateOrganizationalUnitException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeDuplicateOrganizationalUnitException :: Newtype DuplicateOrganizationalUnitException _
derive instance repGenericDuplicateOrganizationalUnitException :: Generic DuplicateOrganizationalUnitException _
instance showDuplicateOrganizationalUnitException :: Show DuplicateOrganizationalUnitException where show = genericShow
instance decodeDuplicateOrganizationalUnitException :: Decode DuplicateOrganizationalUnitException where decode = genericDecode options
instance encodeDuplicateOrganizationalUnitException :: Encode DuplicateOrganizationalUnitException where encode = genericEncode options

-- | Constructs DuplicateOrganizationalUnitException from required parameters
newDuplicateOrganizationalUnitException :: DuplicateOrganizationalUnitException
newDuplicateOrganizationalUnitException  = DuplicateOrganizationalUnitException { "Message": Nothing }

-- | Constructs DuplicateOrganizationalUnitException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateOrganizationalUnitException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> DuplicateOrganizationalUnitException
newDuplicateOrganizationalUnitException'  customize = (DuplicateOrganizationalUnitException <<< customize) { "Message": Nothing }



-- | <p>The selected policy is already attached to the specified target.</p>
newtype DuplicatePolicyAttachmentException = DuplicatePolicyAttachmentException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeDuplicatePolicyAttachmentException :: Newtype DuplicatePolicyAttachmentException _
derive instance repGenericDuplicatePolicyAttachmentException :: Generic DuplicatePolicyAttachmentException _
instance showDuplicatePolicyAttachmentException :: Show DuplicatePolicyAttachmentException where show = genericShow
instance decodeDuplicatePolicyAttachmentException :: Decode DuplicatePolicyAttachmentException where decode = genericDecode options
instance encodeDuplicatePolicyAttachmentException :: Encode DuplicatePolicyAttachmentException where encode = genericEncode options

-- | Constructs DuplicatePolicyAttachmentException from required parameters
newDuplicatePolicyAttachmentException :: DuplicatePolicyAttachmentException
newDuplicatePolicyAttachmentException  = DuplicatePolicyAttachmentException { "Message": Nothing }

-- | Constructs DuplicatePolicyAttachmentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicatePolicyAttachmentException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> DuplicatePolicyAttachmentException
newDuplicatePolicyAttachmentException'  customize = (DuplicatePolicyAttachmentException <<< customize) { "Message": Nothing }



-- | <p>A policy with the same name already exists.</p>
newtype DuplicatePolicyException = DuplicatePolicyException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeDuplicatePolicyException :: Newtype DuplicatePolicyException _
derive instance repGenericDuplicatePolicyException :: Generic DuplicatePolicyException _
instance showDuplicatePolicyException :: Show DuplicatePolicyException where show = genericShow
instance decodeDuplicatePolicyException :: Decode DuplicatePolicyException where decode = genericDecode options
instance encodeDuplicatePolicyException :: Encode DuplicatePolicyException where encode = genericEncode options

-- | Constructs DuplicatePolicyException from required parameters
newDuplicatePolicyException :: DuplicatePolicyException
newDuplicatePolicyException  = DuplicatePolicyException { "Message": Nothing }

-- | Constructs DuplicatePolicyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicatePolicyException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> DuplicatePolicyException
newDuplicatePolicyException'  customize = (DuplicatePolicyException <<< customize) { "Message": Nothing }



newtype Email = Email String
derive instance newtypeEmail :: Newtype Email _
derive instance repGenericEmail :: Generic Email _
instance showEmail :: Show Email where show = genericShow
instance decodeEmail :: Decode Email where decode = genericDecode options
instance encodeEmail :: Encode Email where encode = genericEncode options



newtype EnableAWSServiceAccessRequest = EnableAWSServiceAccessRequest 
  { "ServicePrincipal" :: (ServicePrincipal)
  }
derive instance newtypeEnableAWSServiceAccessRequest :: Newtype EnableAWSServiceAccessRequest _
derive instance repGenericEnableAWSServiceAccessRequest :: Generic EnableAWSServiceAccessRequest _
instance showEnableAWSServiceAccessRequest :: Show EnableAWSServiceAccessRequest where show = genericShow
instance decodeEnableAWSServiceAccessRequest :: Decode EnableAWSServiceAccessRequest where decode = genericDecode options
instance encodeEnableAWSServiceAccessRequest :: Encode EnableAWSServiceAccessRequest where encode = genericEncode options

-- | Constructs EnableAWSServiceAccessRequest from required parameters
newEnableAWSServiceAccessRequest :: ServicePrincipal -> EnableAWSServiceAccessRequest
newEnableAWSServiceAccessRequest _ServicePrincipal = EnableAWSServiceAccessRequest { "ServicePrincipal": _ServicePrincipal }

-- | Constructs EnableAWSServiceAccessRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnableAWSServiceAccessRequest' :: ServicePrincipal -> ( { "ServicePrincipal" :: (ServicePrincipal) } -> {"ServicePrincipal" :: (ServicePrincipal) } ) -> EnableAWSServiceAccessRequest
newEnableAWSServiceAccessRequest' _ServicePrincipal customize = (EnableAWSServiceAccessRequest <<< customize) { "ServicePrincipal": _ServicePrincipal }



newtype EnableAllFeaturesRequest = EnableAllFeaturesRequest Types.NoArguments
derive instance newtypeEnableAllFeaturesRequest :: Newtype EnableAllFeaturesRequest _
derive instance repGenericEnableAllFeaturesRequest :: Generic EnableAllFeaturesRequest _
instance showEnableAllFeaturesRequest :: Show EnableAllFeaturesRequest where show = genericShow
instance decodeEnableAllFeaturesRequest :: Decode EnableAllFeaturesRequest where decode = genericDecode options
instance encodeEnableAllFeaturesRequest :: Encode EnableAllFeaturesRequest where encode = genericEncode options



newtype EnableAllFeaturesResponse = EnableAllFeaturesResponse 
  { "Handshake" :: Maybe (Handshake)
  }
derive instance newtypeEnableAllFeaturesResponse :: Newtype EnableAllFeaturesResponse _
derive instance repGenericEnableAllFeaturesResponse :: Generic EnableAllFeaturesResponse _
instance showEnableAllFeaturesResponse :: Show EnableAllFeaturesResponse where show = genericShow
instance decodeEnableAllFeaturesResponse :: Decode EnableAllFeaturesResponse where decode = genericDecode options
instance encodeEnableAllFeaturesResponse :: Encode EnableAllFeaturesResponse where encode = genericEncode options

-- | Constructs EnableAllFeaturesResponse from required parameters
newEnableAllFeaturesResponse :: EnableAllFeaturesResponse
newEnableAllFeaturesResponse  = EnableAllFeaturesResponse { "Handshake": Nothing }

-- | Constructs EnableAllFeaturesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnableAllFeaturesResponse' :: ( { "Handshake" :: Maybe (Handshake) } -> {"Handshake" :: Maybe (Handshake) } ) -> EnableAllFeaturesResponse
newEnableAllFeaturesResponse'  customize = (EnableAllFeaturesResponse <<< customize) { "Handshake": Nothing }



newtype EnablePolicyTypeRequest = EnablePolicyTypeRequest 
  { "RootId" :: (RootId)
  , "PolicyType" :: (PolicyType)
  }
derive instance newtypeEnablePolicyTypeRequest :: Newtype EnablePolicyTypeRequest _
derive instance repGenericEnablePolicyTypeRequest :: Generic EnablePolicyTypeRequest _
instance showEnablePolicyTypeRequest :: Show EnablePolicyTypeRequest where show = genericShow
instance decodeEnablePolicyTypeRequest :: Decode EnablePolicyTypeRequest where decode = genericDecode options
instance encodeEnablePolicyTypeRequest :: Encode EnablePolicyTypeRequest where encode = genericEncode options

-- | Constructs EnablePolicyTypeRequest from required parameters
newEnablePolicyTypeRequest :: PolicyType -> RootId -> EnablePolicyTypeRequest
newEnablePolicyTypeRequest _PolicyType _RootId = EnablePolicyTypeRequest { "PolicyType": _PolicyType, "RootId": _RootId }

-- | Constructs EnablePolicyTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnablePolicyTypeRequest' :: PolicyType -> RootId -> ( { "RootId" :: (RootId) , "PolicyType" :: (PolicyType) } -> {"RootId" :: (RootId) , "PolicyType" :: (PolicyType) } ) -> EnablePolicyTypeRequest
newEnablePolicyTypeRequest' _PolicyType _RootId customize = (EnablePolicyTypeRequest <<< customize) { "PolicyType": _PolicyType, "RootId": _RootId }



newtype EnablePolicyTypeResponse = EnablePolicyTypeResponse 
  { "Root" :: Maybe (Root)
  }
derive instance newtypeEnablePolicyTypeResponse :: Newtype EnablePolicyTypeResponse _
derive instance repGenericEnablePolicyTypeResponse :: Generic EnablePolicyTypeResponse _
instance showEnablePolicyTypeResponse :: Show EnablePolicyTypeResponse where show = genericShow
instance decodeEnablePolicyTypeResponse :: Decode EnablePolicyTypeResponse where decode = genericDecode options
instance encodeEnablePolicyTypeResponse :: Encode EnablePolicyTypeResponse where encode = genericEncode options

-- | Constructs EnablePolicyTypeResponse from required parameters
newEnablePolicyTypeResponse :: EnablePolicyTypeResponse
newEnablePolicyTypeResponse  = EnablePolicyTypeResponse { "Root": Nothing }

-- | Constructs EnablePolicyTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnablePolicyTypeResponse' :: ( { "Root" :: Maybe (Root) } -> {"Root" :: Maybe (Root) } ) -> EnablePolicyTypeResponse
newEnablePolicyTypeResponse'  customize = (EnablePolicyTypeResponse <<< customize) { "Root": Nothing }



-- | <p>A structure that contains details of a service principal that is enabled to integrate with AWS Organizations.</p>
newtype EnabledServicePrincipal = EnabledServicePrincipal 
  { "ServicePrincipal" :: Maybe (ServicePrincipal)
  , "DateEnabled" :: Maybe (Types.Timestamp)
  }
derive instance newtypeEnabledServicePrincipal :: Newtype EnabledServicePrincipal _
derive instance repGenericEnabledServicePrincipal :: Generic EnabledServicePrincipal _
instance showEnabledServicePrincipal :: Show EnabledServicePrincipal where show = genericShow
instance decodeEnabledServicePrincipal :: Decode EnabledServicePrincipal where decode = genericDecode options
instance encodeEnabledServicePrincipal :: Encode EnabledServicePrincipal where encode = genericEncode options

-- | Constructs EnabledServicePrincipal from required parameters
newEnabledServicePrincipal :: EnabledServicePrincipal
newEnabledServicePrincipal  = EnabledServicePrincipal { "DateEnabled": Nothing, "ServicePrincipal": Nothing }

-- | Constructs EnabledServicePrincipal's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnabledServicePrincipal' :: ( { "ServicePrincipal" :: Maybe (ServicePrincipal) , "DateEnabled" :: Maybe (Types.Timestamp) } -> {"ServicePrincipal" :: Maybe (ServicePrincipal) , "DateEnabled" :: Maybe (Types.Timestamp) } ) -> EnabledServicePrincipal
newEnabledServicePrincipal'  customize = (EnabledServicePrincipal <<< customize) { "DateEnabled": Nothing, "ServicePrincipal": Nothing }



newtype EnabledServicePrincipals = EnabledServicePrincipals (Array EnabledServicePrincipal)
derive instance newtypeEnabledServicePrincipals :: Newtype EnabledServicePrincipals _
derive instance repGenericEnabledServicePrincipals :: Generic EnabledServicePrincipals _
instance showEnabledServicePrincipals :: Show EnabledServicePrincipals where show = genericShow
instance decodeEnabledServicePrincipals :: Decode EnabledServicePrincipals where decode = genericDecode options
instance encodeEnabledServicePrincipals :: Encode EnabledServicePrincipals where encode = genericEncode options



newtype ExceptionMessage = ExceptionMessage String
derive instance newtypeExceptionMessage :: Newtype ExceptionMessage _
derive instance repGenericExceptionMessage :: Generic ExceptionMessage _
instance showExceptionMessage :: Show ExceptionMessage where show = genericShow
instance decodeExceptionMessage :: Decode ExceptionMessage where decode = genericDecode options
instance encodeExceptionMessage :: Encode ExceptionMessage where encode = genericEncode options



newtype ExceptionType = ExceptionType String
derive instance newtypeExceptionType :: Newtype ExceptionType _
derive instance repGenericExceptionType :: Generic ExceptionType _
instance showExceptionType :: Show ExceptionType where show = genericShow
instance decodeExceptionType :: Decode ExceptionType where decode = genericDecode options
instance encodeExceptionType :: Encode ExceptionType where encode = genericEncode options



-- | <p>AWS Organizations could not finalize the creation of your organization. Try again later. If this persists, contact AWS customer support.</p>
newtype FinalizingOrganizationException = FinalizingOrganizationException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeFinalizingOrganizationException :: Newtype FinalizingOrganizationException _
derive instance repGenericFinalizingOrganizationException :: Generic FinalizingOrganizationException _
instance showFinalizingOrganizationException :: Show FinalizingOrganizationException where show = genericShow
instance decodeFinalizingOrganizationException :: Decode FinalizingOrganizationException where decode = genericDecode options
instance encodeFinalizingOrganizationException :: Encode FinalizingOrganizationException where encode = genericEncode options

-- | Constructs FinalizingOrganizationException from required parameters
newFinalizingOrganizationException :: FinalizingOrganizationException
newFinalizingOrganizationException  = FinalizingOrganizationException { "Message": Nothing }

-- | Constructs FinalizingOrganizationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFinalizingOrganizationException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> FinalizingOrganizationException
newFinalizingOrganizationException'  customize = (FinalizingOrganizationException <<< customize) { "Message": Nothing }



newtype GenericArn = GenericArn String
derive instance newtypeGenericArn :: Newtype GenericArn _
derive instance repGenericGenericArn :: Generic GenericArn _
instance showGenericArn :: Show GenericArn where show = genericShow
instance decodeGenericArn :: Decode GenericArn where decode = genericDecode options
instance encodeGenericArn :: Encode GenericArn where encode = genericEncode options



-- | <p>Contains information that must be exchanged to securely establish a relationship between two accounts (an <i>originator</i> and a <i>recipient</i>). For example, when a master account (the originator) invites another account (the recipient) to join its organization, the two accounts exchange information as a series of handshake requests and responses.</p> <p> <b>Note:</b> Handshakes that are CANCELED, ACCEPTED, or DECLINED show up in lists for only 30 days after entering that state After that they are deleted.</p>
newtype Handshake = Handshake 
  { "Id" :: Maybe (HandshakeId)
  , "Arn" :: Maybe (HandshakeArn)
  , "Parties" :: Maybe (HandshakeParties)
  , "State" :: Maybe (HandshakeState)
  , "RequestedTimestamp" :: Maybe (Types.Timestamp)
  , "ExpirationTimestamp" :: Maybe (Types.Timestamp)
  , "Action" :: Maybe (ActionType)
  , "Resources" :: Maybe (HandshakeResources)
  }
derive instance newtypeHandshake :: Newtype Handshake _
derive instance repGenericHandshake :: Generic Handshake _
instance showHandshake :: Show Handshake where show = genericShow
instance decodeHandshake :: Decode Handshake where decode = genericDecode options
instance encodeHandshake :: Encode Handshake where encode = genericEncode options

-- | Constructs Handshake from required parameters
newHandshake :: Handshake
newHandshake  = Handshake { "Action": Nothing, "Arn": Nothing, "ExpirationTimestamp": Nothing, "Id": Nothing, "Parties": Nothing, "RequestedTimestamp": Nothing, "Resources": Nothing, "State": Nothing }

-- | Constructs Handshake's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHandshake' :: ( { "Id" :: Maybe (HandshakeId) , "Arn" :: Maybe (HandshakeArn) , "Parties" :: Maybe (HandshakeParties) , "State" :: Maybe (HandshakeState) , "RequestedTimestamp" :: Maybe (Types.Timestamp) , "ExpirationTimestamp" :: Maybe (Types.Timestamp) , "Action" :: Maybe (ActionType) , "Resources" :: Maybe (HandshakeResources) } -> {"Id" :: Maybe (HandshakeId) , "Arn" :: Maybe (HandshakeArn) , "Parties" :: Maybe (HandshakeParties) , "State" :: Maybe (HandshakeState) , "RequestedTimestamp" :: Maybe (Types.Timestamp) , "ExpirationTimestamp" :: Maybe (Types.Timestamp) , "Action" :: Maybe (ActionType) , "Resources" :: Maybe (HandshakeResources) } ) -> Handshake
newHandshake'  customize = (Handshake <<< customize) { "Action": Nothing, "Arn": Nothing, "ExpirationTimestamp": Nothing, "Id": Nothing, "Parties": Nothing, "RequestedTimestamp": Nothing, "Resources": Nothing, "State": Nothing }



-- | <p>The specified handshake is already in the requested state. For example, you can't accept a handshake that was already accepted.</p>
newtype HandshakeAlreadyInStateException = HandshakeAlreadyInStateException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeHandshakeAlreadyInStateException :: Newtype HandshakeAlreadyInStateException _
derive instance repGenericHandshakeAlreadyInStateException :: Generic HandshakeAlreadyInStateException _
instance showHandshakeAlreadyInStateException :: Show HandshakeAlreadyInStateException where show = genericShow
instance decodeHandshakeAlreadyInStateException :: Decode HandshakeAlreadyInStateException where decode = genericDecode options
instance encodeHandshakeAlreadyInStateException :: Encode HandshakeAlreadyInStateException where encode = genericEncode options

-- | Constructs HandshakeAlreadyInStateException from required parameters
newHandshakeAlreadyInStateException :: HandshakeAlreadyInStateException
newHandshakeAlreadyInStateException  = HandshakeAlreadyInStateException { "Message": Nothing }

-- | Constructs HandshakeAlreadyInStateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHandshakeAlreadyInStateException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> HandshakeAlreadyInStateException
newHandshakeAlreadyInStateException'  customize = (HandshakeAlreadyInStateException <<< customize) { "Message": Nothing }



newtype HandshakeArn = HandshakeArn String
derive instance newtypeHandshakeArn :: Newtype HandshakeArn _
derive instance repGenericHandshakeArn :: Generic HandshakeArn _
instance showHandshakeArn :: Show HandshakeArn where show = genericShow
instance decodeHandshakeArn :: Decode HandshakeArn where decode = genericDecode options
instance encodeHandshakeArn :: Encode HandshakeArn where encode = genericEncode options



-- | <p>The requested operation would violate the constraint identified in the reason code.</p> <note> <p>Some of the reasons in the following list might not be applicable to this specific API or operation:</p> </note> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. <b>Note</b>: deleted and closed accounts still count toward your limit.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>ALREADY_IN_AN_ORGANIZATION: The handshake request is invalid because the invited account is already a member of an organization.</p> </li> <li> <p>ORGANIZATION_ALREADY_HAS_ALL_FEATURES: The handshake request is invalid because the organization has already enabled all features.</p> </li> <li> <p>INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES: You cannot issue new invitations to join an organization while it is in the process of enabling all features. You can resume inviting accounts after you finalize the process when all accounts have agreed to the change.</p> </li> <li> <p>PAYMENT_INSTRUMENT_REQUIRED: You cannot complete the operation with an account that does not have a payment instrument, such as a credit card, associated with it.</p> </li> <li> <p>ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD: The request failed because the account is from a different marketplace than the accounts in the organization. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be from the same marketplace.</p> </li> <li> <p>ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED: You attempted to change the membership of an account too quickly after its previous change.</p> </li> </ul>
newtype HandshakeConstraintViolationException = HandshakeConstraintViolationException 
  { "Message" :: Maybe (ExceptionMessage)
  , "Reason" :: Maybe (HandshakeConstraintViolationExceptionReason)
  }
derive instance newtypeHandshakeConstraintViolationException :: Newtype HandshakeConstraintViolationException _
derive instance repGenericHandshakeConstraintViolationException :: Generic HandshakeConstraintViolationException _
instance showHandshakeConstraintViolationException :: Show HandshakeConstraintViolationException where show = genericShow
instance decodeHandshakeConstraintViolationException :: Decode HandshakeConstraintViolationException where decode = genericDecode options
instance encodeHandshakeConstraintViolationException :: Encode HandshakeConstraintViolationException where encode = genericEncode options

-- | Constructs HandshakeConstraintViolationException from required parameters
newHandshakeConstraintViolationException :: HandshakeConstraintViolationException
newHandshakeConstraintViolationException  = HandshakeConstraintViolationException { "Message": Nothing, "Reason": Nothing }

-- | Constructs HandshakeConstraintViolationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHandshakeConstraintViolationException' :: ( { "Message" :: Maybe (ExceptionMessage) , "Reason" :: Maybe (HandshakeConstraintViolationExceptionReason) } -> {"Message" :: Maybe (ExceptionMessage) , "Reason" :: Maybe (HandshakeConstraintViolationExceptionReason) } ) -> HandshakeConstraintViolationException
newHandshakeConstraintViolationException'  customize = (HandshakeConstraintViolationException <<< customize) { "Message": Nothing, "Reason": Nothing }



newtype HandshakeConstraintViolationExceptionReason = HandshakeConstraintViolationExceptionReason String
derive instance newtypeHandshakeConstraintViolationExceptionReason :: Newtype HandshakeConstraintViolationExceptionReason _
derive instance repGenericHandshakeConstraintViolationExceptionReason :: Generic HandshakeConstraintViolationExceptionReason _
instance showHandshakeConstraintViolationExceptionReason :: Show HandshakeConstraintViolationExceptionReason where show = genericShow
instance decodeHandshakeConstraintViolationExceptionReason :: Decode HandshakeConstraintViolationExceptionReason where decode = genericDecode options
instance encodeHandshakeConstraintViolationExceptionReason :: Encode HandshakeConstraintViolationExceptionReason where encode = genericEncode options



-- | <p>Specifies the criteria that are used to select the handshakes for the operation.</p>
newtype HandshakeFilter = HandshakeFilter 
  { "ActionType" :: Maybe (ActionType)
  , "ParentHandshakeId" :: Maybe (HandshakeId)
  }
derive instance newtypeHandshakeFilter :: Newtype HandshakeFilter _
derive instance repGenericHandshakeFilter :: Generic HandshakeFilter _
instance showHandshakeFilter :: Show HandshakeFilter where show = genericShow
instance decodeHandshakeFilter :: Decode HandshakeFilter where decode = genericDecode options
instance encodeHandshakeFilter :: Encode HandshakeFilter where encode = genericEncode options

-- | Constructs HandshakeFilter from required parameters
newHandshakeFilter :: HandshakeFilter
newHandshakeFilter  = HandshakeFilter { "ActionType": Nothing, "ParentHandshakeId": Nothing }

-- | Constructs HandshakeFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHandshakeFilter' :: ( { "ActionType" :: Maybe (ActionType) , "ParentHandshakeId" :: Maybe (HandshakeId) } -> {"ActionType" :: Maybe (ActionType) , "ParentHandshakeId" :: Maybe (HandshakeId) } ) -> HandshakeFilter
newHandshakeFilter'  customize = (HandshakeFilter <<< customize) { "ActionType": Nothing, "ParentHandshakeId": Nothing }



newtype HandshakeId = HandshakeId String
derive instance newtypeHandshakeId :: Newtype HandshakeId _
derive instance repGenericHandshakeId :: Generic HandshakeId _
instance showHandshakeId :: Show HandshakeId where show = genericShow
instance decodeHandshakeId :: Decode HandshakeId where decode = genericDecode options
instance encodeHandshakeId :: Encode HandshakeId where encode = genericEncode options



-- | <p>We can't find a handshake with the HandshakeId that you specified.</p>
newtype HandshakeNotFoundException = HandshakeNotFoundException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeHandshakeNotFoundException :: Newtype HandshakeNotFoundException _
derive instance repGenericHandshakeNotFoundException :: Generic HandshakeNotFoundException _
instance showHandshakeNotFoundException :: Show HandshakeNotFoundException where show = genericShow
instance decodeHandshakeNotFoundException :: Decode HandshakeNotFoundException where decode = genericDecode options
instance encodeHandshakeNotFoundException :: Encode HandshakeNotFoundException where encode = genericEncode options

-- | Constructs HandshakeNotFoundException from required parameters
newHandshakeNotFoundException :: HandshakeNotFoundException
newHandshakeNotFoundException  = HandshakeNotFoundException { "Message": Nothing }

-- | Constructs HandshakeNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHandshakeNotFoundException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> HandshakeNotFoundException
newHandshakeNotFoundException'  customize = (HandshakeNotFoundException <<< customize) { "Message": Nothing }



newtype HandshakeNotes = HandshakeNotes String
derive instance newtypeHandshakeNotes :: Newtype HandshakeNotes _
derive instance repGenericHandshakeNotes :: Generic HandshakeNotes _
instance showHandshakeNotes :: Show HandshakeNotes where show = genericShow
instance decodeHandshakeNotes :: Decode HandshakeNotes where decode = genericDecode options
instance encodeHandshakeNotes :: Encode HandshakeNotes where encode = genericEncode options



newtype HandshakeParties = HandshakeParties (Array HandshakeParty)
derive instance newtypeHandshakeParties :: Newtype HandshakeParties _
derive instance repGenericHandshakeParties :: Generic HandshakeParties _
instance showHandshakeParties :: Show HandshakeParties where show = genericShow
instance decodeHandshakeParties :: Decode HandshakeParties where decode = genericDecode options
instance encodeHandshakeParties :: Encode HandshakeParties where encode = genericEncode options



-- | <p>Identifies a participant in a handshake.</p>
newtype HandshakeParty = HandshakeParty 
  { "Id" :: (HandshakePartyId)
  , "Type" :: (HandshakePartyType)
  }
derive instance newtypeHandshakeParty :: Newtype HandshakeParty _
derive instance repGenericHandshakeParty :: Generic HandshakeParty _
instance showHandshakeParty :: Show HandshakeParty where show = genericShow
instance decodeHandshakeParty :: Decode HandshakeParty where decode = genericDecode options
instance encodeHandshakeParty :: Encode HandshakeParty where encode = genericEncode options

-- | Constructs HandshakeParty from required parameters
newHandshakeParty :: HandshakePartyId -> HandshakePartyType -> HandshakeParty
newHandshakeParty _Id _Type = HandshakeParty { "Id": _Id, "Type": _Type }

-- | Constructs HandshakeParty's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHandshakeParty' :: HandshakePartyId -> HandshakePartyType -> ( { "Id" :: (HandshakePartyId) , "Type" :: (HandshakePartyType) } -> {"Id" :: (HandshakePartyId) , "Type" :: (HandshakePartyType) } ) -> HandshakeParty
newHandshakeParty' _Id _Type customize = (HandshakeParty <<< customize) { "Id": _Id, "Type": _Type }



newtype HandshakePartyId = HandshakePartyId String
derive instance newtypeHandshakePartyId :: Newtype HandshakePartyId _
derive instance repGenericHandshakePartyId :: Generic HandshakePartyId _
instance showHandshakePartyId :: Show HandshakePartyId where show = genericShow
instance decodeHandshakePartyId :: Decode HandshakePartyId where decode = genericDecode options
instance encodeHandshakePartyId :: Encode HandshakePartyId where encode = genericEncode options



newtype HandshakePartyType = HandshakePartyType String
derive instance newtypeHandshakePartyType :: Newtype HandshakePartyType _
derive instance repGenericHandshakePartyType :: Generic HandshakePartyType _
instance showHandshakePartyType :: Show HandshakePartyType where show = genericShow
instance decodeHandshakePartyType :: Decode HandshakePartyType where decode = genericDecode options
instance encodeHandshakePartyType :: Encode HandshakePartyType where encode = genericEncode options



-- | <p>Contains additional data that is needed to process a handshake.</p>
newtype HandshakeResource = HandshakeResource 
  { "Value" :: Maybe (HandshakeResourceValue)
  , "Type" :: Maybe (HandshakeResourceType)
  }
derive instance newtypeHandshakeResource :: Newtype HandshakeResource _
derive instance repGenericHandshakeResource :: Generic HandshakeResource _
instance showHandshakeResource :: Show HandshakeResource where show = genericShow
instance decodeHandshakeResource :: Decode HandshakeResource where decode = genericDecode options
instance encodeHandshakeResource :: Encode HandshakeResource where encode = genericEncode options

-- | Constructs HandshakeResource from required parameters
newHandshakeResource :: HandshakeResource
newHandshakeResource  = HandshakeResource { "Type": Nothing, "Value": Nothing }

-- | Constructs HandshakeResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHandshakeResource' :: ( { "Value" :: Maybe (HandshakeResourceValue) , "Type" :: Maybe (HandshakeResourceType) } -> {"Value" :: Maybe (HandshakeResourceValue) , "Type" :: Maybe (HandshakeResourceType) } ) -> HandshakeResource
newHandshakeResource'  customize = (HandshakeResource <<< customize) { "Type": Nothing, "Value": Nothing }



newtype HandshakeResourceType = HandshakeResourceType String
derive instance newtypeHandshakeResourceType :: Newtype HandshakeResourceType _
derive instance repGenericHandshakeResourceType :: Generic HandshakeResourceType _
instance showHandshakeResourceType :: Show HandshakeResourceType where show = genericShow
instance decodeHandshakeResourceType :: Decode HandshakeResourceType where decode = genericDecode options
instance encodeHandshakeResourceType :: Encode HandshakeResourceType where encode = genericEncode options



newtype HandshakeResourceValue = HandshakeResourceValue String
derive instance newtypeHandshakeResourceValue :: Newtype HandshakeResourceValue _
derive instance repGenericHandshakeResourceValue :: Generic HandshakeResourceValue _
instance showHandshakeResourceValue :: Show HandshakeResourceValue where show = genericShow
instance decodeHandshakeResourceValue :: Decode HandshakeResourceValue where decode = genericDecode options
instance encodeHandshakeResourceValue :: Encode HandshakeResourceValue where encode = genericEncode options



newtype HandshakeResources = HandshakeResources (Array HandshakeResource)
derive instance newtypeHandshakeResources :: Newtype HandshakeResources _
derive instance repGenericHandshakeResources :: Generic HandshakeResources _
instance showHandshakeResources :: Show HandshakeResources where show = genericShow
instance decodeHandshakeResources :: Decode HandshakeResources where decode = genericDecode options
instance encodeHandshakeResources :: Encode HandshakeResources where encode = genericEncode options



newtype HandshakeState = HandshakeState String
derive instance newtypeHandshakeState :: Newtype HandshakeState _
derive instance repGenericHandshakeState :: Generic HandshakeState _
instance showHandshakeState :: Show HandshakeState where show = genericShow
instance decodeHandshakeState :: Decode HandshakeState where decode = genericDecode options
instance encodeHandshakeState :: Encode HandshakeState where encode = genericEncode options



newtype Handshakes = Handshakes (Array Handshake)
derive instance newtypeHandshakes :: Newtype Handshakes _
derive instance repGenericHandshakes :: Generic Handshakes _
instance showHandshakes :: Show Handshakes where show = genericShow
instance decodeHandshakes :: Decode Handshakes where decode = genericDecode options
instance encodeHandshakes :: Encode Handshakes where encode = genericEncode options



newtype IAMUserAccessToBilling = IAMUserAccessToBilling String
derive instance newtypeIAMUserAccessToBilling :: Newtype IAMUserAccessToBilling _
derive instance repGenericIAMUserAccessToBilling :: Generic IAMUserAccessToBilling _
instance showIAMUserAccessToBilling :: Show IAMUserAccessToBilling where show = genericShow
instance decodeIAMUserAccessToBilling :: Decode IAMUserAccessToBilling where decode = genericDecode options
instance encodeIAMUserAccessToBilling :: Encode IAMUserAccessToBilling where encode = genericEncode options



-- | <p>You can't perform the operation on the handshake in its current state. For example, you can't cancel a handshake that was already accepted, or accept a handshake that was already declined.</p>
newtype InvalidHandshakeTransitionException = InvalidHandshakeTransitionException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeInvalidHandshakeTransitionException :: Newtype InvalidHandshakeTransitionException _
derive instance repGenericInvalidHandshakeTransitionException :: Generic InvalidHandshakeTransitionException _
instance showInvalidHandshakeTransitionException :: Show InvalidHandshakeTransitionException where show = genericShow
instance decodeInvalidHandshakeTransitionException :: Decode InvalidHandshakeTransitionException where decode = genericDecode options
instance encodeInvalidHandshakeTransitionException :: Encode InvalidHandshakeTransitionException where encode = genericEncode options

-- | Constructs InvalidHandshakeTransitionException from required parameters
newInvalidHandshakeTransitionException :: InvalidHandshakeTransitionException
newInvalidHandshakeTransitionException  = InvalidHandshakeTransitionException { "Message": Nothing }

-- | Constructs InvalidHandshakeTransitionException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidHandshakeTransitionException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> InvalidHandshakeTransitionException
newInvalidHandshakeTransitionException'  customize = (InvalidHandshakeTransitionException <<< customize) { "Message": Nothing }



-- | <p>The requested operation failed because you provided invalid values for one or more of the request parameters. This exception includes a reason that contains additional information about the violated limit:</p> <note> <p>Some of the reasons in the following list might not be applicable to this specific API or operation:</p> </note> <ul> <li> <p>INVALID_PARTY_TYPE_TARGET: You specified the wrong type of entity (account, organization, or email) as a party.</p> </li> <li> <p>INVALID_SYNTAX_ORGANIZATION_ARN: You specified an invalid ARN for the organization.</p> </li> <li> <p>INVALID_SYNTAX_POLICY_ID: You specified an invalid policy ID. </p> </li> <li> <p>INVALID_ENUM: You specified a value that is not valid for that parameter.</p> </li> <li> <p>INVALID_FULL_NAME_TARGET: You specified a full name that contains invalid characters.</p> </li> <li> <p>INVALID_LIST_MEMBER: You provided a list to a parameter that contains at least one invalid value.</p> </li> <li> <p>MAX_LENGTH_EXCEEDED: You provided a string parameter that is longer than allowed.</p> </li> <li> <p>MAX_VALUE_EXCEEDED: You provided a numeric parameter that has a larger value than allowed.</p> </li> <li> <p>MIN_LENGTH_EXCEEDED: You provided a string parameter that is shorter than allowed.</p> </li> <li> <p>MIN_VALUE_EXCEEDED: You provided a numeric parameter that has a smaller value than allowed.</p> </li> <li> <p>IMMUTABLE_POLICY: You specified a policy that is managed by AWS and cannot be modified.</p> </li> <li> <p>INVALID_PATTERN: You provided a value that doesn't match the required pattern.</p> </li> <li> <p>INVALID_PATTERN_TARGET_ID: You specified a policy target ID that doesn't match the required pattern.</p> </li> <li> <p>INPUT_REQUIRED: You must include a value for all required parameters.</p> </li> <li> <p>INVALID_PAGINATION_TOKEN: Get the value for the NextToken parameter from the response to a previous call of the operation.</p> </li> <li> <p>MAX_FILTER_LIMIT_EXCEEDED: You can specify only one filter parameter for the operation.</p> </li> <li> <p>MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS: You can move an account only between entities in the same root.</p> </li> </ul>
newtype InvalidInputException = InvalidInputException 
  { "Message" :: Maybe (ExceptionMessage)
  , "Reason" :: Maybe (InvalidInputExceptionReason)
  }
derive instance newtypeInvalidInputException :: Newtype InvalidInputException _
derive instance repGenericInvalidInputException :: Generic InvalidInputException _
instance showInvalidInputException :: Show InvalidInputException where show = genericShow
instance decodeInvalidInputException :: Decode InvalidInputException where decode = genericDecode options
instance encodeInvalidInputException :: Encode InvalidInputException where encode = genericEncode options

-- | Constructs InvalidInputException from required parameters
newInvalidInputException :: InvalidInputException
newInvalidInputException  = InvalidInputException { "Message": Nothing, "Reason": Nothing }

-- | Constructs InvalidInputException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInputException' :: ( { "Message" :: Maybe (ExceptionMessage) , "Reason" :: Maybe (InvalidInputExceptionReason) } -> {"Message" :: Maybe (ExceptionMessage) , "Reason" :: Maybe (InvalidInputExceptionReason) } ) -> InvalidInputException
newInvalidInputException'  customize = (InvalidInputException <<< customize) { "Message": Nothing, "Reason": Nothing }



newtype InvalidInputExceptionReason = InvalidInputExceptionReason String
derive instance newtypeInvalidInputExceptionReason :: Newtype InvalidInputExceptionReason _
derive instance repGenericInvalidInputExceptionReason :: Generic InvalidInputExceptionReason _
instance showInvalidInputExceptionReason :: Show InvalidInputExceptionReason where show = genericShow
instance decodeInvalidInputExceptionReason :: Decode InvalidInputExceptionReason where decode = genericDecode options
instance encodeInvalidInputExceptionReason :: Encode InvalidInputExceptionReason where encode = genericEncode options



newtype InviteAccountToOrganizationRequest = InviteAccountToOrganizationRequest 
  { "Target" :: (HandshakeParty)
  , "Notes" :: Maybe (HandshakeNotes)
  }
derive instance newtypeInviteAccountToOrganizationRequest :: Newtype InviteAccountToOrganizationRequest _
derive instance repGenericInviteAccountToOrganizationRequest :: Generic InviteAccountToOrganizationRequest _
instance showInviteAccountToOrganizationRequest :: Show InviteAccountToOrganizationRequest where show = genericShow
instance decodeInviteAccountToOrganizationRequest :: Decode InviteAccountToOrganizationRequest where decode = genericDecode options
instance encodeInviteAccountToOrganizationRequest :: Encode InviteAccountToOrganizationRequest where encode = genericEncode options

-- | Constructs InviteAccountToOrganizationRequest from required parameters
newInviteAccountToOrganizationRequest :: HandshakeParty -> InviteAccountToOrganizationRequest
newInviteAccountToOrganizationRequest _Target = InviteAccountToOrganizationRequest { "Target": _Target, "Notes": Nothing }

-- | Constructs InviteAccountToOrganizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInviteAccountToOrganizationRequest' :: HandshakeParty -> ( { "Target" :: (HandshakeParty) , "Notes" :: Maybe (HandshakeNotes) } -> {"Target" :: (HandshakeParty) , "Notes" :: Maybe (HandshakeNotes) } ) -> InviteAccountToOrganizationRequest
newInviteAccountToOrganizationRequest' _Target customize = (InviteAccountToOrganizationRequest <<< customize) { "Target": _Target, "Notes": Nothing }



newtype InviteAccountToOrganizationResponse = InviteAccountToOrganizationResponse 
  { "Handshake" :: Maybe (Handshake)
  }
derive instance newtypeInviteAccountToOrganizationResponse :: Newtype InviteAccountToOrganizationResponse _
derive instance repGenericInviteAccountToOrganizationResponse :: Generic InviteAccountToOrganizationResponse _
instance showInviteAccountToOrganizationResponse :: Show InviteAccountToOrganizationResponse where show = genericShow
instance decodeInviteAccountToOrganizationResponse :: Decode InviteAccountToOrganizationResponse where decode = genericDecode options
instance encodeInviteAccountToOrganizationResponse :: Encode InviteAccountToOrganizationResponse where encode = genericEncode options

-- | Constructs InviteAccountToOrganizationResponse from required parameters
newInviteAccountToOrganizationResponse :: InviteAccountToOrganizationResponse
newInviteAccountToOrganizationResponse  = InviteAccountToOrganizationResponse { "Handshake": Nothing }

-- | Constructs InviteAccountToOrganizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInviteAccountToOrganizationResponse' :: ( { "Handshake" :: Maybe (Handshake) } -> {"Handshake" :: Maybe (Handshake) } ) -> InviteAccountToOrganizationResponse
newInviteAccountToOrganizationResponse'  customize = (InviteAccountToOrganizationResponse <<< customize) { "Handshake": Nothing }



newtype ListAWSServiceAccessForOrganizationRequest = ListAWSServiceAccessForOrganizationRequest 
  { "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListAWSServiceAccessForOrganizationRequest :: Newtype ListAWSServiceAccessForOrganizationRequest _
derive instance repGenericListAWSServiceAccessForOrganizationRequest :: Generic ListAWSServiceAccessForOrganizationRequest _
instance showListAWSServiceAccessForOrganizationRequest :: Show ListAWSServiceAccessForOrganizationRequest where show = genericShow
instance decodeListAWSServiceAccessForOrganizationRequest :: Decode ListAWSServiceAccessForOrganizationRequest where decode = genericDecode options
instance encodeListAWSServiceAccessForOrganizationRequest :: Encode ListAWSServiceAccessForOrganizationRequest where encode = genericEncode options

-- | Constructs ListAWSServiceAccessForOrganizationRequest from required parameters
newListAWSServiceAccessForOrganizationRequest :: ListAWSServiceAccessForOrganizationRequest
newListAWSServiceAccessForOrganizationRequest  = ListAWSServiceAccessForOrganizationRequest { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListAWSServiceAccessForOrganizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAWSServiceAccessForOrganizationRequest' :: ( { "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListAWSServiceAccessForOrganizationRequest
newListAWSServiceAccessForOrganizationRequest'  customize = (ListAWSServiceAccessForOrganizationRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



newtype ListAWSServiceAccessForOrganizationResponse = ListAWSServiceAccessForOrganizationResponse 
  { "EnabledServicePrincipals" :: Maybe (EnabledServicePrincipals)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListAWSServiceAccessForOrganizationResponse :: Newtype ListAWSServiceAccessForOrganizationResponse _
derive instance repGenericListAWSServiceAccessForOrganizationResponse :: Generic ListAWSServiceAccessForOrganizationResponse _
instance showListAWSServiceAccessForOrganizationResponse :: Show ListAWSServiceAccessForOrganizationResponse where show = genericShow
instance decodeListAWSServiceAccessForOrganizationResponse :: Decode ListAWSServiceAccessForOrganizationResponse where decode = genericDecode options
instance encodeListAWSServiceAccessForOrganizationResponse :: Encode ListAWSServiceAccessForOrganizationResponse where encode = genericEncode options

-- | Constructs ListAWSServiceAccessForOrganizationResponse from required parameters
newListAWSServiceAccessForOrganizationResponse :: ListAWSServiceAccessForOrganizationResponse
newListAWSServiceAccessForOrganizationResponse  = ListAWSServiceAccessForOrganizationResponse { "EnabledServicePrincipals": Nothing, "NextToken": Nothing }

-- | Constructs ListAWSServiceAccessForOrganizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAWSServiceAccessForOrganizationResponse' :: ( { "EnabledServicePrincipals" :: Maybe (EnabledServicePrincipals) , "NextToken" :: Maybe (NextToken) } -> {"EnabledServicePrincipals" :: Maybe (EnabledServicePrincipals) , "NextToken" :: Maybe (NextToken) } ) -> ListAWSServiceAccessForOrganizationResponse
newListAWSServiceAccessForOrganizationResponse'  customize = (ListAWSServiceAccessForOrganizationResponse <<< customize) { "EnabledServicePrincipals": Nothing, "NextToken": Nothing }



newtype ListAccountsForParentRequest = ListAccountsForParentRequest 
  { "ParentId" :: (ParentId)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListAccountsForParentRequest :: Newtype ListAccountsForParentRequest _
derive instance repGenericListAccountsForParentRequest :: Generic ListAccountsForParentRequest _
instance showListAccountsForParentRequest :: Show ListAccountsForParentRequest where show = genericShow
instance decodeListAccountsForParentRequest :: Decode ListAccountsForParentRequest where decode = genericDecode options
instance encodeListAccountsForParentRequest :: Encode ListAccountsForParentRequest where encode = genericEncode options

-- | Constructs ListAccountsForParentRequest from required parameters
newListAccountsForParentRequest :: ParentId -> ListAccountsForParentRequest
newListAccountsForParentRequest _ParentId = ListAccountsForParentRequest { "ParentId": _ParentId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListAccountsForParentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccountsForParentRequest' :: ParentId -> ( { "ParentId" :: (ParentId) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"ParentId" :: (ParentId) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListAccountsForParentRequest
newListAccountsForParentRequest' _ParentId customize = (ListAccountsForParentRequest <<< customize) { "ParentId": _ParentId, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListAccountsForParentResponse = ListAccountsForParentResponse 
  { "Accounts" :: Maybe (Accounts)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListAccountsForParentResponse :: Newtype ListAccountsForParentResponse _
derive instance repGenericListAccountsForParentResponse :: Generic ListAccountsForParentResponse _
instance showListAccountsForParentResponse :: Show ListAccountsForParentResponse where show = genericShow
instance decodeListAccountsForParentResponse :: Decode ListAccountsForParentResponse where decode = genericDecode options
instance encodeListAccountsForParentResponse :: Encode ListAccountsForParentResponse where encode = genericEncode options

-- | Constructs ListAccountsForParentResponse from required parameters
newListAccountsForParentResponse :: ListAccountsForParentResponse
newListAccountsForParentResponse  = ListAccountsForParentResponse { "Accounts": Nothing, "NextToken": Nothing }

-- | Constructs ListAccountsForParentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccountsForParentResponse' :: ( { "Accounts" :: Maybe (Accounts) , "NextToken" :: Maybe (NextToken) } -> {"Accounts" :: Maybe (Accounts) , "NextToken" :: Maybe (NextToken) } ) -> ListAccountsForParentResponse
newListAccountsForParentResponse'  customize = (ListAccountsForParentResponse <<< customize) { "Accounts": Nothing, "NextToken": Nothing }



newtype ListAccountsRequest = ListAccountsRequest 
  { "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListAccountsRequest :: Newtype ListAccountsRequest _
derive instance repGenericListAccountsRequest :: Generic ListAccountsRequest _
instance showListAccountsRequest :: Show ListAccountsRequest where show = genericShow
instance decodeListAccountsRequest :: Decode ListAccountsRequest where decode = genericDecode options
instance encodeListAccountsRequest :: Encode ListAccountsRequest where encode = genericEncode options

-- | Constructs ListAccountsRequest from required parameters
newListAccountsRequest :: ListAccountsRequest
newListAccountsRequest  = ListAccountsRequest { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListAccountsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccountsRequest' :: ( { "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListAccountsRequest
newListAccountsRequest'  customize = (ListAccountsRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



newtype ListAccountsResponse = ListAccountsResponse 
  { "Accounts" :: Maybe (Accounts)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListAccountsResponse :: Newtype ListAccountsResponse _
derive instance repGenericListAccountsResponse :: Generic ListAccountsResponse _
instance showListAccountsResponse :: Show ListAccountsResponse where show = genericShow
instance decodeListAccountsResponse :: Decode ListAccountsResponse where decode = genericDecode options
instance encodeListAccountsResponse :: Encode ListAccountsResponse where encode = genericEncode options

-- | Constructs ListAccountsResponse from required parameters
newListAccountsResponse :: ListAccountsResponse
newListAccountsResponse  = ListAccountsResponse { "Accounts": Nothing, "NextToken": Nothing }

-- | Constructs ListAccountsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccountsResponse' :: ( { "Accounts" :: Maybe (Accounts) , "NextToken" :: Maybe (NextToken) } -> {"Accounts" :: Maybe (Accounts) , "NextToken" :: Maybe (NextToken) } ) -> ListAccountsResponse
newListAccountsResponse'  customize = (ListAccountsResponse <<< customize) { "Accounts": Nothing, "NextToken": Nothing }



newtype ListChildrenRequest = ListChildrenRequest 
  { "ParentId" :: (ParentId)
  , "ChildType" :: (ChildType)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListChildrenRequest :: Newtype ListChildrenRequest _
derive instance repGenericListChildrenRequest :: Generic ListChildrenRequest _
instance showListChildrenRequest :: Show ListChildrenRequest where show = genericShow
instance decodeListChildrenRequest :: Decode ListChildrenRequest where decode = genericDecode options
instance encodeListChildrenRequest :: Encode ListChildrenRequest where encode = genericEncode options

-- | Constructs ListChildrenRequest from required parameters
newListChildrenRequest :: ChildType -> ParentId -> ListChildrenRequest
newListChildrenRequest _ChildType _ParentId = ListChildrenRequest { "ChildType": _ChildType, "ParentId": _ParentId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListChildrenRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListChildrenRequest' :: ChildType -> ParentId -> ( { "ParentId" :: (ParentId) , "ChildType" :: (ChildType) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"ParentId" :: (ParentId) , "ChildType" :: (ChildType) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListChildrenRequest
newListChildrenRequest' _ChildType _ParentId customize = (ListChildrenRequest <<< customize) { "ChildType": _ChildType, "ParentId": _ParentId, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListChildrenResponse = ListChildrenResponse 
  { "Children" :: Maybe (Children)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListChildrenResponse :: Newtype ListChildrenResponse _
derive instance repGenericListChildrenResponse :: Generic ListChildrenResponse _
instance showListChildrenResponse :: Show ListChildrenResponse where show = genericShow
instance decodeListChildrenResponse :: Decode ListChildrenResponse where decode = genericDecode options
instance encodeListChildrenResponse :: Encode ListChildrenResponse where encode = genericEncode options

-- | Constructs ListChildrenResponse from required parameters
newListChildrenResponse :: ListChildrenResponse
newListChildrenResponse  = ListChildrenResponse { "Children": Nothing, "NextToken": Nothing }

-- | Constructs ListChildrenResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListChildrenResponse' :: ( { "Children" :: Maybe (Children) , "NextToken" :: Maybe (NextToken) } -> {"Children" :: Maybe (Children) , "NextToken" :: Maybe (NextToken) } ) -> ListChildrenResponse
newListChildrenResponse'  customize = (ListChildrenResponse <<< customize) { "Children": Nothing, "NextToken": Nothing }



newtype ListCreateAccountStatusRequest = ListCreateAccountStatusRequest 
  { "States" :: Maybe (CreateAccountStates)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListCreateAccountStatusRequest :: Newtype ListCreateAccountStatusRequest _
derive instance repGenericListCreateAccountStatusRequest :: Generic ListCreateAccountStatusRequest _
instance showListCreateAccountStatusRequest :: Show ListCreateAccountStatusRequest where show = genericShow
instance decodeListCreateAccountStatusRequest :: Decode ListCreateAccountStatusRequest where decode = genericDecode options
instance encodeListCreateAccountStatusRequest :: Encode ListCreateAccountStatusRequest where encode = genericEncode options

-- | Constructs ListCreateAccountStatusRequest from required parameters
newListCreateAccountStatusRequest :: ListCreateAccountStatusRequest
newListCreateAccountStatusRequest  = ListCreateAccountStatusRequest { "MaxResults": Nothing, "NextToken": Nothing, "States": Nothing }

-- | Constructs ListCreateAccountStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCreateAccountStatusRequest' :: ( { "States" :: Maybe (CreateAccountStates) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"States" :: Maybe (CreateAccountStates) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListCreateAccountStatusRequest
newListCreateAccountStatusRequest'  customize = (ListCreateAccountStatusRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing, "States": Nothing }



newtype ListCreateAccountStatusResponse = ListCreateAccountStatusResponse 
  { "CreateAccountStatuses" :: Maybe (CreateAccountStatuses)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListCreateAccountStatusResponse :: Newtype ListCreateAccountStatusResponse _
derive instance repGenericListCreateAccountStatusResponse :: Generic ListCreateAccountStatusResponse _
instance showListCreateAccountStatusResponse :: Show ListCreateAccountStatusResponse where show = genericShow
instance decodeListCreateAccountStatusResponse :: Decode ListCreateAccountStatusResponse where decode = genericDecode options
instance encodeListCreateAccountStatusResponse :: Encode ListCreateAccountStatusResponse where encode = genericEncode options

-- | Constructs ListCreateAccountStatusResponse from required parameters
newListCreateAccountStatusResponse :: ListCreateAccountStatusResponse
newListCreateAccountStatusResponse  = ListCreateAccountStatusResponse { "CreateAccountStatuses": Nothing, "NextToken": Nothing }

-- | Constructs ListCreateAccountStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCreateAccountStatusResponse' :: ( { "CreateAccountStatuses" :: Maybe (CreateAccountStatuses) , "NextToken" :: Maybe (NextToken) } -> {"CreateAccountStatuses" :: Maybe (CreateAccountStatuses) , "NextToken" :: Maybe (NextToken) } ) -> ListCreateAccountStatusResponse
newListCreateAccountStatusResponse'  customize = (ListCreateAccountStatusResponse <<< customize) { "CreateAccountStatuses": Nothing, "NextToken": Nothing }



newtype ListHandshakesForAccountRequest = ListHandshakesForAccountRequest 
  { "Filter" :: Maybe (HandshakeFilter)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListHandshakesForAccountRequest :: Newtype ListHandshakesForAccountRequest _
derive instance repGenericListHandshakesForAccountRequest :: Generic ListHandshakesForAccountRequest _
instance showListHandshakesForAccountRequest :: Show ListHandshakesForAccountRequest where show = genericShow
instance decodeListHandshakesForAccountRequest :: Decode ListHandshakesForAccountRequest where decode = genericDecode options
instance encodeListHandshakesForAccountRequest :: Encode ListHandshakesForAccountRequest where encode = genericEncode options

-- | Constructs ListHandshakesForAccountRequest from required parameters
newListHandshakesForAccountRequest :: ListHandshakesForAccountRequest
newListHandshakesForAccountRequest  = ListHandshakesForAccountRequest { "Filter": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListHandshakesForAccountRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHandshakesForAccountRequest' :: ( { "Filter" :: Maybe (HandshakeFilter) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"Filter" :: Maybe (HandshakeFilter) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListHandshakesForAccountRequest
newListHandshakesForAccountRequest'  customize = (ListHandshakesForAccountRequest <<< customize) { "Filter": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListHandshakesForAccountResponse = ListHandshakesForAccountResponse 
  { "Handshakes" :: Maybe (Handshakes)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListHandshakesForAccountResponse :: Newtype ListHandshakesForAccountResponse _
derive instance repGenericListHandshakesForAccountResponse :: Generic ListHandshakesForAccountResponse _
instance showListHandshakesForAccountResponse :: Show ListHandshakesForAccountResponse where show = genericShow
instance decodeListHandshakesForAccountResponse :: Decode ListHandshakesForAccountResponse where decode = genericDecode options
instance encodeListHandshakesForAccountResponse :: Encode ListHandshakesForAccountResponse where encode = genericEncode options

-- | Constructs ListHandshakesForAccountResponse from required parameters
newListHandshakesForAccountResponse :: ListHandshakesForAccountResponse
newListHandshakesForAccountResponse  = ListHandshakesForAccountResponse { "Handshakes": Nothing, "NextToken": Nothing }

-- | Constructs ListHandshakesForAccountResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHandshakesForAccountResponse' :: ( { "Handshakes" :: Maybe (Handshakes) , "NextToken" :: Maybe (NextToken) } -> {"Handshakes" :: Maybe (Handshakes) , "NextToken" :: Maybe (NextToken) } ) -> ListHandshakesForAccountResponse
newListHandshakesForAccountResponse'  customize = (ListHandshakesForAccountResponse <<< customize) { "Handshakes": Nothing, "NextToken": Nothing }



newtype ListHandshakesForOrganizationRequest = ListHandshakesForOrganizationRequest 
  { "Filter" :: Maybe (HandshakeFilter)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListHandshakesForOrganizationRequest :: Newtype ListHandshakesForOrganizationRequest _
derive instance repGenericListHandshakesForOrganizationRequest :: Generic ListHandshakesForOrganizationRequest _
instance showListHandshakesForOrganizationRequest :: Show ListHandshakesForOrganizationRequest where show = genericShow
instance decodeListHandshakesForOrganizationRequest :: Decode ListHandshakesForOrganizationRequest where decode = genericDecode options
instance encodeListHandshakesForOrganizationRequest :: Encode ListHandshakesForOrganizationRequest where encode = genericEncode options

-- | Constructs ListHandshakesForOrganizationRequest from required parameters
newListHandshakesForOrganizationRequest :: ListHandshakesForOrganizationRequest
newListHandshakesForOrganizationRequest  = ListHandshakesForOrganizationRequest { "Filter": Nothing, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListHandshakesForOrganizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHandshakesForOrganizationRequest' :: ( { "Filter" :: Maybe (HandshakeFilter) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"Filter" :: Maybe (HandshakeFilter) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListHandshakesForOrganizationRequest
newListHandshakesForOrganizationRequest'  customize = (ListHandshakesForOrganizationRequest <<< customize) { "Filter": Nothing, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListHandshakesForOrganizationResponse = ListHandshakesForOrganizationResponse 
  { "Handshakes" :: Maybe (Handshakes)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListHandshakesForOrganizationResponse :: Newtype ListHandshakesForOrganizationResponse _
derive instance repGenericListHandshakesForOrganizationResponse :: Generic ListHandshakesForOrganizationResponse _
instance showListHandshakesForOrganizationResponse :: Show ListHandshakesForOrganizationResponse where show = genericShow
instance decodeListHandshakesForOrganizationResponse :: Decode ListHandshakesForOrganizationResponse where decode = genericDecode options
instance encodeListHandshakesForOrganizationResponse :: Encode ListHandshakesForOrganizationResponse where encode = genericEncode options

-- | Constructs ListHandshakesForOrganizationResponse from required parameters
newListHandshakesForOrganizationResponse :: ListHandshakesForOrganizationResponse
newListHandshakesForOrganizationResponse  = ListHandshakesForOrganizationResponse { "Handshakes": Nothing, "NextToken": Nothing }

-- | Constructs ListHandshakesForOrganizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHandshakesForOrganizationResponse' :: ( { "Handshakes" :: Maybe (Handshakes) , "NextToken" :: Maybe (NextToken) } -> {"Handshakes" :: Maybe (Handshakes) , "NextToken" :: Maybe (NextToken) } ) -> ListHandshakesForOrganizationResponse
newListHandshakesForOrganizationResponse'  customize = (ListHandshakesForOrganizationResponse <<< customize) { "Handshakes": Nothing, "NextToken": Nothing }



newtype ListOrganizationalUnitsForParentRequest = ListOrganizationalUnitsForParentRequest 
  { "ParentId" :: (ParentId)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListOrganizationalUnitsForParentRequest :: Newtype ListOrganizationalUnitsForParentRequest _
derive instance repGenericListOrganizationalUnitsForParentRequest :: Generic ListOrganizationalUnitsForParentRequest _
instance showListOrganizationalUnitsForParentRequest :: Show ListOrganizationalUnitsForParentRequest where show = genericShow
instance decodeListOrganizationalUnitsForParentRequest :: Decode ListOrganizationalUnitsForParentRequest where decode = genericDecode options
instance encodeListOrganizationalUnitsForParentRequest :: Encode ListOrganizationalUnitsForParentRequest where encode = genericEncode options

-- | Constructs ListOrganizationalUnitsForParentRequest from required parameters
newListOrganizationalUnitsForParentRequest :: ParentId -> ListOrganizationalUnitsForParentRequest
newListOrganizationalUnitsForParentRequest _ParentId = ListOrganizationalUnitsForParentRequest { "ParentId": _ParentId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListOrganizationalUnitsForParentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOrganizationalUnitsForParentRequest' :: ParentId -> ( { "ParentId" :: (ParentId) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"ParentId" :: (ParentId) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListOrganizationalUnitsForParentRequest
newListOrganizationalUnitsForParentRequest' _ParentId customize = (ListOrganizationalUnitsForParentRequest <<< customize) { "ParentId": _ParentId, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListOrganizationalUnitsForParentResponse = ListOrganizationalUnitsForParentResponse 
  { "OrganizationalUnits" :: Maybe (OrganizationalUnits)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListOrganizationalUnitsForParentResponse :: Newtype ListOrganizationalUnitsForParentResponse _
derive instance repGenericListOrganizationalUnitsForParentResponse :: Generic ListOrganizationalUnitsForParentResponse _
instance showListOrganizationalUnitsForParentResponse :: Show ListOrganizationalUnitsForParentResponse where show = genericShow
instance decodeListOrganizationalUnitsForParentResponse :: Decode ListOrganizationalUnitsForParentResponse where decode = genericDecode options
instance encodeListOrganizationalUnitsForParentResponse :: Encode ListOrganizationalUnitsForParentResponse where encode = genericEncode options

-- | Constructs ListOrganizationalUnitsForParentResponse from required parameters
newListOrganizationalUnitsForParentResponse :: ListOrganizationalUnitsForParentResponse
newListOrganizationalUnitsForParentResponse  = ListOrganizationalUnitsForParentResponse { "NextToken": Nothing, "OrganizationalUnits": Nothing }

-- | Constructs ListOrganizationalUnitsForParentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOrganizationalUnitsForParentResponse' :: ( { "OrganizationalUnits" :: Maybe (OrganizationalUnits) , "NextToken" :: Maybe (NextToken) } -> {"OrganizationalUnits" :: Maybe (OrganizationalUnits) , "NextToken" :: Maybe (NextToken) } ) -> ListOrganizationalUnitsForParentResponse
newListOrganizationalUnitsForParentResponse'  customize = (ListOrganizationalUnitsForParentResponse <<< customize) { "NextToken": Nothing, "OrganizationalUnits": Nothing }



newtype ListParentsRequest = ListParentsRequest 
  { "ChildId" :: (ChildId)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListParentsRequest :: Newtype ListParentsRequest _
derive instance repGenericListParentsRequest :: Generic ListParentsRequest _
instance showListParentsRequest :: Show ListParentsRequest where show = genericShow
instance decodeListParentsRequest :: Decode ListParentsRequest where decode = genericDecode options
instance encodeListParentsRequest :: Encode ListParentsRequest where encode = genericEncode options

-- | Constructs ListParentsRequest from required parameters
newListParentsRequest :: ChildId -> ListParentsRequest
newListParentsRequest _ChildId = ListParentsRequest { "ChildId": _ChildId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListParentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListParentsRequest' :: ChildId -> ( { "ChildId" :: (ChildId) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"ChildId" :: (ChildId) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListParentsRequest
newListParentsRequest' _ChildId customize = (ListParentsRequest <<< customize) { "ChildId": _ChildId, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListParentsResponse = ListParentsResponse 
  { "Parents" :: Maybe (Parents)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListParentsResponse :: Newtype ListParentsResponse _
derive instance repGenericListParentsResponse :: Generic ListParentsResponse _
instance showListParentsResponse :: Show ListParentsResponse where show = genericShow
instance decodeListParentsResponse :: Decode ListParentsResponse where decode = genericDecode options
instance encodeListParentsResponse :: Encode ListParentsResponse where encode = genericEncode options

-- | Constructs ListParentsResponse from required parameters
newListParentsResponse :: ListParentsResponse
newListParentsResponse  = ListParentsResponse { "NextToken": Nothing, "Parents": Nothing }

-- | Constructs ListParentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListParentsResponse' :: ( { "Parents" :: Maybe (Parents) , "NextToken" :: Maybe (NextToken) } -> {"Parents" :: Maybe (Parents) , "NextToken" :: Maybe (NextToken) } ) -> ListParentsResponse
newListParentsResponse'  customize = (ListParentsResponse <<< customize) { "NextToken": Nothing, "Parents": Nothing }



newtype ListPoliciesForTargetRequest = ListPoliciesForTargetRequest 
  { "TargetId" :: (PolicyTargetId)
  , "Filter" :: (PolicyType)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListPoliciesForTargetRequest :: Newtype ListPoliciesForTargetRequest _
derive instance repGenericListPoliciesForTargetRequest :: Generic ListPoliciesForTargetRequest _
instance showListPoliciesForTargetRequest :: Show ListPoliciesForTargetRequest where show = genericShow
instance decodeListPoliciesForTargetRequest :: Decode ListPoliciesForTargetRequest where decode = genericDecode options
instance encodeListPoliciesForTargetRequest :: Encode ListPoliciesForTargetRequest where encode = genericEncode options

-- | Constructs ListPoliciesForTargetRequest from required parameters
newListPoliciesForTargetRequest :: PolicyType -> PolicyTargetId -> ListPoliciesForTargetRequest
newListPoliciesForTargetRequest _Filter _TargetId = ListPoliciesForTargetRequest { "Filter": _Filter, "TargetId": _TargetId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListPoliciesForTargetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesForTargetRequest' :: PolicyType -> PolicyTargetId -> ( { "TargetId" :: (PolicyTargetId) , "Filter" :: (PolicyType) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"TargetId" :: (PolicyTargetId) , "Filter" :: (PolicyType) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListPoliciesForTargetRequest
newListPoliciesForTargetRequest' _Filter _TargetId customize = (ListPoliciesForTargetRequest <<< customize) { "Filter": _Filter, "TargetId": _TargetId, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListPoliciesForTargetResponse = ListPoliciesForTargetResponse 
  { "Policies" :: Maybe (Policies)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListPoliciesForTargetResponse :: Newtype ListPoliciesForTargetResponse _
derive instance repGenericListPoliciesForTargetResponse :: Generic ListPoliciesForTargetResponse _
instance showListPoliciesForTargetResponse :: Show ListPoliciesForTargetResponse where show = genericShow
instance decodeListPoliciesForTargetResponse :: Decode ListPoliciesForTargetResponse where decode = genericDecode options
instance encodeListPoliciesForTargetResponse :: Encode ListPoliciesForTargetResponse where encode = genericEncode options

-- | Constructs ListPoliciesForTargetResponse from required parameters
newListPoliciesForTargetResponse :: ListPoliciesForTargetResponse
newListPoliciesForTargetResponse  = ListPoliciesForTargetResponse { "NextToken": Nothing, "Policies": Nothing }

-- | Constructs ListPoliciesForTargetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesForTargetResponse' :: ( { "Policies" :: Maybe (Policies) , "NextToken" :: Maybe (NextToken) } -> {"Policies" :: Maybe (Policies) , "NextToken" :: Maybe (NextToken) } ) -> ListPoliciesForTargetResponse
newListPoliciesForTargetResponse'  customize = (ListPoliciesForTargetResponse <<< customize) { "NextToken": Nothing, "Policies": Nothing }



newtype ListPoliciesRequest = ListPoliciesRequest 
  { "Filter" :: (PolicyType)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListPoliciesRequest :: Newtype ListPoliciesRequest _
derive instance repGenericListPoliciesRequest :: Generic ListPoliciesRequest _
instance showListPoliciesRequest :: Show ListPoliciesRequest where show = genericShow
instance decodeListPoliciesRequest :: Decode ListPoliciesRequest where decode = genericDecode options
instance encodeListPoliciesRequest :: Encode ListPoliciesRequest where encode = genericEncode options

-- | Constructs ListPoliciesRequest from required parameters
newListPoliciesRequest :: PolicyType -> ListPoliciesRequest
newListPoliciesRequest _Filter = ListPoliciesRequest { "Filter": _Filter, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesRequest' :: PolicyType -> ( { "Filter" :: (PolicyType) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"Filter" :: (PolicyType) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListPoliciesRequest
newListPoliciesRequest' _Filter customize = (ListPoliciesRequest <<< customize) { "Filter": _Filter, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListPoliciesResponse = ListPoliciesResponse 
  { "Policies" :: Maybe (Policies)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListPoliciesResponse :: Newtype ListPoliciesResponse _
derive instance repGenericListPoliciesResponse :: Generic ListPoliciesResponse _
instance showListPoliciesResponse :: Show ListPoliciesResponse where show = genericShow
instance decodeListPoliciesResponse :: Decode ListPoliciesResponse where decode = genericDecode options
instance encodeListPoliciesResponse :: Encode ListPoliciesResponse where encode = genericEncode options

-- | Constructs ListPoliciesResponse from required parameters
newListPoliciesResponse :: ListPoliciesResponse
newListPoliciesResponse  = ListPoliciesResponse { "NextToken": Nothing, "Policies": Nothing }

-- | Constructs ListPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesResponse' :: ( { "Policies" :: Maybe (Policies) , "NextToken" :: Maybe (NextToken) } -> {"Policies" :: Maybe (Policies) , "NextToken" :: Maybe (NextToken) } ) -> ListPoliciesResponse
newListPoliciesResponse'  customize = (ListPoliciesResponse <<< customize) { "NextToken": Nothing, "Policies": Nothing }



newtype ListRootsRequest = ListRootsRequest 
  { "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListRootsRequest :: Newtype ListRootsRequest _
derive instance repGenericListRootsRequest :: Generic ListRootsRequest _
instance showListRootsRequest :: Show ListRootsRequest where show = genericShow
instance decodeListRootsRequest :: Decode ListRootsRequest where decode = genericDecode options
instance encodeListRootsRequest :: Encode ListRootsRequest where encode = genericEncode options

-- | Constructs ListRootsRequest from required parameters
newListRootsRequest :: ListRootsRequest
newListRootsRequest  = ListRootsRequest { "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListRootsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRootsRequest' :: ( { "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListRootsRequest
newListRootsRequest'  customize = (ListRootsRequest <<< customize) { "MaxResults": Nothing, "NextToken": Nothing }



newtype ListRootsResponse = ListRootsResponse 
  { "Roots" :: Maybe (Roots)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListRootsResponse :: Newtype ListRootsResponse _
derive instance repGenericListRootsResponse :: Generic ListRootsResponse _
instance showListRootsResponse :: Show ListRootsResponse where show = genericShow
instance decodeListRootsResponse :: Decode ListRootsResponse where decode = genericDecode options
instance encodeListRootsResponse :: Encode ListRootsResponse where encode = genericEncode options

-- | Constructs ListRootsResponse from required parameters
newListRootsResponse :: ListRootsResponse
newListRootsResponse  = ListRootsResponse { "NextToken": Nothing, "Roots": Nothing }

-- | Constructs ListRootsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRootsResponse' :: ( { "Roots" :: Maybe (Roots) , "NextToken" :: Maybe (NextToken) } -> {"Roots" :: Maybe (Roots) , "NextToken" :: Maybe (NextToken) } ) -> ListRootsResponse
newListRootsResponse'  customize = (ListRootsResponse <<< customize) { "NextToken": Nothing, "Roots": Nothing }



newtype ListTargetsForPolicyRequest = ListTargetsForPolicyRequest 
  { "PolicyId" :: (PolicyId)
  , "NextToken" :: Maybe (NextToken)
  , "MaxResults" :: Maybe (MaxResults)
  }
derive instance newtypeListTargetsForPolicyRequest :: Newtype ListTargetsForPolicyRequest _
derive instance repGenericListTargetsForPolicyRequest :: Generic ListTargetsForPolicyRequest _
instance showListTargetsForPolicyRequest :: Show ListTargetsForPolicyRequest where show = genericShow
instance decodeListTargetsForPolicyRequest :: Decode ListTargetsForPolicyRequest where decode = genericDecode options
instance encodeListTargetsForPolicyRequest :: Encode ListTargetsForPolicyRequest where encode = genericEncode options

-- | Constructs ListTargetsForPolicyRequest from required parameters
newListTargetsForPolicyRequest :: PolicyId -> ListTargetsForPolicyRequest
newListTargetsForPolicyRequest _PolicyId = ListTargetsForPolicyRequest { "PolicyId": _PolicyId, "MaxResults": Nothing, "NextToken": Nothing }

-- | Constructs ListTargetsForPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTargetsForPolicyRequest' :: PolicyId -> ( { "PolicyId" :: (PolicyId) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } -> {"PolicyId" :: (PolicyId) , "NextToken" :: Maybe (NextToken) , "MaxResults" :: Maybe (MaxResults) } ) -> ListTargetsForPolicyRequest
newListTargetsForPolicyRequest' _PolicyId customize = (ListTargetsForPolicyRequest <<< customize) { "PolicyId": _PolicyId, "MaxResults": Nothing, "NextToken": Nothing }



newtype ListTargetsForPolicyResponse = ListTargetsForPolicyResponse 
  { "Targets" :: Maybe (PolicyTargets)
  , "NextToken" :: Maybe (NextToken)
  }
derive instance newtypeListTargetsForPolicyResponse :: Newtype ListTargetsForPolicyResponse _
derive instance repGenericListTargetsForPolicyResponse :: Generic ListTargetsForPolicyResponse _
instance showListTargetsForPolicyResponse :: Show ListTargetsForPolicyResponse where show = genericShow
instance decodeListTargetsForPolicyResponse :: Decode ListTargetsForPolicyResponse where decode = genericDecode options
instance encodeListTargetsForPolicyResponse :: Encode ListTargetsForPolicyResponse where encode = genericEncode options

-- | Constructs ListTargetsForPolicyResponse from required parameters
newListTargetsForPolicyResponse :: ListTargetsForPolicyResponse
newListTargetsForPolicyResponse  = ListTargetsForPolicyResponse { "NextToken": Nothing, "Targets": Nothing }

-- | Constructs ListTargetsForPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTargetsForPolicyResponse' :: ( { "Targets" :: Maybe (PolicyTargets) , "NextToken" :: Maybe (NextToken) } -> {"Targets" :: Maybe (PolicyTargets) , "NextToken" :: Maybe (NextToken) } ) -> ListTargetsForPolicyResponse
newListTargetsForPolicyResponse'  customize = (ListTargetsForPolicyResponse <<< customize) { "NextToken": Nothing, "Targets": Nothing }



-- | <p>The provided policy document does not meet the requirements of the specified policy type. For example, the syntax might be incorrect. For details about service control policy syntax, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service Control Policy Syntax</a> in the <i>AWS Organizations User Guide</i>.</p>
newtype MalformedPolicyDocumentException = MalformedPolicyDocumentException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeMalformedPolicyDocumentException :: Newtype MalformedPolicyDocumentException _
derive instance repGenericMalformedPolicyDocumentException :: Generic MalformedPolicyDocumentException _
instance showMalformedPolicyDocumentException :: Show MalformedPolicyDocumentException where show = genericShow
instance decodeMalformedPolicyDocumentException :: Decode MalformedPolicyDocumentException where decode = genericDecode options
instance encodeMalformedPolicyDocumentException :: Encode MalformedPolicyDocumentException where encode = genericEncode options

-- | Constructs MalformedPolicyDocumentException from required parameters
newMalformedPolicyDocumentException :: MalformedPolicyDocumentException
newMalformedPolicyDocumentException  = MalformedPolicyDocumentException { "Message": Nothing }

-- | Constructs MalformedPolicyDocumentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMalformedPolicyDocumentException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> MalformedPolicyDocumentException
newMalformedPolicyDocumentException'  customize = (MalformedPolicyDocumentException <<< customize) { "Message": Nothing }



-- | <p>You can't remove a master account from an organization. If you want the master account to become a member account in another organization, you must first delete the current organization of the master account.</p>
newtype MasterCannotLeaveOrganizationException = MasterCannotLeaveOrganizationException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeMasterCannotLeaveOrganizationException :: Newtype MasterCannotLeaveOrganizationException _
derive instance repGenericMasterCannotLeaveOrganizationException :: Generic MasterCannotLeaveOrganizationException _
instance showMasterCannotLeaveOrganizationException :: Show MasterCannotLeaveOrganizationException where show = genericShow
instance decodeMasterCannotLeaveOrganizationException :: Decode MasterCannotLeaveOrganizationException where decode = genericDecode options
instance encodeMasterCannotLeaveOrganizationException :: Encode MasterCannotLeaveOrganizationException where encode = genericEncode options

-- | Constructs MasterCannotLeaveOrganizationException from required parameters
newMasterCannotLeaveOrganizationException :: MasterCannotLeaveOrganizationException
newMasterCannotLeaveOrganizationException  = MasterCannotLeaveOrganizationException { "Message": Nothing }

-- | Constructs MasterCannotLeaveOrganizationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMasterCannotLeaveOrganizationException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> MasterCannotLeaveOrganizationException
newMasterCannotLeaveOrganizationException'  customize = (MasterCannotLeaveOrganizationException <<< customize) { "Message": Nothing }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where show = genericShow
instance decodeMaxResults :: Decode MaxResults where decode = genericDecode options
instance encodeMaxResults :: Encode MaxResults where encode = genericEncode options



newtype MoveAccountRequest = MoveAccountRequest 
  { "AccountId" :: (AccountId)
  , "SourceParentId" :: (ParentId)
  , "DestinationParentId" :: (ParentId)
  }
derive instance newtypeMoveAccountRequest :: Newtype MoveAccountRequest _
derive instance repGenericMoveAccountRequest :: Generic MoveAccountRequest _
instance showMoveAccountRequest :: Show MoveAccountRequest where show = genericShow
instance decodeMoveAccountRequest :: Decode MoveAccountRequest where decode = genericDecode options
instance encodeMoveAccountRequest :: Encode MoveAccountRequest where encode = genericEncode options

-- | Constructs MoveAccountRequest from required parameters
newMoveAccountRequest :: AccountId -> ParentId -> ParentId -> MoveAccountRequest
newMoveAccountRequest _AccountId _DestinationParentId _SourceParentId = MoveAccountRequest { "AccountId": _AccountId, "DestinationParentId": _DestinationParentId, "SourceParentId": _SourceParentId }

-- | Constructs MoveAccountRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMoveAccountRequest' :: AccountId -> ParentId -> ParentId -> ( { "AccountId" :: (AccountId) , "SourceParentId" :: (ParentId) , "DestinationParentId" :: (ParentId) } -> {"AccountId" :: (AccountId) , "SourceParentId" :: (ParentId) , "DestinationParentId" :: (ParentId) } ) -> MoveAccountRequest
newMoveAccountRequest' _AccountId _DestinationParentId _SourceParentId customize = (MoveAccountRequest <<< customize) { "AccountId": _AccountId, "DestinationParentId": _DestinationParentId, "SourceParentId": _SourceParentId }



newtype NextToken = NextToken String
derive instance newtypeNextToken :: Newtype NextToken _
derive instance repGenericNextToken :: Generic NextToken _
instance showNextToken :: Show NextToken where show = genericShow
instance decodeNextToken :: Decode NextToken where decode = genericDecode options
instance encodeNextToken :: Encode NextToken where encode = genericEncode options



-- | <p>Contains details about an organization. An organization is a collection of accounts that are centrally managed together using consolidated billing, organized hierarchically with organizational units (OUs), and controlled with policies .</p>
newtype Organization = Organization 
  { "Id" :: Maybe (OrganizationId)
  , "Arn" :: Maybe (OrganizationArn)
  , "FeatureSet" :: Maybe (OrganizationFeatureSet)
  , "MasterAccountArn" :: Maybe (AccountArn)
  , "MasterAccountId" :: Maybe (AccountId)
  , "MasterAccountEmail" :: Maybe (Email)
  , "AvailablePolicyTypes" :: Maybe (PolicyTypes)
  }
derive instance newtypeOrganization :: Newtype Organization _
derive instance repGenericOrganization :: Generic Organization _
instance showOrganization :: Show Organization where show = genericShow
instance decodeOrganization :: Decode Organization where decode = genericDecode options
instance encodeOrganization :: Encode Organization where encode = genericEncode options

-- | Constructs Organization from required parameters
newOrganization :: Organization
newOrganization  = Organization { "Arn": Nothing, "AvailablePolicyTypes": Nothing, "FeatureSet": Nothing, "Id": Nothing, "MasterAccountArn": Nothing, "MasterAccountEmail": Nothing, "MasterAccountId": Nothing }

-- | Constructs Organization's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganization' :: ( { "Id" :: Maybe (OrganizationId) , "Arn" :: Maybe (OrganizationArn) , "FeatureSet" :: Maybe (OrganizationFeatureSet) , "MasterAccountArn" :: Maybe (AccountArn) , "MasterAccountId" :: Maybe (AccountId) , "MasterAccountEmail" :: Maybe (Email) , "AvailablePolicyTypes" :: Maybe (PolicyTypes) } -> {"Id" :: Maybe (OrganizationId) , "Arn" :: Maybe (OrganizationArn) , "FeatureSet" :: Maybe (OrganizationFeatureSet) , "MasterAccountArn" :: Maybe (AccountArn) , "MasterAccountId" :: Maybe (AccountId) , "MasterAccountEmail" :: Maybe (Email) , "AvailablePolicyTypes" :: Maybe (PolicyTypes) } ) -> Organization
newOrganization'  customize = (Organization <<< customize) { "Arn": Nothing, "AvailablePolicyTypes": Nothing, "FeatureSet": Nothing, "Id": Nothing, "MasterAccountArn": Nothing, "MasterAccountEmail": Nothing, "MasterAccountId": Nothing }



newtype OrganizationArn = OrganizationArn String
derive instance newtypeOrganizationArn :: Newtype OrganizationArn _
derive instance repGenericOrganizationArn :: Generic OrganizationArn _
instance showOrganizationArn :: Show OrganizationArn where show = genericShow
instance decodeOrganizationArn :: Decode OrganizationArn where decode = genericDecode options
instance encodeOrganizationArn :: Encode OrganizationArn where encode = genericEncode options



newtype OrganizationFeatureSet = OrganizationFeatureSet String
derive instance newtypeOrganizationFeatureSet :: Newtype OrganizationFeatureSet _
derive instance repGenericOrganizationFeatureSet :: Generic OrganizationFeatureSet _
instance showOrganizationFeatureSet :: Show OrganizationFeatureSet where show = genericShow
instance decodeOrganizationFeatureSet :: Decode OrganizationFeatureSet where decode = genericDecode options
instance encodeOrganizationFeatureSet :: Encode OrganizationFeatureSet where encode = genericEncode options



newtype OrganizationId = OrganizationId String
derive instance newtypeOrganizationId :: Newtype OrganizationId _
derive instance repGenericOrganizationId :: Generic OrganizationId _
instance showOrganizationId :: Show OrganizationId where show = genericShow
instance decodeOrganizationId :: Decode OrganizationId where decode = genericDecode options
instance encodeOrganizationId :: Encode OrganizationId where encode = genericEncode options



-- | <p>The organization isn't empty. To delete an organization, you must first remove all accounts except the master account, delete all organizational units (OUs), and delete all policies.</p>
newtype OrganizationNotEmptyException = OrganizationNotEmptyException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeOrganizationNotEmptyException :: Newtype OrganizationNotEmptyException _
derive instance repGenericOrganizationNotEmptyException :: Generic OrganizationNotEmptyException _
instance showOrganizationNotEmptyException :: Show OrganizationNotEmptyException where show = genericShow
instance decodeOrganizationNotEmptyException :: Decode OrganizationNotEmptyException where decode = genericDecode options
instance encodeOrganizationNotEmptyException :: Encode OrganizationNotEmptyException where encode = genericEncode options

-- | Constructs OrganizationNotEmptyException from required parameters
newOrganizationNotEmptyException :: OrganizationNotEmptyException
newOrganizationNotEmptyException  = OrganizationNotEmptyException { "Message": Nothing }

-- | Constructs OrganizationNotEmptyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganizationNotEmptyException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> OrganizationNotEmptyException
newOrganizationNotEmptyException'  customize = (OrganizationNotEmptyException <<< customize) { "Message": Nothing }



-- | <p>Contains details about an organizational unit (OU). An OU is a container of AWS accounts within a root of an organization. Policies that are attached to an OU apply to all accounts contained in that OU and in any child OUs.</p>
newtype OrganizationalUnit = OrganizationalUnit 
  { "Id" :: Maybe (OrganizationalUnitId)
  , "Arn" :: Maybe (OrganizationalUnitArn)
  , "Name" :: Maybe (OrganizationalUnitName)
  }
derive instance newtypeOrganizationalUnit :: Newtype OrganizationalUnit _
derive instance repGenericOrganizationalUnit :: Generic OrganizationalUnit _
instance showOrganizationalUnit :: Show OrganizationalUnit where show = genericShow
instance decodeOrganizationalUnit :: Decode OrganizationalUnit where decode = genericDecode options
instance encodeOrganizationalUnit :: Encode OrganizationalUnit where encode = genericEncode options

-- | Constructs OrganizationalUnit from required parameters
newOrganizationalUnit :: OrganizationalUnit
newOrganizationalUnit  = OrganizationalUnit { "Arn": Nothing, "Id": Nothing, "Name": Nothing }

-- | Constructs OrganizationalUnit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganizationalUnit' :: ( { "Id" :: Maybe (OrganizationalUnitId) , "Arn" :: Maybe (OrganizationalUnitArn) , "Name" :: Maybe (OrganizationalUnitName) } -> {"Id" :: Maybe (OrganizationalUnitId) , "Arn" :: Maybe (OrganizationalUnitArn) , "Name" :: Maybe (OrganizationalUnitName) } ) -> OrganizationalUnit
newOrganizationalUnit'  customize = (OrganizationalUnit <<< customize) { "Arn": Nothing, "Id": Nothing, "Name": Nothing }



newtype OrganizationalUnitArn = OrganizationalUnitArn String
derive instance newtypeOrganizationalUnitArn :: Newtype OrganizationalUnitArn _
derive instance repGenericOrganizationalUnitArn :: Generic OrganizationalUnitArn _
instance showOrganizationalUnitArn :: Show OrganizationalUnitArn where show = genericShow
instance decodeOrganizationalUnitArn :: Decode OrganizationalUnitArn where decode = genericDecode options
instance encodeOrganizationalUnitArn :: Encode OrganizationalUnitArn where encode = genericEncode options



newtype OrganizationalUnitId = OrganizationalUnitId String
derive instance newtypeOrganizationalUnitId :: Newtype OrganizationalUnitId _
derive instance repGenericOrganizationalUnitId :: Generic OrganizationalUnitId _
instance showOrganizationalUnitId :: Show OrganizationalUnitId where show = genericShow
instance decodeOrganizationalUnitId :: Decode OrganizationalUnitId where decode = genericDecode options
instance encodeOrganizationalUnitId :: Encode OrganizationalUnitId where encode = genericEncode options



newtype OrganizationalUnitName = OrganizationalUnitName String
derive instance newtypeOrganizationalUnitName :: Newtype OrganizationalUnitName _
derive instance repGenericOrganizationalUnitName :: Generic OrganizationalUnitName _
instance showOrganizationalUnitName :: Show OrganizationalUnitName where show = genericShow
instance decodeOrganizationalUnitName :: Decode OrganizationalUnitName where decode = genericDecode options
instance encodeOrganizationalUnitName :: Encode OrganizationalUnitName where encode = genericEncode options



-- | <p>The specified organizational unit (OU) is not empty. Move all accounts to another root or to other OUs, remove all child OUs, and then try the operation again.</p>
newtype OrganizationalUnitNotEmptyException = OrganizationalUnitNotEmptyException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeOrganizationalUnitNotEmptyException :: Newtype OrganizationalUnitNotEmptyException _
derive instance repGenericOrganizationalUnitNotEmptyException :: Generic OrganizationalUnitNotEmptyException _
instance showOrganizationalUnitNotEmptyException :: Show OrganizationalUnitNotEmptyException where show = genericShow
instance decodeOrganizationalUnitNotEmptyException :: Decode OrganizationalUnitNotEmptyException where decode = genericDecode options
instance encodeOrganizationalUnitNotEmptyException :: Encode OrganizationalUnitNotEmptyException where encode = genericEncode options

-- | Constructs OrganizationalUnitNotEmptyException from required parameters
newOrganizationalUnitNotEmptyException :: OrganizationalUnitNotEmptyException
newOrganizationalUnitNotEmptyException  = OrganizationalUnitNotEmptyException { "Message": Nothing }

-- | Constructs OrganizationalUnitNotEmptyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganizationalUnitNotEmptyException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> OrganizationalUnitNotEmptyException
newOrganizationalUnitNotEmptyException'  customize = (OrganizationalUnitNotEmptyException <<< customize) { "Message": Nothing }



-- | <p>We can't find an organizational unit (OU) with the OrganizationalUnitId that you specified.</p>
newtype OrganizationalUnitNotFoundException = OrganizationalUnitNotFoundException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeOrganizationalUnitNotFoundException :: Newtype OrganizationalUnitNotFoundException _
derive instance repGenericOrganizationalUnitNotFoundException :: Generic OrganizationalUnitNotFoundException _
instance showOrganizationalUnitNotFoundException :: Show OrganizationalUnitNotFoundException where show = genericShow
instance decodeOrganizationalUnitNotFoundException :: Decode OrganizationalUnitNotFoundException where decode = genericDecode options
instance encodeOrganizationalUnitNotFoundException :: Encode OrganizationalUnitNotFoundException where encode = genericEncode options

-- | Constructs OrganizationalUnitNotFoundException from required parameters
newOrganizationalUnitNotFoundException :: OrganizationalUnitNotFoundException
newOrganizationalUnitNotFoundException  = OrganizationalUnitNotFoundException { "Message": Nothing }

-- | Constructs OrganizationalUnitNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganizationalUnitNotFoundException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> OrganizationalUnitNotFoundException
newOrganizationalUnitNotFoundException'  customize = (OrganizationalUnitNotFoundException <<< customize) { "Message": Nothing }



newtype OrganizationalUnits = OrganizationalUnits (Array OrganizationalUnit)
derive instance newtypeOrganizationalUnits :: Newtype OrganizationalUnits _
derive instance repGenericOrganizationalUnits :: Generic OrganizationalUnits _
instance showOrganizationalUnits :: Show OrganizationalUnits where show = genericShow
instance decodeOrganizationalUnits :: Decode OrganizationalUnits where decode = genericDecode options
instance encodeOrganizationalUnits :: Encode OrganizationalUnits where encode = genericEncode options



-- | <p>Contains information about either a root or an organizational unit (OU) that can contain OUs or accounts in an organization.</p>
newtype Parent = Parent 
  { "Id" :: Maybe (ParentId)
  , "Type" :: Maybe (ParentType)
  }
derive instance newtypeParent :: Newtype Parent _
derive instance repGenericParent :: Generic Parent _
instance showParent :: Show Parent where show = genericShow
instance decodeParent :: Decode Parent where decode = genericDecode options
instance encodeParent :: Encode Parent where encode = genericEncode options

-- | Constructs Parent from required parameters
newParent :: Parent
newParent  = Parent { "Id": Nothing, "Type": Nothing }

-- | Constructs Parent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParent' :: ( { "Id" :: Maybe (ParentId) , "Type" :: Maybe (ParentType) } -> {"Id" :: Maybe (ParentId) , "Type" :: Maybe (ParentType) } ) -> Parent
newParent'  customize = (Parent <<< customize) { "Id": Nothing, "Type": Nothing }



newtype ParentId = ParentId String
derive instance newtypeParentId :: Newtype ParentId _
derive instance repGenericParentId :: Generic ParentId _
instance showParentId :: Show ParentId where show = genericShow
instance decodeParentId :: Decode ParentId where decode = genericDecode options
instance encodeParentId :: Encode ParentId where encode = genericEncode options



-- | <p>We can't find a root or organizational unit (OU) with the ParentId that you specified.</p>
newtype ParentNotFoundException = ParentNotFoundException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeParentNotFoundException :: Newtype ParentNotFoundException _
derive instance repGenericParentNotFoundException :: Generic ParentNotFoundException _
instance showParentNotFoundException :: Show ParentNotFoundException where show = genericShow
instance decodeParentNotFoundException :: Decode ParentNotFoundException where decode = genericDecode options
instance encodeParentNotFoundException :: Encode ParentNotFoundException where encode = genericEncode options

-- | Constructs ParentNotFoundException from required parameters
newParentNotFoundException :: ParentNotFoundException
newParentNotFoundException  = ParentNotFoundException { "Message": Nothing }

-- | Constructs ParentNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParentNotFoundException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> ParentNotFoundException
newParentNotFoundException'  customize = (ParentNotFoundException <<< customize) { "Message": Nothing }



newtype ParentType = ParentType String
derive instance newtypeParentType :: Newtype ParentType _
derive instance repGenericParentType :: Generic ParentType _
instance showParentType :: Show ParentType where show = genericShow
instance decodeParentType :: Decode ParentType where decode = genericDecode options
instance encodeParentType :: Encode ParentType where encode = genericEncode options



newtype Parents = Parents (Array Parent)
derive instance newtypeParents :: Newtype Parents _
derive instance repGenericParents :: Generic Parents _
instance showParents :: Show Parents where show = genericShow
instance decodeParents :: Decode Parents where decode = genericDecode options
instance encodeParents :: Encode Parents where encode = genericEncode options



newtype Policies = Policies (Array PolicySummary)
derive instance newtypePolicies :: Newtype Policies _
derive instance repGenericPolicies :: Generic Policies _
instance showPolicies :: Show Policies where show = genericShow
instance decodePolicies :: Decode Policies where decode = genericDecode options
instance encodePolicies :: Encode Policies where encode = genericEncode options



-- | <p>Contains rules to be applied to the affected accounts. Policies can be attached directly to accounts, or to roots and OUs to affect all accounts in those hierarchies.</p>
newtype Policy = Policy 
  { "PolicySummary" :: Maybe (PolicySummary)
  , "Content" :: Maybe (PolicyContent)
  }
derive instance newtypePolicy :: Newtype Policy _
derive instance repGenericPolicy :: Generic Policy _
instance showPolicy :: Show Policy where show = genericShow
instance decodePolicy :: Decode Policy where decode = genericDecode options
instance encodePolicy :: Encode Policy where encode = genericEncode options

-- | Constructs Policy from required parameters
newPolicy :: Policy
newPolicy  = Policy { "Content": Nothing, "PolicySummary": Nothing }

-- | Constructs Policy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicy' :: ( { "PolicySummary" :: Maybe (PolicySummary) , "Content" :: Maybe (PolicyContent) } -> {"PolicySummary" :: Maybe (PolicySummary) , "Content" :: Maybe (PolicyContent) } ) -> Policy
newPolicy'  customize = (Policy <<< customize) { "Content": Nothing, "PolicySummary": Nothing }



newtype PolicyArn = PolicyArn String
derive instance newtypePolicyArn :: Newtype PolicyArn _
derive instance repGenericPolicyArn :: Generic PolicyArn _
instance showPolicyArn :: Show PolicyArn where show = genericShow
instance decodePolicyArn :: Decode PolicyArn where decode = genericDecode options
instance encodePolicyArn :: Encode PolicyArn where encode = genericEncode options



newtype PolicyContent = PolicyContent String
derive instance newtypePolicyContent :: Newtype PolicyContent _
derive instance repGenericPolicyContent :: Generic PolicyContent _
instance showPolicyContent :: Show PolicyContent where show = genericShow
instance decodePolicyContent :: Decode PolicyContent where decode = genericDecode options
instance encodePolicyContent :: Encode PolicyContent where encode = genericEncode options



newtype PolicyDescription = PolicyDescription String
derive instance newtypePolicyDescription :: Newtype PolicyDescription _
derive instance repGenericPolicyDescription :: Generic PolicyDescription _
instance showPolicyDescription :: Show PolicyDescription where show = genericShow
instance decodePolicyDescription :: Decode PolicyDescription where decode = genericDecode options
instance encodePolicyDescription :: Encode PolicyDescription where encode = genericEncode options



newtype PolicyId = PolicyId String
derive instance newtypePolicyId :: Newtype PolicyId _
derive instance repGenericPolicyId :: Generic PolicyId _
instance showPolicyId :: Show PolicyId where show = genericShow
instance decodePolicyId :: Decode PolicyId where decode = genericDecode options
instance encodePolicyId :: Encode PolicyId where encode = genericEncode options



-- | <p>The policy is attached to one or more entities. You must detach it from all roots, organizational units (OUs), and accounts before performing this operation.</p>
newtype PolicyInUseException = PolicyInUseException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypePolicyInUseException :: Newtype PolicyInUseException _
derive instance repGenericPolicyInUseException :: Generic PolicyInUseException _
instance showPolicyInUseException :: Show PolicyInUseException where show = genericShow
instance decodePolicyInUseException :: Decode PolicyInUseException where decode = genericDecode options
instance encodePolicyInUseException :: Encode PolicyInUseException where encode = genericEncode options

-- | Constructs PolicyInUseException from required parameters
newPolicyInUseException :: PolicyInUseException
newPolicyInUseException  = PolicyInUseException { "Message": Nothing }

-- | Constructs PolicyInUseException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyInUseException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> PolicyInUseException
newPolicyInUseException'  customize = (PolicyInUseException <<< customize) { "Message": Nothing }



newtype PolicyName = PolicyName String
derive instance newtypePolicyName :: Newtype PolicyName _
derive instance repGenericPolicyName :: Generic PolicyName _
instance showPolicyName :: Show PolicyName where show = genericShow
instance decodePolicyName :: Decode PolicyName where decode = genericDecode options
instance encodePolicyName :: Encode PolicyName where encode = genericEncode options



-- | <p>The policy isn't attached to the specified target in the specified root.</p>
newtype PolicyNotAttachedException = PolicyNotAttachedException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypePolicyNotAttachedException :: Newtype PolicyNotAttachedException _
derive instance repGenericPolicyNotAttachedException :: Generic PolicyNotAttachedException _
instance showPolicyNotAttachedException :: Show PolicyNotAttachedException where show = genericShow
instance decodePolicyNotAttachedException :: Decode PolicyNotAttachedException where decode = genericDecode options
instance encodePolicyNotAttachedException :: Encode PolicyNotAttachedException where encode = genericEncode options

-- | Constructs PolicyNotAttachedException from required parameters
newPolicyNotAttachedException :: PolicyNotAttachedException
newPolicyNotAttachedException  = PolicyNotAttachedException { "Message": Nothing }

-- | Constructs PolicyNotAttachedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyNotAttachedException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> PolicyNotAttachedException
newPolicyNotAttachedException'  customize = (PolicyNotAttachedException <<< customize) { "Message": Nothing }



-- | <p>We can't find a policy with the PolicyId that you specified.</p>
newtype PolicyNotFoundException = PolicyNotFoundException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypePolicyNotFoundException :: Newtype PolicyNotFoundException _
derive instance repGenericPolicyNotFoundException :: Generic PolicyNotFoundException _
instance showPolicyNotFoundException :: Show PolicyNotFoundException where show = genericShow
instance decodePolicyNotFoundException :: Decode PolicyNotFoundException where decode = genericDecode options
instance encodePolicyNotFoundException :: Encode PolicyNotFoundException where encode = genericEncode options

-- | Constructs PolicyNotFoundException from required parameters
newPolicyNotFoundException :: PolicyNotFoundException
newPolicyNotFoundException  = PolicyNotFoundException { "Message": Nothing }

-- | Constructs PolicyNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyNotFoundException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> PolicyNotFoundException
newPolicyNotFoundException'  customize = (PolicyNotFoundException <<< customize) { "Message": Nothing }



-- | <p>Contains information about a policy, but does not include the content. To see the content of a policy, see <a>DescribePolicy</a>.</p>
newtype PolicySummary = PolicySummary 
  { "Id" :: Maybe (PolicyId)
  , "Arn" :: Maybe (PolicyArn)
  , "Name" :: Maybe (PolicyName)
  , "Description" :: Maybe (PolicyDescription)
  , "Type" :: Maybe (PolicyType)
  , "AwsManaged" :: Maybe (AwsManagedPolicy)
  }
derive instance newtypePolicySummary :: Newtype PolicySummary _
derive instance repGenericPolicySummary :: Generic PolicySummary _
instance showPolicySummary :: Show PolicySummary where show = genericShow
instance decodePolicySummary :: Decode PolicySummary where decode = genericDecode options
instance encodePolicySummary :: Encode PolicySummary where encode = genericEncode options

-- | Constructs PolicySummary from required parameters
newPolicySummary :: PolicySummary
newPolicySummary  = PolicySummary { "Arn": Nothing, "AwsManaged": Nothing, "Description": Nothing, "Id": Nothing, "Name": Nothing, "Type": Nothing }

-- | Constructs PolicySummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicySummary' :: ( { "Id" :: Maybe (PolicyId) , "Arn" :: Maybe (PolicyArn) , "Name" :: Maybe (PolicyName) , "Description" :: Maybe (PolicyDescription) , "Type" :: Maybe (PolicyType) , "AwsManaged" :: Maybe (AwsManagedPolicy) } -> {"Id" :: Maybe (PolicyId) , "Arn" :: Maybe (PolicyArn) , "Name" :: Maybe (PolicyName) , "Description" :: Maybe (PolicyDescription) , "Type" :: Maybe (PolicyType) , "AwsManaged" :: Maybe (AwsManagedPolicy) } ) -> PolicySummary
newPolicySummary'  customize = (PolicySummary <<< customize) { "Arn": Nothing, "AwsManaged": Nothing, "Description": Nothing, "Id": Nothing, "Name": Nothing, "Type": Nothing }



newtype PolicyTargetId = PolicyTargetId String
derive instance newtypePolicyTargetId :: Newtype PolicyTargetId _
derive instance repGenericPolicyTargetId :: Generic PolicyTargetId _
instance showPolicyTargetId :: Show PolicyTargetId where show = genericShow
instance decodePolicyTargetId :: Decode PolicyTargetId where decode = genericDecode options
instance encodePolicyTargetId :: Encode PolicyTargetId where encode = genericEncode options



-- | <p>Contains information about a root, OU, or account that a policy is attached to.</p>
newtype PolicyTargetSummary = PolicyTargetSummary 
  { "TargetId" :: Maybe (PolicyTargetId)
  , "Arn" :: Maybe (GenericArn)
  , "Name" :: Maybe (TargetName)
  , "Type" :: Maybe (TargetType)
  }
derive instance newtypePolicyTargetSummary :: Newtype PolicyTargetSummary _
derive instance repGenericPolicyTargetSummary :: Generic PolicyTargetSummary _
instance showPolicyTargetSummary :: Show PolicyTargetSummary where show = genericShow
instance decodePolicyTargetSummary :: Decode PolicyTargetSummary where decode = genericDecode options
instance encodePolicyTargetSummary :: Encode PolicyTargetSummary where encode = genericEncode options

-- | Constructs PolicyTargetSummary from required parameters
newPolicyTargetSummary :: PolicyTargetSummary
newPolicyTargetSummary  = PolicyTargetSummary { "Arn": Nothing, "Name": Nothing, "TargetId": Nothing, "Type": Nothing }

-- | Constructs PolicyTargetSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyTargetSummary' :: ( { "TargetId" :: Maybe (PolicyTargetId) , "Arn" :: Maybe (GenericArn) , "Name" :: Maybe (TargetName) , "Type" :: Maybe (TargetType) } -> {"TargetId" :: Maybe (PolicyTargetId) , "Arn" :: Maybe (GenericArn) , "Name" :: Maybe (TargetName) , "Type" :: Maybe (TargetType) } ) -> PolicyTargetSummary
newPolicyTargetSummary'  customize = (PolicyTargetSummary <<< customize) { "Arn": Nothing, "Name": Nothing, "TargetId": Nothing, "Type": Nothing }



newtype PolicyTargets = PolicyTargets (Array PolicyTargetSummary)
derive instance newtypePolicyTargets :: Newtype PolicyTargets _
derive instance repGenericPolicyTargets :: Generic PolicyTargets _
instance showPolicyTargets :: Show PolicyTargets where show = genericShow
instance decodePolicyTargets :: Decode PolicyTargets where decode = genericDecode options
instance encodePolicyTargets :: Encode PolicyTargets where encode = genericEncode options



newtype PolicyType = PolicyType String
derive instance newtypePolicyType :: Newtype PolicyType _
derive instance repGenericPolicyType :: Generic PolicyType _
instance showPolicyType :: Show PolicyType where show = genericShow
instance decodePolicyType :: Decode PolicyType where decode = genericDecode options
instance encodePolicyType :: Encode PolicyType where encode = genericEncode options



-- | <p>The specified policy type is already enabled in the specified root.</p>
newtype PolicyTypeAlreadyEnabledException = PolicyTypeAlreadyEnabledException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypePolicyTypeAlreadyEnabledException :: Newtype PolicyTypeAlreadyEnabledException _
derive instance repGenericPolicyTypeAlreadyEnabledException :: Generic PolicyTypeAlreadyEnabledException _
instance showPolicyTypeAlreadyEnabledException :: Show PolicyTypeAlreadyEnabledException where show = genericShow
instance decodePolicyTypeAlreadyEnabledException :: Decode PolicyTypeAlreadyEnabledException where decode = genericDecode options
instance encodePolicyTypeAlreadyEnabledException :: Encode PolicyTypeAlreadyEnabledException where encode = genericEncode options

-- | Constructs PolicyTypeAlreadyEnabledException from required parameters
newPolicyTypeAlreadyEnabledException :: PolicyTypeAlreadyEnabledException
newPolicyTypeAlreadyEnabledException  = PolicyTypeAlreadyEnabledException { "Message": Nothing }

-- | Constructs PolicyTypeAlreadyEnabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyTypeAlreadyEnabledException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> PolicyTypeAlreadyEnabledException
newPolicyTypeAlreadyEnabledException'  customize = (PolicyTypeAlreadyEnabledException <<< customize) { "Message": Nothing }



-- | <p>You can't use the specified policy type with the feature set currently enabled for this organization. For example, you can enable service control policies (SCPs) only after you enable all features in the organization. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html#enable_policies_on_root">Enabling and Disabling a Policy Type on a Root</a> in the <i>AWS Organizations User Guide</i>.</p>
newtype PolicyTypeNotAvailableForOrganizationException = PolicyTypeNotAvailableForOrganizationException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypePolicyTypeNotAvailableForOrganizationException :: Newtype PolicyTypeNotAvailableForOrganizationException _
derive instance repGenericPolicyTypeNotAvailableForOrganizationException :: Generic PolicyTypeNotAvailableForOrganizationException _
instance showPolicyTypeNotAvailableForOrganizationException :: Show PolicyTypeNotAvailableForOrganizationException where show = genericShow
instance decodePolicyTypeNotAvailableForOrganizationException :: Decode PolicyTypeNotAvailableForOrganizationException where decode = genericDecode options
instance encodePolicyTypeNotAvailableForOrganizationException :: Encode PolicyTypeNotAvailableForOrganizationException where encode = genericEncode options

-- | Constructs PolicyTypeNotAvailableForOrganizationException from required parameters
newPolicyTypeNotAvailableForOrganizationException :: PolicyTypeNotAvailableForOrganizationException
newPolicyTypeNotAvailableForOrganizationException  = PolicyTypeNotAvailableForOrganizationException { "Message": Nothing }

-- | Constructs PolicyTypeNotAvailableForOrganizationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyTypeNotAvailableForOrganizationException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> PolicyTypeNotAvailableForOrganizationException
newPolicyTypeNotAvailableForOrganizationException'  customize = (PolicyTypeNotAvailableForOrganizationException <<< customize) { "Message": Nothing }



-- | <p>The specified policy type is not currently enabled in this root. You cannot attach policies of the specified type to entities in a root until you enable that type in the root. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p>
newtype PolicyTypeNotEnabledException = PolicyTypeNotEnabledException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypePolicyTypeNotEnabledException :: Newtype PolicyTypeNotEnabledException _
derive instance repGenericPolicyTypeNotEnabledException :: Generic PolicyTypeNotEnabledException _
instance showPolicyTypeNotEnabledException :: Show PolicyTypeNotEnabledException where show = genericShow
instance decodePolicyTypeNotEnabledException :: Decode PolicyTypeNotEnabledException where decode = genericDecode options
instance encodePolicyTypeNotEnabledException :: Encode PolicyTypeNotEnabledException where encode = genericEncode options

-- | Constructs PolicyTypeNotEnabledException from required parameters
newPolicyTypeNotEnabledException :: PolicyTypeNotEnabledException
newPolicyTypeNotEnabledException  = PolicyTypeNotEnabledException { "Message": Nothing }

-- | Constructs PolicyTypeNotEnabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyTypeNotEnabledException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> PolicyTypeNotEnabledException
newPolicyTypeNotEnabledException'  customize = (PolicyTypeNotEnabledException <<< customize) { "Message": Nothing }



newtype PolicyTypeStatus = PolicyTypeStatus String
derive instance newtypePolicyTypeStatus :: Newtype PolicyTypeStatus _
derive instance repGenericPolicyTypeStatus :: Generic PolicyTypeStatus _
instance showPolicyTypeStatus :: Show PolicyTypeStatus where show = genericShow
instance decodePolicyTypeStatus :: Decode PolicyTypeStatus where decode = genericDecode options
instance encodePolicyTypeStatus :: Encode PolicyTypeStatus where encode = genericEncode options



-- | <p>Contains information about a policy type and its status in the associated root.</p>
newtype PolicyTypeSummary = PolicyTypeSummary 
  { "Type" :: Maybe (PolicyType)
  , "Status" :: Maybe (PolicyTypeStatus)
  }
derive instance newtypePolicyTypeSummary :: Newtype PolicyTypeSummary _
derive instance repGenericPolicyTypeSummary :: Generic PolicyTypeSummary _
instance showPolicyTypeSummary :: Show PolicyTypeSummary where show = genericShow
instance decodePolicyTypeSummary :: Decode PolicyTypeSummary where decode = genericDecode options
instance encodePolicyTypeSummary :: Encode PolicyTypeSummary where encode = genericEncode options

-- | Constructs PolicyTypeSummary from required parameters
newPolicyTypeSummary :: PolicyTypeSummary
newPolicyTypeSummary  = PolicyTypeSummary { "Status": Nothing, "Type": Nothing }

-- | Constructs PolicyTypeSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyTypeSummary' :: ( { "Type" :: Maybe (PolicyType) , "Status" :: Maybe (PolicyTypeStatus) } -> {"Type" :: Maybe (PolicyType) , "Status" :: Maybe (PolicyTypeStatus) } ) -> PolicyTypeSummary
newPolicyTypeSummary'  customize = (PolicyTypeSummary <<< customize) { "Status": Nothing, "Type": Nothing }



newtype PolicyTypes = PolicyTypes (Array PolicyTypeSummary)
derive instance newtypePolicyTypes :: Newtype PolicyTypes _
derive instance repGenericPolicyTypes :: Generic PolicyTypes _
instance showPolicyTypes :: Show PolicyTypes where show = genericShow
instance decodePolicyTypes :: Decode PolicyTypes where decode = genericDecode options
instance encodePolicyTypes :: Encode PolicyTypes where encode = genericEncode options



newtype RemoveAccountFromOrganizationRequest = RemoveAccountFromOrganizationRequest 
  { "AccountId" :: (AccountId)
  }
derive instance newtypeRemoveAccountFromOrganizationRequest :: Newtype RemoveAccountFromOrganizationRequest _
derive instance repGenericRemoveAccountFromOrganizationRequest :: Generic RemoveAccountFromOrganizationRequest _
instance showRemoveAccountFromOrganizationRequest :: Show RemoveAccountFromOrganizationRequest where show = genericShow
instance decodeRemoveAccountFromOrganizationRequest :: Decode RemoveAccountFromOrganizationRequest where decode = genericDecode options
instance encodeRemoveAccountFromOrganizationRequest :: Encode RemoveAccountFromOrganizationRequest where encode = genericEncode options

-- | Constructs RemoveAccountFromOrganizationRequest from required parameters
newRemoveAccountFromOrganizationRequest :: AccountId -> RemoveAccountFromOrganizationRequest
newRemoveAccountFromOrganizationRequest _AccountId = RemoveAccountFromOrganizationRequest { "AccountId": _AccountId }

-- | Constructs RemoveAccountFromOrganizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRemoveAccountFromOrganizationRequest' :: AccountId -> ( { "AccountId" :: (AccountId) } -> {"AccountId" :: (AccountId) } ) -> RemoveAccountFromOrganizationRequest
newRemoveAccountFromOrganizationRequest' _AccountId customize = (RemoveAccountFromOrganizationRequest <<< customize) { "AccountId": _AccountId }



newtype RoleName = RoleName String
derive instance newtypeRoleName :: Newtype RoleName _
derive instance repGenericRoleName :: Generic RoleName _
instance showRoleName :: Show RoleName where show = genericShow
instance decodeRoleName :: Decode RoleName where decode = genericDecode options
instance encodeRoleName :: Encode RoleName where encode = genericEncode options



-- | <p>Contains details about a root. A root is a top-level parent node in the hierarchy of an organization that can contain organizational units (OUs) and accounts. Every root contains every AWS account in the organization. Each root enables the accounts to be organized in a different way and to have different policy types enabled for use in that root.</p>
newtype Root = Root 
  { "Id" :: Maybe (RootId)
  , "Arn" :: Maybe (RootArn)
  , "Name" :: Maybe (RootName)
  , "PolicyTypes" :: Maybe (PolicyTypes)
  }
derive instance newtypeRoot :: Newtype Root _
derive instance repGenericRoot :: Generic Root _
instance showRoot :: Show Root where show = genericShow
instance decodeRoot :: Decode Root where decode = genericDecode options
instance encodeRoot :: Encode Root where encode = genericEncode options

-- | Constructs Root from required parameters
newRoot :: Root
newRoot  = Root { "Arn": Nothing, "Id": Nothing, "Name": Nothing, "PolicyTypes": Nothing }

-- | Constructs Root's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRoot' :: ( { "Id" :: Maybe (RootId) , "Arn" :: Maybe (RootArn) , "Name" :: Maybe (RootName) , "PolicyTypes" :: Maybe (PolicyTypes) } -> {"Id" :: Maybe (RootId) , "Arn" :: Maybe (RootArn) , "Name" :: Maybe (RootName) , "PolicyTypes" :: Maybe (PolicyTypes) } ) -> Root
newRoot'  customize = (Root <<< customize) { "Arn": Nothing, "Id": Nothing, "Name": Nothing, "PolicyTypes": Nothing }



newtype RootArn = RootArn String
derive instance newtypeRootArn :: Newtype RootArn _
derive instance repGenericRootArn :: Generic RootArn _
instance showRootArn :: Show RootArn where show = genericShow
instance decodeRootArn :: Decode RootArn where decode = genericDecode options
instance encodeRootArn :: Encode RootArn where encode = genericEncode options



newtype RootId = RootId String
derive instance newtypeRootId :: Newtype RootId _
derive instance repGenericRootId :: Generic RootId _
instance showRootId :: Show RootId where show = genericShow
instance decodeRootId :: Decode RootId where decode = genericDecode options
instance encodeRootId :: Encode RootId where encode = genericEncode options



newtype RootName = RootName String
derive instance newtypeRootName :: Newtype RootName _
derive instance repGenericRootName :: Generic RootName _
instance showRootName :: Show RootName where show = genericShow
instance decodeRootName :: Decode RootName where decode = genericDecode options
instance encodeRootName :: Encode RootName where encode = genericEncode options



-- | <p>We can't find a root with the RootId that you specified.</p>
newtype RootNotFoundException = RootNotFoundException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeRootNotFoundException :: Newtype RootNotFoundException _
derive instance repGenericRootNotFoundException :: Generic RootNotFoundException _
instance showRootNotFoundException :: Show RootNotFoundException where show = genericShow
instance decodeRootNotFoundException :: Decode RootNotFoundException where decode = genericDecode options
instance encodeRootNotFoundException :: Encode RootNotFoundException where encode = genericEncode options

-- | Constructs RootNotFoundException from required parameters
newRootNotFoundException :: RootNotFoundException
newRootNotFoundException  = RootNotFoundException { "Message": Nothing }

-- | Constructs RootNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRootNotFoundException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> RootNotFoundException
newRootNotFoundException'  customize = (RootNotFoundException <<< customize) { "Message": Nothing }



newtype Roots = Roots (Array Root)
derive instance newtypeRoots :: Newtype Roots _
derive instance repGenericRoots :: Generic Roots _
instance showRoots :: Show Roots where show = genericShow
instance decodeRoots :: Decode Roots where decode = genericDecode options
instance encodeRoots :: Encode Roots where encode = genericEncode options



-- | <p>AWS Organizations can't complete your request because of an internal service error. Try again later.</p>
newtype ServiceException = ServiceException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeServiceException :: Newtype ServiceException _
derive instance repGenericServiceException :: Generic ServiceException _
instance showServiceException :: Show ServiceException where show = genericShow
instance decodeServiceException :: Decode ServiceException where decode = genericDecode options
instance encodeServiceException :: Encode ServiceException where encode = genericEncode options

-- | Constructs ServiceException from required parameters
newServiceException :: ServiceException
newServiceException  = ServiceException { "Message": Nothing }

-- | Constructs ServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> ServiceException
newServiceException'  customize = (ServiceException <<< customize) { "Message": Nothing }



newtype ServicePrincipal = ServicePrincipal String
derive instance newtypeServicePrincipal :: Newtype ServicePrincipal _
derive instance repGenericServicePrincipal :: Generic ServicePrincipal _
instance showServicePrincipal :: Show ServicePrincipal where show = genericShow
instance decodeServicePrincipal :: Decode ServicePrincipal where decode = genericDecode options
instance encodeServicePrincipal :: Encode ServicePrincipal where encode = genericEncode options



-- | <p>We can't find a source root or OU with the ParentId that you specified.</p>
newtype SourceParentNotFoundException = SourceParentNotFoundException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeSourceParentNotFoundException :: Newtype SourceParentNotFoundException _
derive instance repGenericSourceParentNotFoundException :: Generic SourceParentNotFoundException _
instance showSourceParentNotFoundException :: Show SourceParentNotFoundException where show = genericShow
instance decodeSourceParentNotFoundException :: Decode SourceParentNotFoundException where decode = genericDecode options
instance encodeSourceParentNotFoundException :: Encode SourceParentNotFoundException where encode = genericEncode options

-- | Constructs SourceParentNotFoundException from required parameters
newSourceParentNotFoundException :: SourceParentNotFoundException
newSourceParentNotFoundException  = SourceParentNotFoundException { "Message": Nothing }

-- | Constructs SourceParentNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSourceParentNotFoundException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> SourceParentNotFoundException
newSourceParentNotFoundException'  customize = (SourceParentNotFoundException <<< customize) { "Message": Nothing }



newtype TargetName = TargetName String
derive instance newtypeTargetName :: Newtype TargetName _
derive instance repGenericTargetName :: Generic TargetName _
instance showTargetName :: Show TargetName where show = genericShow
instance decodeTargetName :: Decode TargetName where decode = genericDecode options
instance encodeTargetName :: Encode TargetName where encode = genericEncode options



-- | <p>We can't find a root, OU, or account with the TargetId that you specified.</p>
newtype TargetNotFoundException = TargetNotFoundException 
  { "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeTargetNotFoundException :: Newtype TargetNotFoundException _
derive instance repGenericTargetNotFoundException :: Generic TargetNotFoundException _
instance showTargetNotFoundException :: Show TargetNotFoundException where show = genericShow
instance decodeTargetNotFoundException :: Decode TargetNotFoundException where decode = genericDecode options
instance encodeTargetNotFoundException :: Encode TargetNotFoundException where encode = genericEncode options

-- | Constructs TargetNotFoundException from required parameters
newTargetNotFoundException :: TargetNotFoundException
newTargetNotFoundException  = TargetNotFoundException { "Message": Nothing }

-- | Constructs TargetNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTargetNotFoundException' :: ( { "Message" :: Maybe (ExceptionMessage) } -> {"Message" :: Maybe (ExceptionMessage) } ) -> TargetNotFoundException
newTargetNotFoundException'  customize = (TargetNotFoundException <<< customize) { "Message": Nothing }



newtype TargetType = TargetType String
derive instance newtypeTargetType :: Newtype TargetType _
derive instance repGenericTargetType :: Generic TargetType _
instance showTargetType :: Show TargetType where show = genericShow
instance decodeTargetType :: Decode TargetType where decode = genericDecode options
instance encodeTargetType :: Encode TargetType where encode = genericEncode options



-- | <p>You've sent too many requests in too short a period of time. The limit helps protect against denial-of-service attacks. Try again later.</p>
newtype TooManyRequestsException = TooManyRequestsException 
  { "Type" :: Maybe (ExceptionType)
  , "Message" :: Maybe (ExceptionMessage)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where decode = genericDecode options
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where encode = genericEncode options

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "Message": Nothing, "Type": Nothing }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "Type" :: Maybe (ExceptionType) , "Message" :: Maybe (ExceptionMessage) } -> {"Type" :: Maybe (ExceptionType) , "Message" :: Maybe (ExceptionMessage) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "Message": Nothing, "Type": Nothing }



newtype UpdateOrganizationalUnitRequest = UpdateOrganizationalUnitRequest 
  { "OrganizationalUnitId" :: (OrganizationalUnitId)
  , "Name" :: Maybe (OrganizationalUnitName)
  }
derive instance newtypeUpdateOrganizationalUnitRequest :: Newtype UpdateOrganizationalUnitRequest _
derive instance repGenericUpdateOrganizationalUnitRequest :: Generic UpdateOrganizationalUnitRequest _
instance showUpdateOrganizationalUnitRequest :: Show UpdateOrganizationalUnitRequest where show = genericShow
instance decodeUpdateOrganizationalUnitRequest :: Decode UpdateOrganizationalUnitRequest where decode = genericDecode options
instance encodeUpdateOrganizationalUnitRequest :: Encode UpdateOrganizationalUnitRequest where encode = genericEncode options

-- | Constructs UpdateOrganizationalUnitRequest from required parameters
newUpdateOrganizationalUnitRequest :: OrganizationalUnitId -> UpdateOrganizationalUnitRequest
newUpdateOrganizationalUnitRequest _OrganizationalUnitId = UpdateOrganizationalUnitRequest { "OrganizationalUnitId": _OrganizationalUnitId, "Name": Nothing }

-- | Constructs UpdateOrganizationalUnitRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateOrganizationalUnitRequest' :: OrganizationalUnitId -> ( { "OrganizationalUnitId" :: (OrganizationalUnitId) , "Name" :: Maybe (OrganizationalUnitName) } -> {"OrganizationalUnitId" :: (OrganizationalUnitId) , "Name" :: Maybe (OrganizationalUnitName) } ) -> UpdateOrganizationalUnitRequest
newUpdateOrganizationalUnitRequest' _OrganizationalUnitId customize = (UpdateOrganizationalUnitRequest <<< customize) { "OrganizationalUnitId": _OrganizationalUnitId, "Name": Nothing }



newtype UpdateOrganizationalUnitResponse = UpdateOrganizationalUnitResponse 
  { "OrganizationalUnit" :: Maybe (OrganizationalUnit)
  }
derive instance newtypeUpdateOrganizationalUnitResponse :: Newtype UpdateOrganizationalUnitResponse _
derive instance repGenericUpdateOrganizationalUnitResponse :: Generic UpdateOrganizationalUnitResponse _
instance showUpdateOrganizationalUnitResponse :: Show UpdateOrganizationalUnitResponse where show = genericShow
instance decodeUpdateOrganizationalUnitResponse :: Decode UpdateOrganizationalUnitResponse where decode = genericDecode options
instance encodeUpdateOrganizationalUnitResponse :: Encode UpdateOrganizationalUnitResponse where encode = genericEncode options

-- | Constructs UpdateOrganizationalUnitResponse from required parameters
newUpdateOrganizationalUnitResponse :: UpdateOrganizationalUnitResponse
newUpdateOrganizationalUnitResponse  = UpdateOrganizationalUnitResponse { "OrganizationalUnit": Nothing }

-- | Constructs UpdateOrganizationalUnitResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateOrganizationalUnitResponse' :: ( { "OrganizationalUnit" :: Maybe (OrganizationalUnit) } -> {"OrganizationalUnit" :: Maybe (OrganizationalUnit) } ) -> UpdateOrganizationalUnitResponse
newUpdateOrganizationalUnitResponse'  customize = (UpdateOrganizationalUnitResponse <<< customize) { "OrganizationalUnit": Nothing }



newtype UpdatePolicyRequest = UpdatePolicyRequest 
  { "PolicyId" :: (PolicyId)
  , "Name" :: Maybe (PolicyName)
  , "Description" :: Maybe (PolicyDescription)
  , "Content" :: Maybe (PolicyContent)
  }
derive instance newtypeUpdatePolicyRequest :: Newtype UpdatePolicyRequest _
derive instance repGenericUpdatePolicyRequest :: Generic UpdatePolicyRequest _
instance showUpdatePolicyRequest :: Show UpdatePolicyRequest where show = genericShow
instance decodeUpdatePolicyRequest :: Decode UpdatePolicyRequest where decode = genericDecode options
instance encodeUpdatePolicyRequest :: Encode UpdatePolicyRequest where encode = genericEncode options

-- | Constructs UpdatePolicyRequest from required parameters
newUpdatePolicyRequest :: PolicyId -> UpdatePolicyRequest
newUpdatePolicyRequest _PolicyId = UpdatePolicyRequest { "PolicyId": _PolicyId, "Content": Nothing, "Description": Nothing, "Name": Nothing }

-- | Constructs UpdatePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdatePolicyRequest' :: PolicyId -> ( { "PolicyId" :: (PolicyId) , "Name" :: Maybe (PolicyName) , "Description" :: Maybe (PolicyDescription) , "Content" :: Maybe (PolicyContent) } -> {"PolicyId" :: (PolicyId) , "Name" :: Maybe (PolicyName) , "Description" :: Maybe (PolicyDescription) , "Content" :: Maybe (PolicyContent) } ) -> UpdatePolicyRequest
newUpdatePolicyRequest' _PolicyId customize = (UpdatePolicyRequest <<< customize) { "PolicyId": _PolicyId, "Content": Nothing, "Description": Nothing, "Name": Nothing }



newtype UpdatePolicyResponse = UpdatePolicyResponse 
  { "Policy" :: Maybe (Policy)
  }
derive instance newtypeUpdatePolicyResponse :: Newtype UpdatePolicyResponse _
derive instance repGenericUpdatePolicyResponse :: Generic UpdatePolicyResponse _
instance showUpdatePolicyResponse :: Show UpdatePolicyResponse where show = genericShow
instance decodeUpdatePolicyResponse :: Decode UpdatePolicyResponse where decode = genericDecode options
instance encodeUpdatePolicyResponse :: Encode UpdatePolicyResponse where encode = genericEncode options

-- | Constructs UpdatePolicyResponse from required parameters
newUpdatePolicyResponse :: UpdatePolicyResponse
newUpdatePolicyResponse  = UpdatePolicyResponse { "Policy": Nothing }

-- | Constructs UpdatePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdatePolicyResponse' :: ( { "Policy" :: Maybe (Policy) } -> {"Policy" :: Maybe (Policy) } ) -> UpdatePolicyResponse
newUpdatePolicyResponse'  customize = (UpdatePolicyResponse <<< customize) { "Policy": Nothing }

