

-- | <fullname>AWS Organizations API Reference</fullname> <p>AWS Organizations is a web service that enables you to consolidate your multiple AWS accounts into an <i>organization</i> and centrally manage your accounts and their resources.</p> <p>This guide provides descriptions of the Organizations API. For more information about using this service, see the <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html">AWS Organizations User Guide</a>.</p> <p> <b>API Version</b> </p> <p>This version of the Organizations API Reference documents the Organizations API version 2016-11-28.</p> <note> <p>As an alternative to using the API directly, you can use one of the AWS SDKs, which consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, and more). The SDKs provide a convenient way to create programmatic access to AWS Organizations. For example, the SDKs take care of cryptographically signing requests, managing errors, and retrying requests automatically. For more information about the AWS SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p> </note> <p>We recommend that you use the AWS SDKs to make programmatic API calls to Organizations. However, you also can use the Organizations Query API to make direct calls to the Organizations web service. To learn more about the Organizations Query API, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_query-requests.html">Making Query Requests</a> in the <i>AWS Organizations User Guide</i>. Organizations supports GET and POST requests for all actions. That is, the API does not require you to use GET for some actions and POST for others. However, GET requests are subject to the limitation size of a URL. Therefore, for operations that require larger sizes, use a POST request.</p> <p> <b>Signing Requests</b> </p> <p>When you send HTTP requests to AWS, you must sign the requests so that AWS can identify who sent them. You sign requests with your AWS access key, which consists of an access key ID and a secret access key. We strongly recommend that you do not create an access key for your root account. Anyone who has the access key for your root account has unrestricted access to all the resources in your account. Instead, create an access key for an IAM user account that has administrative privileges. As another option, use AWS Security Token Service to generate temporary security credentials, and use those credentials to sign requests. </p> <p>To sign requests, we recommend that you use <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>. If you have an existing application that uses Signature Version 2, you do not have to update it to use Signature Version 4. However, some operations now require Signature Version 4. The documentation for operations that require version 4 indicate this requirement. </p> <p>When you use the AWS Command Line Interface (AWS CLI) or one of the AWS SDKs to make requests to AWS, these tools automatically sign the requests for you with the access key that you specify when you configure the tools.</p> <p>In this release, each organization can have only one root. In a future release, a single organization will support multiple roots.</p> <p> <b>Support and Feedback for AWS Organizations</b> </p> <p>We welcome your feedback. Send your comments to <a href="mailto:feedback-awsorganizations@amazon.com">feedback-awsorganizations@amazon.com</a> or post your feedback and questions in the <a href="http://forums.aws.amazon.com/forum.jspa?forumID=219">AWS Organizations support forum</a>. For more information about the AWS support forums, see <a href="http://forums.aws.amazon.com/help.jspa">Forums Help</a>.</p> <p> <b>Endpoint to Call When Using the CLI or the AWS API</b> </p> <p>For the current release of Organizations, you must specify the <code>us-east-1</code> region for all AWS API and CLI calls. You can do this in the CLI by using these parameters and commands:</p> <ul> <li> <p>Use the following parameter with each command to specify both the endpoint and its region:</p> <p> <code>--endpoint-url https://organizations.us-east-1.amazonaws.com</code> </p> </li> <li> <p>Use the default endpoint, but configure your default region with this command:</p> <p> <code>aws configure set default.region us-east-1</code> </p> </li> <li> <p>Use the following parameter with each command to specify the endpoint:</p> <p> <code>--region us-east-1</code> </p> </li> </ul> <p>For the various SDKs used to call the APIs, see the documentation for the SDK of interest to learn how to direct the requests to a specific endpoint. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#sts_region">Regions and Endpoints</a> in the <i>AWS General Reference</i>. </p> <p> <b>How examples are presented</b> </p> <p>The JSON returned by the AWS Organizations service as response to your requests is returned as a single long string without line breaks or formatting whitespace. Both line breaks and whitespace are included in the examples in this guide to improve readability. When example input parameters also would result in long strings that would extend beyond the screen, we insert line breaks to enhance readability. You should always submit the input as a single JSON text string.</p> <p> <b>Recording API Requests</b> </p> <p>AWS Organizations supports AWS CloudTrail, a service that records AWS API calls for your AWS account and delivers log files to an Amazon S3 bucket. By using information collected by AWS CloudTrail, you can determine which requests were successfully made to Organizations, who made the request, when it was made, and so on. For more about AWS Organizations and its support for AWS CloudTrail, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_cloudtrail-integration.html">Logging AWS Organizations Events with AWS CloudTrail</a> in the <i>AWS Organizations User Guide</i>. To learn more about CloudTrail, including how to turn it on and find your log files, see the <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html">AWS CloudTrail User Guide</a>.</p>
module AWS.Organizations where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)
import Data.Foreign as Foreign
import Data.Foreign.NullOrUndefined (NullOrUndefined(..))
import Data.Foreign.Class (class Decode, class Encode)
import Data.Foreign.Generic (defaultOptions, genericDecode, genericEncode)
import Data.Foreign.NullOrUndefined as NullOrUndefined
import Data.Generic.Rep (class Generic)
import Data.Generic.Rep.Show (genericShow)
import Data.Maybe (Maybe(..))
import Data.Newtype (class Newtype)
import Data.StrMap as StrMap

import AWS.Request as Request
import AWS.Request.Types as Types

serviceName = "Organizations" :: String


-- | <p>Sends a response to the originator of a handshake agreeing to the action proposed by the handshake request. </p> <p>This operation can be called only by the following principals when they also have the relevant IAM permissions:</p> <ul> <li> <p> <b>Invitation to join</b> or <b>Approve all features request</b> handshakes: only a principal from the member account. </p> <p>The user who calls the API for an invitation to join must have the <code>organizations:AcceptHandshake</code> permission. If you enabled all features in the organization, then the user must also have the <code>iam:CreateServiceLinkedRole</code> permission so that Organizations can create the required service-linked role named <i>OrgsServiceLinkedRoleName</i>. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles">AWS Organizations and Service-Linked Roles</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p> <b>Enable all features final confirmation</b> handshake: only a principal from the master account.</p> <p>For more information about invitations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html">Inviting an AWS Account to Join Your Organization</a> in the <i>AWS Organizations User Guide</i>. For more information about requests to enable all features in the organization, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul> <p>After you accept a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.</p>
acceptHandshake :: forall eff. AcceptHandshakeRequest -> Aff (exception :: EXCEPTION | eff) AcceptHandshakeResponse
acceptHandshake = Request.request serviceName "acceptHandshake" 


-- | <p>Attaches a policy to a root, an organizational unit, or an individual account. How the policy affects accounts depends on the type of policy:</p> <ul> <li> <p> <b>Service control policy (SCP)</b> - An SCP specifies what permissions can be delegated to users in affected member accounts. The scope of influence for a policy depends on what you attach the policy to:</p> <ul> <li> <p>If you attach an SCP to a root, it affects all accounts in the organization.</p> </li> <li> <p>If you attach an SCP to an OU, it affects all accounts in that OU and in any child OUs.</p> </li> <li> <p>If you attach the policy directly to an account, then it affects only that account.</p> </li> </ul> <p>SCPs essentially are permission "filters". When you attach one SCP to a higher level root or OU, and you also attach a different SCP to a child OU or to an account, the child policy can further restrict only the permissions that pass through the parent filter and are available to the child. An SCP that is attached to a child cannot grant a permission that is not already granted by the parent. For example, imagine that the parent SCP allows permissions A, B, C, D, and E. The child SCP allows C, D, E, F, and G. The result is that the accounts affected by the child SCP are allowed to use only C, D, and E. They cannot use A or B because they were filtered out by the child OU. They also cannot use F and G because they were filtered out by the parent OU. They cannot be granted back by the child SCP; child SCPs can only filter the permissions they receive from the parent SCP.</p> <p>AWS Organizations attaches a default SCP named <code>"FullAWSAccess</code> to every root, OU, and account. This default SCP allows all services and actions, enabling any new child OU or account to inherit the permissions of the parent root or OU. If you detach the default policy, you must replace it with a policy that specifies the permissions that you want to allow in that OU or account.</p> <p>For more information about how Organizations policies permissions work, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">Using Service Control Policies</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul> <p>This operation can be called only from the organization's master account.</p>
attachPolicy :: forall eff. AttachPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
attachPolicy = Request.request serviceName "attachPolicy" 


-- | <p>Cancels a handshake. Canceling a handshake sets the handshake state to <code>CANCELED</code>. </p> <p>This operation can be called only from the account that originated the handshake. The recipient of the handshake can't cancel it, but can use <a>DeclineHandshake</a> instead. After a handshake is canceled, the recipient can no longer respond to that handshake.</p> <p>After you cancel a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.</p>
cancelHandshake :: forall eff. CancelHandshakeRequest -> Aff (exception :: EXCEPTION | eff) CancelHandshakeResponse
cancelHandshake = Request.request serviceName "cancelHandshake" 


-- | <p>Creates an AWS account that is automatically a member of the organization whose credentials made the request. This is an asynchronous request that AWS performs in the background. If you want to check the status of the request later, you need the <code>OperationId</code> response element from this operation to provide as a parameter to the <a>DescribeCreateAccountStatus</a> operation.</p> <p>The user who calls the API for an invitation to join must have the <code>organizations:CreateAccount</code> permission. If you enabled all features in the organization, then the user must also have the <code>iam:CreateServiceLinkedRole</code> permission so that Organizations can create the required service-linked role named <i>OrgsServiceLinkedRoleName</i>. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles">AWS Organizations and Service-Linked Roles</a> in the <i>AWS Organizations User Guide</i>.</p> <p>The user in the master account who calls this API must also have the <code>iam:CreateRole</code> permission because AWS Organizations preconfigures the new member account with a role (named <code>OrganizationAccountAccessRole</code> by default) that grants users in the master account administrator permissions in the new member account. Principals in the master account can assume the role. AWS Organizations clones the company name and address information for the new account from the organization's master account.</p> <p>This operation can be called only from the organization's master account.</p> <p>For more information about creating accounts, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html">Creating an AWS Account in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p> <important> <p>When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required for the account to operate as a standalone account, such as a payment method and signing the End User Licence Agreement (EULA) is <i>not</i> automatically collected. If you must remove an account from your organization later, you can do so only after you provide the missing information. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </important> <note> <p>When you create a member account with this operation, you can choose whether to create the account with the <b>IAM User and Role Access to Billing Information</b> switch enabled. If you enable it, IAM users and roles that have appropriate permissions can view billing information for the account. If you disable this, then only the account root user can access billing information. For information about how to disable this for an account, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html">Granting Access to Your Billing Information and Tools</a>.</p> </note> <p>This operation can be called only from the organization's master account.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important>
createAccount :: forall eff. CreateAccountRequest -> Aff (exception :: EXCEPTION | eff) CreateAccountResponse
createAccount = Request.request serviceName "createAccount" 


-- | <p>Creates an AWS organization. The account whose user is calling the CreateOrganization operation automatically becomes the <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_getting-started_concepts.html#account">master account</a> of the new organization.</p> <p>This operation must be called using credentials from the account that is to become the new organization's master account. The principal must also have the relevant IAM permissions.</p> <p>By default (or if you set the <code>FeatureSet</code> parameter to <code>ALL</code>), the new organization is created with all features enabled and service control policies automatically enabled in the root. If you instead choose to create the organization supporting only the consolidated billing features by setting the <code>FeatureSet</code> parameter to <code>CONSOLIDATED_BILLING"</code>, then no policy types are enabled by default and you cannot use organization policies.</p>
createOrganization :: forall eff. CreateOrganizationRequest -> Aff (exception :: EXCEPTION | eff) CreateOrganizationResponse
createOrganization = Request.request serviceName "createOrganization" 


-- | <p>Creates an organizational unit (OU) within a root or parent OU. An OU is a container for accounts that enables you to organize your accounts to apply policies according to your business requirements. The number of levels deep that you can nest OUs is dependent upon the policy types enabled for that root. For service control policies, the limit is five. </p> <p>For more information about OUs, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html">Managing Organizational Units</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account.</p>
createOrganizationalUnit :: forall eff. CreateOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) CreateOrganizationalUnitResponse
createOrganizationalUnit = Request.request serviceName "createOrganizationalUnit" 


-- | <p>Creates a policy of a specified type that you can attach to a root, an organizational unit (OU), or an individual AWS account.</p> <p>For more information about policies and their use, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html">Managing Organization Policies</a>.</p> <p>This operation can be called only from the organization's master account.</p>
createPolicy :: forall eff. CreatePolicyRequest -> Aff (exception :: EXCEPTION | eff) CreatePolicyResponse
createPolicy = Request.request serviceName "createPolicy" 


-- | <p>Declines a handshake request. This sets the handshake state to <code>DECLINED</code> and effectively deactivates the request.</p> <p>This operation can be called only from the account that received the handshake. The originator of the handshake can use <a>CancelHandshake</a> instead. The originator can't reactivate a declined request, but can re-initiate the process with a new handshake request.</p> <p>After you decline a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.</p>
declineHandshake :: forall eff. DeclineHandshakeRequest -> Aff (exception :: EXCEPTION | eff) DeclineHandshakeResponse
declineHandshake = Request.request serviceName "declineHandshake" 


-- | <p>Deletes the organization. You can delete an organization only by using credentials from the master account. The organization must be empty of member accounts, OUs, and policies.</p>
deleteOrganization :: forall eff.  Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteOrganization = Request.request serviceName "deleteOrganization" (Types.NoInput unit)


-- | <p>Deletes an organizational unit from a root or another OU. You must first remove all accounts and child OUs from the OU that you want to delete.</p> <p>This operation can be called only from the organization's master account.</p>
deleteOrganizationalUnit :: forall eff. DeleteOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deleteOrganizationalUnit = Request.request serviceName "deleteOrganizationalUnit" 


-- | <p>Deletes the specified policy from your organization. Before you perform this operation, you must first detach the policy from all OUs, roots, and accounts.</p> <p>This operation can be called only from the organization's master account.</p>
deletePolicy :: forall eff. DeletePolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
deletePolicy = Request.request serviceName "deletePolicy" 


-- | <p>Retrieves Organizations-related information about the specified account.</p> <p>This operation can be called only from the organization's master account.</p>
describeAccount :: forall eff. DescribeAccountRequest -> Aff (exception :: EXCEPTION | eff) DescribeAccountResponse
describeAccount = Request.request serviceName "describeAccount" 


-- | <p>Retrieves the current status of an asynchronous request to create an account.</p> <p>This operation can be called only from the organization's master account.</p>
describeCreateAccountStatus :: forall eff. DescribeCreateAccountStatusRequest -> Aff (exception :: EXCEPTION | eff) DescribeCreateAccountStatusResponse
describeCreateAccountStatus = Request.request serviceName "describeCreateAccountStatus" 


-- | <p>Retrieves information about a previously requested handshake. The handshake ID comes from the response to the original <a>InviteAccountToOrganization</a> operation that generated the handshake.</p> <p>You can access handshakes that are ACCEPTED, DECLINED, or CANCELED for only 30 days after they change to that state. They are then deleted and no longer accessible.</p> <p>This operation can be called from any account in the organization.</p>
describeHandshake :: forall eff. DescribeHandshakeRequest -> Aff (exception :: EXCEPTION | eff) DescribeHandshakeResponse
describeHandshake = Request.request serviceName "describeHandshake" 


-- | <p>Retrieves information about the organization that the user's account belongs to.</p> <p>This operation can be called from any account in the organization.</p>
describeOrganization :: forall eff.  Aff (exception :: EXCEPTION | eff) DescribeOrganizationResponse
describeOrganization = Request.request serviceName "describeOrganization" (Types.NoInput unit)


-- | <p>Retrieves information about an organizational unit (OU).</p> <p>This operation can be called only from the organization's master account.</p>
describeOrganizationalUnit :: forall eff. DescribeOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) DescribeOrganizationalUnitResponse
describeOrganizationalUnit = Request.request serviceName "describeOrganizationalUnit" 


-- | <p>Retrieves information about a policy.</p> <p>This operation can be called only from the organization's master account.</p>
describePolicy :: forall eff. DescribePolicyRequest -> Aff (exception :: EXCEPTION | eff) DescribePolicyResponse
describePolicy = Request.request serviceName "describePolicy" 


-- | <p>Detaches a policy from a target root, organizational unit, or account. If the policy being detached is a service control policy (SCP), the changes to permissions for IAM users and roles in affected accounts are immediate.</p> <p> <b>Note:</b> Every root, OU, and account must have at least one SCP attached. If you want to replace the default <code>FullAWSAccess</code> policy with one that limits the permissions that can be delegated, then you must attach the replacement policy before you can remove the default one. This is the authorization strategy of <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_about-scps.html#orgs_policies_whitelist">whitelisting</a>. If you instead attach a second SCP and leave the <code>FullAWSAccess</code> SCP still attached, and specify <code>"Effect": "Deny"</code> in the second SCP to override the <code>"Effect": "Allow"</code> in the <code>FullAWSAccess</code> policy (or any other attached SCP), then you are using the authorization strategy of <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_about-scps.html#orgs_policies_blacklist">blacklisting</a>. </p> <p>This operation can be called only from the organization's master account.</p>
detachPolicy :: forall eff. DetachPolicyRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
detachPolicy = Request.request serviceName "detachPolicy" 


-- | <p>Disables the integration of an AWS service (the service that is specified by <code>ServicePrincipal</code>) with AWS Organizations. When you disable integration, the specified service no longer can create a <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked role</a> in <i>new</i> accounts in your organization. This means the service can't perform operations on your behalf on any new accounts in your organization. The service can still perform operations in older accounts until the service completes its clean-up from AWS Organizations.</p> <p/> <important> <p>We recommend that you disable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the other service is aware that it can clean up any resources that are required only for the integration. How the service cleans up its resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service.</p> </important> <p>After you perform the <code>DisableAWSServiceAccess</code> operation, the specified service can no longer perform operations in your organization's accounts unless the operations are explicitly permitted by the IAM policies that are attached to your roles. </p> <p>For more information about integrating other services with AWS Organizations, including the list of services that work with Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account.</p>
disableAWSServiceAccess :: forall eff. DisableAWSServiceAccessRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
disableAWSServiceAccess = Request.request serviceName "disableAWSServiceAccess" 


-- | <p>Disables an organizational control policy type in a root. A policy of a certain type can be attached to entities in a root only if that type is enabled in the root. After you perform this operation, you no longer can attach policies of the specified type to that root or to any OU or account in that root. You can undo this by using the <a>EnablePolicyType</a> operation.</p> <p>This operation can be called only from the organization's master account.</p>
disablePolicyType :: forall eff. DisablePolicyTypeRequest -> Aff (exception :: EXCEPTION | eff) DisablePolicyTypeResponse
disablePolicyType = Request.request serviceName "disablePolicyType" 


-- | <p>Enables the integration of an AWS service (the service that is specified by <code>ServicePrincipal</code>) with AWS Organizations. When you enable integration, you allow the specified service to create a <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked role</a> in all the accounts in your organization. This allows the service to perform operations on your behalf in your organization and its accounts.</p> <important> <p>We recommend that you enable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the service is aware that it can create the resources that are required for the integration. How the service creates those resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service.</p> </important> <p>For more information about enabling services to integrate with AWS Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account and only if the organization has <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">enabled all features</a>.</p>
enableAWSServiceAccess :: forall eff. EnableAWSServiceAccessRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
enableAWSServiceAccess = Request.request serviceName "enableAWSServiceAccess" 


-- | <p>Enables all features in an organization. This enables the use of organization policies that can restrict the services and actions that can be called in each account. Until you enable all features, you have access only to consolidated billing, and you can't use any of the advanced account administration features that AWS Organizations supports. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p> <important> <p>This operation is required only for organizations that were created explicitly with only the consolidated billing features enabled, or that were migrated from a Consolidated Billing account family to Organizations. Calling this operation sends a handshake to every invited account in the organization. The feature set change can be finalized and the additional features enabled only after all administrators in the invited accounts approve the change by accepting the handshake.</p> </important> <p>After all invited member accounts accept the handshake, you finalize the feature set change by accepting the handshake that contains <code>"Action": "ENABLE_ALL_FEATURES"</code>. This completes the change.</p> <p>After you enable all features in your organization, the master account in the organization can apply policies on all member accounts. These policies can restrict what users and even administrators in those accounts can do. The master account can apply policies that prevent accounts from leaving the organization. Ensure that your account administrators are aware of this.</p> <p>This operation can be called only from the organization's master account. </p>
enableAllFeatures :: forall eff. EnableAllFeaturesRequest -> Aff (exception :: EXCEPTION | eff) EnableAllFeaturesResponse
enableAllFeatures = Request.request serviceName "enableAllFeatures" 


-- | <p>Enables a policy type in a root. After you enable a policy type in a root, you can attach policies of that type to the root, any OU, or account in that root. You can undo this by using the <a>DisablePolicyType</a> operation.</p> <p>This operation can be called only from the organization's master account.</p>
enablePolicyType :: forall eff. EnablePolicyTypeRequest -> Aff (exception :: EXCEPTION | eff) EnablePolicyTypeResponse
enablePolicyType = Request.request serviceName "enablePolicyType" 


-- | <p>Sends an invitation to another account to join your organization as a member account. Organizations sends email on your behalf to the email address that is associated with the other account's owner. The invitation is implemented as a <a>Handshake</a> whose details are in the response.</p> <important> <p>You can invite AWS accounts only from the same seller as the master account. For example, if your organization's master account was created by Amazon Internet Services Pvt. Ltd (AISPL), an AWS seller in India, then you can only invite other AISPL accounts to your organization. You can't combine accounts from AISPL and AWS, or any other AWS seller. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilliing-India.html">Consolidated Billing in India</a>.</p> </important> <p>This operation can be called only from the organization's master account.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important>
inviteAccountToOrganization :: forall eff. InviteAccountToOrganizationRequest -> Aff (exception :: EXCEPTION | eff) InviteAccountToOrganizationResponse
inviteAccountToOrganization = Request.request serviceName "inviteAccountToOrganization" 


-- | <p>Removes a member account from its parent organization. This version of the operation is performed by the account that wants to leave. To remove a member account as a user in the master account, use <a>RemoveAccountFromOrganization</a> instead.</p> <p>This operation can be called only from a member account in the organization.</p> <important> <ul> <li> <p>The master account in an organization with all features enabled can set service control policies (SCPs) that can restrict what administrators of member accounts can do, including preventing them from successfully calling <code>LeaveOrganization</code> and leaving the organization. </p> </li> <li> <p>You can leave an organization as a member account only if the account is configured with the information required to operate as a standalone account. When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required of standalone accounts is <i>not</i> automatically collected. For each account that you want to make standalone, you must accept the End User License Agreement (EULA), choose a support plan, provide and verify the required contact information, and provide a current payment method. AWS uses the payment method to charge for any billable (not free tier) AWS activity that occurs while the account is not attached to an organization. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>You can leave an organization only after you enable IAM user access to billing in your account. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> </li> </ul> </important>
leaveOrganization :: forall eff.  Aff (exception :: EXCEPTION | eff) Types.NoOutput
leaveOrganization = Request.request serviceName "leaveOrganization" (Types.NoInput unit)


-- | <p>Returns a list of the AWS services that you enabled to integrate with your organization. After a service on this list creates the resources that it requires for the integration, it can perform operations on your organization and its accounts.</p> <p>For more information about integrating other services with AWS Organizations, including the list of services that currently work with Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account.</p>
listAWSServiceAccessForOrganization :: forall eff. ListAWSServiceAccessForOrganizationRequest -> Aff (exception :: EXCEPTION | eff) ListAWSServiceAccessForOrganizationResponse
listAWSServiceAccessForOrganization = Request.request serviceName "listAWSServiceAccessForOrganization" 


-- | <p>Lists all the accounts in the organization. To request only the accounts in a root or OU, use the <a>ListAccountsForParent</a> operation instead.</p> <p>This operation can be called only from the organization's master account.</p>
listAccounts :: forall eff. ListAccountsRequest -> Aff (exception :: EXCEPTION | eff) ListAccountsResponse
listAccounts = Request.request serviceName "listAccounts" 


-- | <p>Lists the accounts in an organization that are contained by the specified target root or organizational unit (OU). If you specify the root, you get a list of all the accounts that are not in any OU. If you specify an OU, you get a list of all the accounts in only that OU, and not in any child OUs. To get a list of all accounts in the organization, use the <a>ListAccounts</a> operation.</p> <p>This operation can be called only from the organization's master account.</p>
listAccountsForParent :: forall eff. ListAccountsForParentRequest -> Aff (exception :: EXCEPTION | eff) ListAccountsForParentResponse
listAccountsForParent = Request.request serviceName "listAccountsForParent" 


-- | <p>Lists all of the OUs or accounts that are contained in the specified parent OU or root. This operation, along with <a>ListParents</a> enables you to traverse the tree structure that makes up this root.</p> <p>This operation can be called only from the organization's master account.</p>
listChildren :: forall eff. ListChildrenRequest -> Aff (exception :: EXCEPTION | eff) ListChildrenResponse
listChildren = Request.request serviceName "listChildren" 


-- | <p>Lists the account creation requests that match the specified status that is currently being tracked for the organization.</p> <p>This operation can be called only from the organization's master account.</p>
listCreateAccountStatus :: forall eff. ListCreateAccountStatusRequest -> Aff (exception :: EXCEPTION | eff) ListCreateAccountStatusResponse
listCreateAccountStatus = Request.request serviceName "listCreateAccountStatus" 


-- | <p>Lists the current handshakes that are associated with the account of the requesting user.</p> <p>Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that they are deleted and no longer accessible.</p> <p>This operation can be called from any account in the organization.</p>
listHandshakesForAccount :: forall eff. ListHandshakesForAccountRequest -> Aff (exception :: EXCEPTION | eff) ListHandshakesForAccountResponse
listHandshakesForAccount = Request.request serviceName "listHandshakesForAccount" 


-- | <p>Lists the handshakes that are associated with the organization that the requesting user is part of. The <code>ListHandshakesForOrganization</code> operation returns a list of handshake structures. Each structure contains details and status about a handshake.</p> <p>Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that they are deleted and no longer accessible.</p> <p>This operation can be called only from the organization's master account.</p>
listHandshakesForOrganization :: forall eff. ListHandshakesForOrganizationRequest -> Aff (exception :: EXCEPTION | eff) ListHandshakesForOrganizationResponse
listHandshakesForOrganization = Request.request serviceName "listHandshakesForOrganization" 


-- | <p>Lists the organizational units (OUs) in a parent organizational unit or root.</p> <p>This operation can be called only from the organization's master account.</p>
listOrganizationalUnitsForParent :: forall eff. ListOrganizationalUnitsForParentRequest -> Aff (exception :: EXCEPTION | eff) ListOrganizationalUnitsForParentResponse
listOrganizationalUnitsForParent = Request.request serviceName "listOrganizationalUnitsForParent" 


-- | <p>Lists the root or organizational units (OUs) that serve as the immediate parent of the specified child OU or account. This operation, along with <a>ListChildren</a> enables you to traverse the tree structure that makes up this root.</p> <p>This operation can be called only from the organization's master account.</p> <note> <p>In the current release, a child can have only a single parent. </p> </note>
listParents :: forall eff. ListParentsRequest -> Aff (exception :: EXCEPTION | eff) ListParentsResponse
listParents = Request.request serviceName "listParents" 


-- | <p>Retrieves the list of all policies in an organization of a specified type.</p> <p>This operation can be called only from the organization's master account.</p>
listPolicies :: forall eff. ListPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListPoliciesResponse
listPolicies = Request.request serviceName "listPolicies" 


-- | <p>Lists the policies that are directly attached to the specified target root, organizational unit (OU), or account. You must specify the policy type that you want included in the returned list.</p> <p>This operation can be called only from the organization's master account.</p>
listPoliciesForTarget :: forall eff. ListPoliciesForTargetRequest -> Aff (exception :: EXCEPTION | eff) ListPoliciesForTargetResponse
listPoliciesForTarget = Request.request serviceName "listPoliciesForTarget" 


-- | <p>Lists the roots that are defined in the current organization.</p> <p>This operation can be called only from the organization's master account.</p>
listRoots :: forall eff. ListRootsRequest -> Aff (exception :: EXCEPTION | eff) ListRootsResponse
listRoots = Request.request serviceName "listRoots" 


-- | <p>Lists all the roots, OUs, and accounts to which the specified policy is attached.</p> <p>This operation can be called only from the organization's master account.</p>
listTargetsForPolicy :: forall eff. ListTargetsForPolicyRequest -> Aff (exception :: EXCEPTION | eff) ListTargetsForPolicyResponse
listTargetsForPolicy = Request.request serviceName "listTargetsForPolicy" 


-- | <p>Moves an account from its current source parent root or OU to the specified destination parent root or OU.</p> <p>This operation can be called only from the organization's master account.</p>
moveAccount :: forall eff. MoveAccountRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
moveAccount = Request.request serviceName "moveAccount" 


-- | <p>Removes the specified account from the organization.</p> <p>The removed account becomes a stand-alone account that is not a member of any organization. It is no longer subject to any policies and is responsible for its own bill payments. The organization's master account is no longer charged for any expenses accrued by the member account after it is removed from the organization.</p> <p>This operation can be called only from the organization's master account. Member accounts can remove themselves with <a>LeaveOrganization</a> instead.</p> <important> <ul> <li> <p>You can remove an account from your organization only if the account is configured with the information required to operate as a standalone account. When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required of standalone accounts is <i>not</i> automatically collected. For an account that you want to make standalone, you must accept the End User License Agreement (EULA), choose a support plan, provide and verify the required contact information, and provide a current payment method. AWS uses the payment method to charge for any billable (not free tier) AWS activity that occurs while the account is not attached to an organization. To remove an account that does not yet have this information, you must sign in as the member account and follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>You can remove a member account only after you enable IAM user access to billing in the member account. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> </li> </ul> </important>
removeAccountFromOrganization :: forall eff. RemoveAccountFromOrganizationRequest -> Aff (exception :: EXCEPTION | eff) Types.NoOutput
removeAccountFromOrganization = Request.request serviceName "removeAccountFromOrganization" 


-- | <p>Renames the specified organizational unit (OU). The ID and ARN do not change. The child OUs and accounts remain in place, and any attached policies of the OU remain attached. </p> <p>This operation can be called only from the organization's master account.</p>
updateOrganizationalUnit :: forall eff. UpdateOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) UpdateOrganizationalUnitResponse
updateOrganizationalUnit = Request.request serviceName "updateOrganizationalUnit" 


-- | <p>Updates an existing policy with a new name, description, or content. If any parameter is not supplied, that value remains unchanged. Note that you cannot change a policy's type.</p> <p>This operation can be called only from the organization's master account.</p>
updatePolicy :: forall eff. UpdatePolicyRequest -> Aff (exception :: EXCEPTION | eff) UpdatePolicyResponse
updatePolicy = Request.request serviceName "updatePolicy" 


-- | <p>Your account is not a member of an organization. To make this request, you must use the credentials of an account that belongs to an organization.</p>
newtype AWSOrganizationsNotInUseException = AWSOrganizationsNotInUseException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeAWSOrganizationsNotInUseException :: Newtype AWSOrganizationsNotInUseException _
derive instance repGenericAWSOrganizationsNotInUseException :: Generic AWSOrganizationsNotInUseException _
instance showAWSOrganizationsNotInUseException :: Show AWSOrganizationsNotInUseException where
  show = genericShow
instance decodeAWSOrganizationsNotInUseException :: Decode AWSOrganizationsNotInUseException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAWSOrganizationsNotInUseException :: Encode AWSOrganizationsNotInUseException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AWSOrganizationsNotInUseException from required parameters
newAWSOrganizationsNotInUseException :: AWSOrganizationsNotInUseException
newAWSOrganizationsNotInUseException  = AWSOrganizationsNotInUseException { "Message": (NullOrUndefined Nothing) }

-- | Constructs AWSOrganizationsNotInUseException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAWSOrganizationsNotInUseException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> AWSOrganizationsNotInUseException
newAWSOrganizationsNotInUseException'  customize = (AWSOrganizationsNotInUseException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype AcceptHandshakeRequest = AcceptHandshakeRequest 
  { "HandshakeId" :: (HandshakeId)
  }
derive instance newtypeAcceptHandshakeRequest :: Newtype AcceptHandshakeRequest _
derive instance repGenericAcceptHandshakeRequest :: Generic AcceptHandshakeRequest _
instance showAcceptHandshakeRequest :: Show AcceptHandshakeRequest where
  show = genericShow
instance decodeAcceptHandshakeRequest :: Decode AcceptHandshakeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAcceptHandshakeRequest :: Encode AcceptHandshakeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AcceptHandshakeRequest from required parameters
newAcceptHandshakeRequest :: HandshakeId -> AcceptHandshakeRequest
newAcceptHandshakeRequest _HandshakeId = AcceptHandshakeRequest { "HandshakeId": _HandshakeId }

-- | Constructs AcceptHandshakeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAcceptHandshakeRequest' :: HandshakeId -> ( { "HandshakeId" :: (HandshakeId) } -> {"HandshakeId" :: (HandshakeId) } ) -> AcceptHandshakeRequest
newAcceptHandshakeRequest' _HandshakeId customize = (AcceptHandshakeRequest <<< customize) { "HandshakeId": _HandshakeId }



newtype AcceptHandshakeResponse = AcceptHandshakeResponse 
  { "Handshake" :: NullOrUndefined.NullOrUndefined (Handshake)
  }
derive instance newtypeAcceptHandshakeResponse :: Newtype AcceptHandshakeResponse _
derive instance repGenericAcceptHandshakeResponse :: Generic AcceptHandshakeResponse _
instance showAcceptHandshakeResponse :: Show AcceptHandshakeResponse where
  show = genericShow
instance decodeAcceptHandshakeResponse :: Decode AcceptHandshakeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAcceptHandshakeResponse :: Encode AcceptHandshakeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AcceptHandshakeResponse from required parameters
newAcceptHandshakeResponse :: AcceptHandshakeResponse
newAcceptHandshakeResponse  = AcceptHandshakeResponse { "Handshake": (NullOrUndefined Nothing) }

-- | Constructs AcceptHandshakeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAcceptHandshakeResponse' :: ( { "Handshake" :: NullOrUndefined.NullOrUndefined (Handshake) } -> {"Handshake" :: NullOrUndefined.NullOrUndefined (Handshake) } ) -> AcceptHandshakeResponse
newAcceptHandshakeResponse'  customize = (AcceptHandshakeResponse <<< customize) { "Handshake": (NullOrUndefined Nothing) }



-- | <p>You don't have permissions to perform the requested operation. The user or role that is making the request must have at least one IAM permissions policy attached that grants the required permissions. For more information, see <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/access.html">Access Management</a> in the <i>IAM User Guide</i>.</p>
newtype AccessDeniedException = AccessDeniedException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeAccessDeniedException :: Newtype AccessDeniedException _
derive instance repGenericAccessDeniedException :: Generic AccessDeniedException _
instance showAccessDeniedException :: Show AccessDeniedException where
  show = genericShow
instance decodeAccessDeniedException :: Decode AccessDeniedException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccessDeniedException :: Encode AccessDeniedException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AccessDeniedException from required parameters
newAccessDeniedException :: AccessDeniedException
newAccessDeniedException  = AccessDeniedException { "Message": (NullOrUndefined Nothing) }

-- | Constructs AccessDeniedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessDeniedException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> AccessDeniedException
newAccessDeniedException'  customize = (AccessDeniedException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The operation you attempted requires you to have the <code>iam:CreateServiceLinkedRole</code> so that Organizations can create the required service-linked role. You do not have that permission.</p>
newtype AccessDeniedForDependencyException = AccessDeniedForDependencyException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  , "Reason" :: NullOrUndefined.NullOrUndefined (AccessDeniedForDependencyExceptionReason)
  }
derive instance newtypeAccessDeniedForDependencyException :: Newtype AccessDeniedForDependencyException _
derive instance repGenericAccessDeniedForDependencyException :: Generic AccessDeniedForDependencyException _
instance showAccessDeniedForDependencyException :: Show AccessDeniedForDependencyException where
  show = genericShow
instance decodeAccessDeniedForDependencyException :: Decode AccessDeniedForDependencyException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccessDeniedForDependencyException :: Encode AccessDeniedForDependencyException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AccessDeniedForDependencyException from required parameters
newAccessDeniedForDependencyException :: AccessDeniedForDependencyException
newAccessDeniedForDependencyException  = AccessDeniedForDependencyException { "Message": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }

-- | Constructs AccessDeniedForDependencyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccessDeniedForDependencyException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) , "Reason" :: NullOrUndefined.NullOrUndefined (AccessDeniedForDependencyExceptionReason) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) , "Reason" :: NullOrUndefined.NullOrUndefined (AccessDeniedForDependencyExceptionReason) } ) -> AccessDeniedForDependencyException
newAccessDeniedForDependencyException'  customize = (AccessDeniedForDependencyException <<< customize) { "Message": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }



newtype AccessDeniedForDependencyExceptionReason = AccessDeniedForDependencyExceptionReason String
derive instance newtypeAccessDeniedForDependencyExceptionReason :: Newtype AccessDeniedForDependencyExceptionReason _
derive instance repGenericAccessDeniedForDependencyExceptionReason :: Generic AccessDeniedForDependencyExceptionReason _
instance showAccessDeniedForDependencyExceptionReason :: Show AccessDeniedForDependencyExceptionReason where
  show = genericShow
instance decodeAccessDeniedForDependencyExceptionReason :: Decode AccessDeniedForDependencyExceptionReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccessDeniedForDependencyExceptionReason :: Encode AccessDeniedForDependencyExceptionReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information about an AWS account that is a member of an organization.</p>
newtype Account = Account 
  { "Id" :: NullOrUndefined.NullOrUndefined (AccountId)
  , "Arn" :: NullOrUndefined.NullOrUndefined (AccountArn)
  , "Email" :: NullOrUndefined.NullOrUndefined (Email)
  , "Name" :: NullOrUndefined.NullOrUndefined (AccountName)
  , "Status" :: NullOrUndefined.NullOrUndefined (AccountStatus)
  , "JoinedMethod" :: NullOrUndefined.NullOrUndefined (AccountJoinedMethod)
  , "JoinedTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeAccount :: Newtype Account _
derive instance repGenericAccount :: Generic Account _
instance showAccount :: Show Account where
  show = genericShow
instance decodeAccount :: Decode Account where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccount :: Encode Account where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Account from required parameters
newAccount :: Account
newAccount  = Account { "Arn": (NullOrUndefined Nothing), "Email": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "JoinedMethod": (NullOrUndefined Nothing), "JoinedTimestamp": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }

-- | Constructs Account's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccount' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (AccountId) , "Arn" :: NullOrUndefined.NullOrUndefined (AccountArn) , "Email" :: NullOrUndefined.NullOrUndefined (Email) , "Name" :: NullOrUndefined.NullOrUndefined (AccountName) , "Status" :: NullOrUndefined.NullOrUndefined (AccountStatus) , "JoinedMethod" :: NullOrUndefined.NullOrUndefined (AccountJoinedMethod) , "JoinedTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } -> {"Id" :: NullOrUndefined.NullOrUndefined (AccountId) , "Arn" :: NullOrUndefined.NullOrUndefined (AccountArn) , "Email" :: NullOrUndefined.NullOrUndefined (Email) , "Name" :: NullOrUndefined.NullOrUndefined (AccountName) , "Status" :: NullOrUndefined.NullOrUndefined (AccountStatus) , "JoinedMethod" :: NullOrUndefined.NullOrUndefined (AccountJoinedMethod) , "JoinedTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } ) -> Account
newAccount'  customize = (Account <<< customize) { "Arn": (NullOrUndefined Nothing), "Email": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "JoinedMethod": (NullOrUndefined Nothing), "JoinedTimestamp": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Status": (NullOrUndefined Nothing) }



newtype AccountArn = AccountArn String
derive instance newtypeAccountArn :: Newtype AccountArn _
derive instance repGenericAccountArn :: Generic AccountArn _
instance showAccountArn :: Show AccountArn where
  show = genericShow
instance decodeAccountArn :: Decode AccountArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccountArn :: Encode AccountArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AccountId = AccountId String
derive instance newtypeAccountId :: Newtype AccountId _
derive instance repGenericAccountId :: Generic AccountId _
instance showAccountId :: Show AccountId where
  show = genericShow
instance decodeAccountId :: Decode AccountId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccountId :: Encode AccountId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AccountJoinedMethod = AccountJoinedMethod String
derive instance newtypeAccountJoinedMethod :: Newtype AccountJoinedMethod _
derive instance repGenericAccountJoinedMethod :: Generic AccountJoinedMethod _
instance showAccountJoinedMethod :: Show AccountJoinedMethod where
  show = genericShow
instance decodeAccountJoinedMethod :: Decode AccountJoinedMethod where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccountJoinedMethod :: Encode AccountJoinedMethod where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype AccountName = AccountName String
derive instance newtypeAccountName :: Newtype AccountName _
derive instance repGenericAccountName :: Generic AccountName _
instance showAccountName :: Show AccountName where
  show = genericShow
instance decodeAccountName :: Decode AccountName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccountName :: Encode AccountName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p> We can't find an AWS account with the AccountId that you specified, or the account whose credentials you used to make this request is not a member of an organization.</p>
newtype AccountNotFoundException = AccountNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeAccountNotFoundException :: Newtype AccountNotFoundException _
derive instance repGenericAccountNotFoundException :: Generic AccountNotFoundException _
instance showAccountNotFoundException :: Show AccountNotFoundException where
  show = genericShow
instance decodeAccountNotFoundException :: Decode AccountNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccountNotFoundException :: Encode AccountNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AccountNotFoundException from required parameters
newAccountNotFoundException :: AccountNotFoundException
newAccountNotFoundException  = AccountNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs AccountNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAccountNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> AccountNotFoundException
newAccountNotFoundException'  customize = (AccountNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype AccountStatus = AccountStatus String
derive instance newtypeAccountStatus :: Newtype AccountStatus _
derive instance repGenericAccountStatus :: Generic AccountStatus _
instance showAccountStatus :: Show AccountStatus where
  show = genericShow
instance decodeAccountStatus :: Decode AccountStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccountStatus :: Encode AccountStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Accounts = Accounts (Array Account)
derive instance newtypeAccounts :: Newtype Accounts _
derive instance repGenericAccounts :: Generic Accounts _
instance showAccounts :: Show Accounts where
  show = genericShow
instance decodeAccounts :: Decode Accounts where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAccounts :: Encode Accounts where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ActionType = ActionType String
derive instance newtypeActionType :: Newtype ActionType _
derive instance repGenericActionType :: Generic ActionType _
instance showActionType :: Show ActionType where
  show = genericShow
instance decodeActionType :: Decode ActionType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeActionType :: Encode ActionType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>This account is already a member of an organization. An account can belong to only one organization at a time.</p>
newtype AlreadyInOrganizationException = AlreadyInOrganizationException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeAlreadyInOrganizationException :: Newtype AlreadyInOrganizationException _
derive instance repGenericAlreadyInOrganizationException :: Generic AlreadyInOrganizationException _
instance showAlreadyInOrganizationException :: Show AlreadyInOrganizationException where
  show = genericShow
instance decodeAlreadyInOrganizationException :: Decode AlreadyInOrganizationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAlreadyInOrganizationException :: Encode AlreadyInOrganizationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs AlreadyInOrganizationException from required parameters
newAlreadyInOrganizationException :: AlreadyInOrganizationException
newAlreadyInOrganizationException  = AlreadyInOrganizationException { "Message": (NullOrUndefined Nothing) }

-- | Constructs AlreadyInOrganizationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newAlreadyInOrganizationException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> AlreadyInOrganizationException
newAlreadyInOrganizationException'  customize = (AlreadyInOrganizationException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype AttachPolicyRequest = AttachPolicyRequest 
  { "PolicyId" :: (PolicyId)
  , "TargetId" :: (PolicyTargetId)
  }
derive instance newtypeAttachPolicyRequest :: Newtype AttachPolicyRequest _
derive instance repGenericAttachPolicyRequest :: Generic AttachPolicyRequest _
instance showAttachPolicyRequest :: Show AttachPolicyRequest where
  show = genericShow
instance decodeAttachPolicyRequest :: Decode AttachPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAttachPolicyRequest :: Encode AttachPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showAwsManagedPolicy :: Show AwsManagedPolicy where
  show = genericShow
instance decodeAwsManagedPolicy :: Decode AwsManagedPolicy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeAwsManagedPolicy :: Encode AwsManagedPolicy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CancelHandshakeRequest = CancelHandshakeRequest 
  { "HandshakeId" :: (HandshakeId)
  }
derive instance newtypeCancelHandshakeRequest :: Newtype CancelHandshakeRequest _
derive instance repGenericCancelHandshakeRequest :: Generic CancelHandshakeRequest _
instance showCancelHandshakeRequest :: Show CancelHandshakeRequest where
  show = genericShow
instance decodeCancelHandshakeRequest :: Decode CancelHandshakeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelHandshakeRequest :: Encode CancelHandshakeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CancelHandshakeRequest from required parameters
newCancelHandshakeRequest :: HandshakeId -> CancelHandshakeRequest
newCancelHandshakeRequest _HandshakeId = CancelHandshakeRequest { "HandshakeId": _HandshakeId }

-- | Constructs CancelHandshakeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelHandshakeRequest' :: HandshakeId -> ( { "HandshakeId" :: (HandshakeId) } -> {"HandshakeId" :: (HandshakeId) } ) -> CancelHandshakeRequest
newCancelHandshakeRequest' _HandshakeId customize = (CancelHandshakeRequest <<< customize) { "HandshakeId": _HandshakeId }



newtype CancelHandshakeResponse = CancelHandshakeResponse 
  { "Handshake" :: NullOrUndefined.NullOrUndefined (Handshake)
  }
derive instance newtypeCancelHandshakeResponse :: Newtype CancelHandshakeResponse _
derive instance repGenericCancelHandshakeResponse :: Generic CancelHandshakeResponse _
instance showCancelHandshakeResponse :: Show CancelHandshakeResponse where
  show = genericShow
instance decodeCancelHandshakeResponse :: Decode CancelHandshakeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCancelHandshakeResponse :: Encode CancelHandshakeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CancelHandshakeResponse from required parameters
newCancelHandshakeResponse :: CancelHandshakeResponse
newCancelHandshakeResponse  = CancelHandshakeResponse { "Handshake": (NullOrUndefined Nothing) }

-- | Constructs CancelHandshakeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCancelHandshakeResponse' :: ( { "Handshake" :: NullOrUndefined.NullOrUndefined (Handshake) } -> {"Handshake" :: NullOrUndefined.NullOrUndefined (Handshake) } ) -> CancelHandshakeResponse
newCancelHandshakeResponse'  customize = (CancelHandshakeResponse <<< customize) { "Handshake": (NullOrUndefined Nothing) }



-- | <p>Contains a list of child entities, either OUs or accounts.</p>
newtype Child = Child 
  { "Id" :: NullOrUndefined.NullOrUndefined (ChildId)
  , "Type" :: NullOrUndefined.NullOrUndefined (ChildType)
  }
derive instance newtypeChild :: Newtype Child _
derive instance repGenericChild :: Generic Child _
instance showChild :: Show Child where
  show = genericShow
instance decodeChild :: Decode Child where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeChild :: Encode Child where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Child from required parameters
newChild :: Child
newChild  = Child { "Id": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs Child's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChild' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (ChildId) , "Type" :: NullOrUndefined.NullOrUndefined (ChildType) } -> {"Id" :: NullOrUndefined.NullOrUndefined (ChildId) , "Type" :: NullOrUndefined.NullOrUndefined (ChildType) } ) -> Child
newChild'  customize = (Child <<< customize) { "Id": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype ChildId = ChildId String
derive instance newtypeChildId :: Newtype ChildId _
derive instance repGenericChildId :: Generic ChildId _
instance showChildId :: Show ChildId where
  show = genericShow
instance decodeChildId :: Decode ChildId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeChildId :: Encode ChildId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>We can't find an organizational unit (OU) or AWS account with the ChildId that you specified.</p>
newtype ChildNotFoundException = ChildNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeChildNotFoundException :: Newtype ChildNotFoundException _
derive instance repGenericChildNotFoundException :: Generic ChildNotFoundException _
instance showChildNotFoundException :: Show ChildNotFoundException where
  show = genericShow
instance decodeChildNotFoundException :: Decode ChildNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeChildNotFoundException :: Encode ChildNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ChildNotFoundException from required parameters
newChildNotFoundException :: ChildNotFoundException
newChildNotFoundException  = ChildNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ChildNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newChildNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> ChildNotFoundException
newChildNotFoundException'  customize = (ChildNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ChildType = ChildType String
derive instance newtypeChildType :: Newtype ChildType _
derive instance repGenericChildType :: Generic ChildType _
instance showChildType :: Show ChildType where
  show = genericShow
instance decodeChildType :: Decode ChildType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeChildType :: Encode ChildType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Children = Children (Array Child)
derive instance newtypeChildren :: Newtype Children _
derive instance repGenericChildren :: Generic Children _
instance showChildren :: Show Children where
  show = genericShow
instance decodeChildren :: Decode Children where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeChildren :: Encode Children where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The target of the operation is currently being modified by a different request. Try again later.</p>
newtype ConcurrentModificationException = ConcurrentModificationException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeConcurrentModificationException :: Newtype ConcurrentModificationException _
derive instance repGenericConcurrentModificationException :: Generic ConcurrentModificationException _
instance showConcurrentModificationException :: Show ConcurrentModificationException where
  show = genericShow
instance decodeConcurrentModificationException :: Decode ConcurrentModificationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConcurrentModificationException :: Encode ConcurrentModificationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ConcurrentModificationException from required parameters
newConcurrentModificationException :: ConcurrentModificationException
newConcurrentModificationException  = ConcurrentModificationException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ConcurrentModificationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConcurrentModificationException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> ConcurrentModificationException
newConcurrentModificationException'  customize = (ConcurrentModificationException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Performing this operation violates a minimum or maximum value limit. For example, attempting to removing the last SCP from an OU or root, inviting or creating too many accounts to the organization, or attaching too many policies to an account, OU, or root. This exception includes a reason that contains additional information about the violated limit:</p> <p/> <note> <p>Some of the reasons in the following list might not be applicable to this specific API or operation:</p> </note> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. If you need more accounts, contact AWS Support to request an increase in your limit. </p> <p>Or, The number of invitations that you tried to send would cause you to exceed the limit of accounts in your organization. Send fewer invitations, or contact AWS Support to request an increase in the number of accounts.</p> <p> <b>Note</b>: deleted and closed accounts still count toward your limit.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>OU_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the number of organizational units you can have in an organization.</p> </li> <li> <p>OU_DEPTH_LIMIT_EXCEEDED: You attempted to create an organizational unit tree that is too many levels deep.</p> </li> <li> <p>POLICY_NUMBER_LIMIT_EXCEEDED. You attempted to exceed the number of policies that you can have in an organization.</p> </li> <li> <p>MAX_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to exceed the number of policies of a certain type that can be attached to an entity at one time.</p> </li> <li> <p>MIN_POLICY_TYPE_ATTACHMENT_LIMIT_EXCEEDED: You attempted to detach a policy from an entity that would cause the entity to have fewer than the minimum number of policies of a certain type required.</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_EULA: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first agree to the AWS Customer Agreement. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>ACCOUNT_CANNOT_LEAVE_WITHOUT_PHONE_VERIFICATION: You attempted to remove an account from the organization that does not yet have enough information to exist as a stand-alone account. This account requires you to first complete phone verification. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>MASTER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To create an organization with this account, you first must associate a payment instrument, such as a credit card, with the account. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>MEMBER_ACCOUNT_PAYMENT_INSTRUMENT_REQUIRED: To complete this operation with this member account, you first must associate a payment instrument, such as a credit card, with the account. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info">To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>ACCOUNT_CREATION_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of accounts that you can create in one day.</p> </li> <li> <p>MASTER_ACCOUNT_ADDRESS_DOES_NOT_MATCH_MARKETPLACE: To create an account in this organization, you first must migrate the organization's master account to the marketplace that corresponds to the master account's address. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be associated with the same marketplace.</p> </li> <li> <p>MASTER_ACCOUNT_MISSING_CONTACT_INFO: To complete this operation, you must first provide contact a valid address and phone number for the master account. Then try the operation again.</p> </li> </ul>
newtype ConstraintViolationException = ConstraintViolationException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  , "Reason" :: NullOrUndefined.NullOrUndefined (ConstraintViolationExceptionReason)
  }
derive instance newtypeConstraintViolationException :: Newtype ConstraintViolationException _
derive instance repGenericConstraintViolationException :: Generic ConstraintViolationException _
instance showConstraintViolationException :: Show ConstraintViolationException where
  show = genericShow
instance decodeConstraintViolationException :: Decode ConstraintViolationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConstraintViolationException :: Encode ConstraintViolationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ConstraintViolationException from required parameters
newConstraintViolationException :: ConstraintViolationException
newConstraintViolationException  = ConstraintViolationException { "Message": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }

-- | Constructs ConstraintViolationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newConstraintViolationException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) , "Reason" :: NullOrUndefined.NullOrUndefined (ConstraintViolationExceptionReason) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) , "Reason" :: NullOrUndefined.NullOrUndefined (ConstraintViolationExceptionReason) } ) -> ConstraintViolationException
newConstraintViolationException'  customize = (ConstraintViolationException <<< customize) { "Message": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }



newtype ConstraintViolationExceptionReason = ConstraintViolationExceptionReason String
derive instance newtypeConstraintViolationExceptionReason :: Newtype ConstraintViolationExceptionReason _
derive instance repGenericConstraintViolationExceptionReason :: Generic ConstraintViolationExceptionReason _
instance showConstraintViolationExceptionReason :: Show ConstraintViolationExceptionReason where
  show = genericShow
instance decodeConstraintViolationExceptionReason :: Decode ConstraintViolationExceptionReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeConstraintViolationExceptionReason :: Encode ConstraintViolationExceptionReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateAccountFailureReason = CreateAccountFailureReason String
derive instance newtypeCreateAccountFailureReason :: Newtype CreateAccountFailureReason _
derive instance repGenericCreateAccountFailureReason :: Generic CreateAccountFailureReason _
instance showCreateAccountFailureReason :: Show CreateAccountFailureReason where
  show = genericShow
instance decodeCreateAccountFailureReason :: Decode CreateAccountFailureReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAccountFailureReason :: Encode CreateAccountFailureReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateAccountRequest = CreateAccountRequest 
  { "Email" :: (Email)
  , "AccountName" :: (AccountName)
  , "RoleName" :: NullOrUndefined.NullOrUndefined (RoleName)
  , "IamUserAccessToBilling" :: NullOrUndefined.NullOrUndefined (IAMUserAccessToBilling)
  }
derive instance newtypeCreateAccountRequest :: Newtype CreateAccountRequest _
derive instance repGenericCreateAccountRequest :: Generic CreateAccountRequest _
instance showCreateAccountRequest :: Show CreateAccountRequest where
  show = genericShow
instance decodeCreateAccountRequest :: Decode CreateAccountRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAccountRequest :: Encode CreateAccountRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateAccountRequest from required parameters
newCreateAccountRequest :: AccountName -> Email -> CreateAccountRequest
newCreateAccountRequest _AccountName _Email = CreateAccountRequest { "AccountName": _AccountName, "Email": _Email, "IamUserAccessToBilling": (NullOrUndefined Nothing), "RoleName": (NullOrUndefined Nothing) }

-- | Constructs CreateAccountRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccountRequest' :: AccountName -> Email -> ( { "Email" :: (Email) , "AccountName" :: (AccountName) , "RoleName" :: NullOrUndefined.NullOrUndefined (RoleName) , "IamUserAccessToBilling" :: NullOrUndefined.NullOrUndefined (IAMUserAccessToBilling) } -> {"Email" :: (Email) , "AccountName" :: (AccountName) , "RoleName" :: NullOrUndefined.NullOrUndefined (RoleName) , "IamUserAccessToBilling" :: NullOrUndefined.NullOrUndefined (IAMUserAccessToBilling) } ) -> CreateAccountRequest
newCreateAccountRequest' _AccountName _Email customize = (CreateAccountRequest <<< customize) { "AccountName": _AccountName, "Email": _Email, "IamUserAccessToBilling": (NullOrUndefined Nothing), "RoleName": (NullOrUndefined Nothing) }



newtype CreateAccountRequestId = CreateAccountRequestId String
derive instance newtypeCreateAccountRequestId :: Newtype CreateAccountRequestId _
derive instance repGenericCreateAccountRequestId :: Generic CreateAccountRequestId _
instance showCreateAccountRequestId :: Show CreateAccountRequestId where
  show = genericShow
instance decodeCreateAccountRequestId :: Decode CreateAccountRequestId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAccountRequestId :: Encode CreateAccountRequestId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateAccountResponse = CreateAccountResponse 
  { "CreateAccountStatus" :: NullOrUndefined.NullOrUndefined (CreateAccountStatus)
  }
derive instance newtypeCreateAccountResponse :: Newtype CreateAccountResponse _
derive instance repGenericCreateAccountResponse :: Generic CreateAccountResponse _
instance showCreateAccountResponse :: Show CreateAccountResponse where
  show = genericShow
instance decodeCreateAccountResponse :: Decode CreateAccountResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAccountResponse :: Encode CreateAccountResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateAccountResponse from required parameters
newCreateAccountResponse :: CreateAccountResponse
newCreateAccountResponse  = CreateAccountResponse { "CreateAccountStatus": (NullOrUndefined Nothing) }

-- | Constructs CreateAccountResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccountResponse' :: ( { "CreateAccountStatus" :: NullOrUndefined.NullOrUndefined (CreateAccountStatus) } -> {"CreateAccountStatus" :: NullOrUndefined.NullOrUndefined (CreateAccountStatus) } ) -> CreateAccountResponse
newCreateAccountResponse'  customize = (CreateAccountResponse <<< customize) { "CreateAccountStatus": (NullOrUndefined Nothing) }



newtype CreateAccountState = CreateAccountState String
derive instance newtypeCreateAccountState :: Newtype CreateAccountState _
derive instance repGenericCreateAccountState :: Generic CreateAccountState _
instance showCreateAccountState :: Show CreateAccountState where
  show = genericShow
instance decodeCreateAccountState :: Decode CreateAccountState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAccountState :: Encode CreateAccountState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateAccountStates = CreateAccountStates (Array CreateAccountState)
derive instance newtypeCreateAccountStates :: Newtype CreateAccountStates _
derive instance repGenericCreateAccountStates :: Generic CreateAccountStates _
instance showCreateAccountStates :: Show CreateAccountStates where
  show = genericShow
instance decodeCreateAccountStates :: Decode CreateAccountStates where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAccountStates :: Encode CreateAccountStates where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains the status about a <a>CreateAccount</a> request to create an AWS account in an organization.</p>
newtype CreateAccountStatus = CreateAccountStatus 
  { "Id" :: NullOrUndefined.NullOrUndefined (CreateAccountRequestId)
  , "AccountName" :: NullOrUndefined.NullOrUndefined (AccountName)
  , "State" :: NullOrUndefined.NullOrUndefined (CreateAccountState)
  , "RequestedTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "CompletedTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "AccountId" :: NullOrUndefined.NullOrUndefined (AccountId)
  , "FailureReason" :: NullOrUndefined.NullOrUndefined (CreateAccountFailureReason)
  }
derive instance newtypeCreateAccountStatus :: Newtype CreateAccountStatus _
derive instance repGenericCreateAccountStatus :: Generic CreateAccountStatus _
instance showCreateAccountStatus :: Show CreateAccountStatus where
  show = genericShow
instance decodeCreateAccountStatus :: Decode CreateAccountStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAccountStatus :: Encode CreateAccountStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateAccountStatus from required parameters
newCreateAccountStatus :: CreateAccountStatus
newCreateAccountStatus  = CreateAccountStatus { "AccountId": (NullOrUndefined Nothing), "AccountName": (NullOrUndefined Nothing), "CompletedTimestamp": (NullOrUndefined Nothing), "FailureReason": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "RequestedTimestamp": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing) }

-- | Constructs CreateAccountStatus's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccountStatus' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (CreateAccountRequestId) , "AccountName" :: NullOrUndefined.NullOrUndefined (AccountName) , "State" :: NullOrUndefined.NullOrUndefined (CreateAccountState) , "RequestedTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "CompletedTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "AccountId" :: NullOrUndefined.NullOrUndefined (AccountId) , "FailureReason" :: NullOrUndefined.NullOrUndefined (CreateAccountFailureReason) } -> {"Id" :: NullOrUndefined.NullOrUndefined (CreateAccountRequestId) , "AccountName" :: NullOrUndefined.NullOrUndefined (AccountName) , "State" :: NullOrUndefined.NullOrUndefined (CreateAccountState) , "RequestedTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "CompletedTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "AccountId" :: NullOrUndefined.NullOrUndefined (AccountId) , "FailureReason" :: NullOrUndefined.NullOrUndefined (CreateAccountFailureReason) } ) -> CreateAccountStatus
newCreateAccountStatus'  customize = (CreateAccountStatus <<< customize) { "AccountId": (NullOrUndefined Nothing), "AccountName": (NullOrUndefined Nothing), "CompletedTimestamp": (NullOrUndefined Nothing), "FailureReason": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "RequestedTimestamp": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing) }



-- | <p>We can't find an create account request with the CreateAccountRequestId that you specified.</p>
newtype CreateAccountStatusNotFoundException = CreateAccountStatusNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeCreateAccountStatusNotFoundException :: Newtype CreateAccountStatusNotFoundException _
derive instance repGenericCreateAccountStatusNotFoundException :: Generic CreateAccountStatusNotFoundException _
instance showCreateAccountStatusNotFoundException :: Show CreateAccountStatusNotFoundException where
  show = genericShow
instance decodeCreateAccountStatusNotFoundException :: Decode CreateAccountStatusNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAccountStatusNotFoundException :: Encode CreateAccountStatusNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateAccountStatusNotFoundException from required parameters
newCreateAccountStatusNotFoundException :: CreateAccountStatusNotFoundException
newCreateAccountStatusNotFoundException  = CreateAccountStatusNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs CreateAccountStatusNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateAccountStatusNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> CreateAccountStatusNotFoundException
newCreateAccountStatusNotFoundException'  customize = (CreateAccountStatusNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype CreateAccountStatuses = CreateAccountStatuses (Array CreateAccountStatus)
derive instance newtypeCreateAccountStatuses :: Newtype CreateAccountStatuses _
derive instance repGenericCreateAccountStatuses :: Generic CreateAccountStatuses _
instance showCreateAccountStatuses :: Show CreateAccountStatuses where
  show = genericShow
instance decodeCreateAccountStatuses :: Decode CreateAccountStatuses where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateAccountStatuses :: Encode CreateAccountStatuses where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype CreateOrganizationRequest = CreateOrganizationRequest 
  { "FeatureSet" :: NullOrUndefined.NullOrUndefined (OrganizationFeatureSet)
  }
derive instance newtypeCreateOrganizationRequest :: Newtype CreateOrganizationRequest _
derive instance repGenericCreateOrganizationRequest :: Generic CreateOrganizationRequest _
instance showCreateOrganizationRequest :: Show CreateOrganizationRequest where
  show = genericShow
instance decodeCreateOrganizationRequest :: Decode CreateOrganizationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateOrganizationRequest :: Encode CreateOrganizationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateOrganizationRequest from required parameters
newCreateOrganizationRequest :: CreateOrganizationRequest
newCreateOrganizationRequest  = CreateOrganizationRequest { "FeatureSet": (NullOrUndefined Nothing) }

-- | Constructs CreateOrganizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOrganizationRequest' :: ( { "FeatureSet" :: NullOrUndefined.NullOrUndefined (OrganizationFeatureSet) } -> {"FeatureSet" :: NullOrUndefined.NullOrUndefined (OrganizationFeatureSet) } ) -> CreateOrganizationRequest
newCreateOrganizationRequest'  customize = (CreateOrganizationRequest <<< customize) { "FeatureSet": (NullOrUndefined Nothing) }



newtype CreateOrganizationResponse = CreateOrganizationResponse 
  { "Organization" :: NullOrUndefined.NullOrUndefined (Organization)
  }
derive instance newtypeCreateOrganizationResponse :: Newtype CreateOrganizationResponse _
derive instance repGenericCreateOrganizationResponse :: Generic CreateOrganizationResponse _
instance showCreateOrganizationResponse :: Show CreateOrganizationResponse where
  show = genericShow
instance decodeCreateOrganizationResponse :: Decode CreateOrganizationResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateOrganizationResponse :: Encode CreateOrganizationResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateOrganizationResponse from required parameters
newCreateOrganizationResponse :: CreateOrganizationResponse
newCreateOrganizationResponse  = CreateOrganizationResponse { "Organization": (NullOrUndefined Nothing) }

-- | Constructs CreateOrganizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOrganizationResponse' :: ( { "Organization" :: NullOrUndefined.NullOrUndefined (Organization) } -> {"Organization" :: NullOrUndefined.NullOrUndefined (Organization) } ) -> CreateOrganizationResponse
newCreateOrganizationResponse'  customize = (CreateOrganizationResponse <<< customize) { "Organization": (NullOrUndefined Nothing) }



newtype CreateOrganizationalUnitRequest = CreateOrganizationalUnitRequest 
  { "ParentId" :: (ParentId)
  , "Name" :: (OrganizationalUnitName)
  }
derive instance newtypeCreateOrganizationalUnitRequest :: Newtype CreateOrganizationalUnitRequest _
derive instance repGenericCreateOrganizationalUnitRequest :: Generic CreateOrganizationalUnitRequest _
instance showCreateOrganizationalUnitRequest :: Show CreateOrganizationalUnitRequest where
  show = genericShow
instance decodeCreateOrganizationalUnitRequest :: Decode CreateOrganizationalUnitRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateOrganizationalUnitRequest :: Encode CreateOrganizationalUnitRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateOrganizationalUnitRequest from required parameters
newCreateOrganizationalUnitRequest :: OrganizationalUnitName -> ParentId -> CreateOrganizationalUnitRequest
newCreateOrganizationalUnitRequest _Name _ParentId = CreateOrganizationalUnitRequest { "Name": _Name, "ParentId": _ParentId }

-- | Constructs CreateOrganizationalUnitRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOrganizationalUnitRequest' :: OrganizationalUnitName -> ParentId -> ( { "ParentId" :: (ParentId) , "Name" :: (OrganizationalUnitName) } -> {"ParentId" :: (ParentId) , "Name" :: (OrganizationalUnitName) } ) -> CreateOrganizationalUnitRequest
newCreateOrganizationalUnitRequest' _Name _ParentId customize = (CreateOrganizationalUnitRequest <<< customize) { "Name": _Name, "ParentId": _ParentId }



newtype CreateOrganizationalUnitResponse = CreateOrganizationalUnitResponse 
  { "OrganizationalUnit" :: NullOrUndefined.NullOrUndefined (OrganizationalUnit)
  }
derive instance newtypeCreateOrganizationalUnitResponse :: Newtype CreateOrganizationalUnitResponse _
derive instance repGenericCreateOrganizationalUnitResponse :: Generic CreateOrganizationalUnitResponse _
instance showCreateOrganizationalUnitResponse :: Show CreateOrganizationalUnitResponse where
  show = genericShow
instance decodeCreateOrganizationalUnitResponse :: Decode CreateOrganizationalUnitResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreateOrganizationalUnitResponse :: Encode CreateOrganizationalUnitResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreateOrganizationalUnitResponse from required parameters
newCreateOrganizationalUnitResponse :: CreateOrganizationalUnitResponse
newCreateOrganizationalUnitResponse  = CreateOrganizationalUnitResponse { "OrganizationalUnit": (NullOrUndefined Nothing) }

-- | Constructs CreateOrganizationalUnitResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreateOrganizationalUnitResponse' :: ( { "OrganizationalUnit" :: NullOrUndefined.NullOrUndefined (OrganizationalUnit) } -> {"OrganizationalUnit" :: NullOrUndefined.NullOrUndefined (OrganizationalUnit) } ) -> CreateOrganizationalUnitResponse
newCreateOrganizationalUnitResponse'  customize = (CreateOrganizationalUnitResponse <<< customize) { "OrganizationalUnit": (NullOrUndefined Nothing) }



newtype CreatePolicyRequest = CreatePolicyRequest 
  { "Content" :: (PolicyContent)
  , "Description" :: (PolicyDescription)
  , "Name" :: (PolicyName)
  , "Type" :: (PolicyType)
  }
derive instance newtypeCreatePolicyRequest :: Newtype CreatePolicyRequest _
derive instance repGenericCreatePolicyRequest :: Generic CreatePolicyRequest _
instance showCreatePolicyRequest :: Show CreatePolicyRequest where
  show = genericShow
instance decodeCreatePolicyRequest :: Decode CreatePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatePolicyRequest :: Encode CreatePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatePolicyRequest from required parameters
newCreatePolicyRequest :: PolicyContent -> PolicyDescription -> PolicyName -> PolicyType -> CreatePolicyRequest
newCreatePolicyRequest _Content _Description _Name _Type = CreatePolicyRequest { "Content": _Content, "Description": _Description, "Name": _Name, "Type": _Type }

-- | Constructs CreatePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyRequest' :: PolicyContent -> PolicyDescription -> PolicyName -> PolicyType -> ( { "Content" :: (PolicyContent) , "Description" :: (PolicyDescription) , "Name" :: (PolicyName) , "Type" :: (PolicyType) } -> {"Content" :: (PolicyContent) , "Description" :: (PolicyDescription) , "Name" :: (PolicyName) , "Type" :: (PolicyType) } ) -> CreatePolicyRequest
newCreatePolicyRequest' _Content _Description _Name _Type customize = (CreatePolicyRequest <<< customize) { "Content": _Content, "Description": _Description, "Name": _Name, "Type": _Type }



newtype CreatePolicyResponse = CreatePolicyResponse 
  { "Policy" :: NullOrUndefined.NullOrUndefined (Policy)
  }
derive instance newtypeCreatePolicyResponse :: Newtype CreatePolicyResponse _
derive instance repGenericCreatePolicyResponse :: Generic CreatePolicyResponse _
instance showCreatePolicyResponse :: Show CreatePolicyResponse where
  show = genericShow
instance decodeCreatePolicyResponse :: Decode CreatePolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeCreatePolicyResponse :: Encode CreatePolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs CreatePolicyResponse from required parameters
newCreatePolicyResponse :: CreatePolicyResponse
newCreatePolicyResponse  = CreatePolicyResponse { "Policy": (NullOrUndefined Nothing) }

-- | Constructs CreatePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newCreatePolicyResponse' :: ( { "Policy" :: NullOrUndefined.NullOrUndefined (Policy) } -> {"Policy" :: NullOrUndefined.NullOrUndefined (Policy) } ) -> CreatePolicyResponse
newCreatePolicyResponse'  customize = (CreatePolicyResponse <<< customize) { "Policy": (NullOrUndefined Nothing) }



newtype DeclineHandshakeRequest = DeclineHandshakeRequest 
  { "HandshakeId" :: (HandshakeId)
  }
derive instance newtypeDeclineHandshakeRequest :: Newtype DeclineHandshakeRequest _
derive instance repGenericDeclineHandshakeRequest :: Generic DeclineHandshakeRequest _
instance showDeclineHandshakeRequest :: Show DeclineHandshakeRequest where
  show = genericShow
instance decodeDeclineHandshakeRequest :: Decode DeclineHandshakeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeclineHandshakeRequest :: Encode DeclineHandshakeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeclineHandshakeRequest from required parameters
newDeclineHandshakeRequest :: HandshakeId -> DeclineHandshakeRequest
newDeclineHandshakeRequest _HandshakeId = DeclineHandshakeRequest { "HandshakeId": _HandshakeId }

-- | Constructs DeclineHandshakeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeclineHandshakeRequest' :: HandshakeId -> ( { "HandshakeId" :: (HandshakeId) } -> {"HandshakeId" :: (HandshakeId) } ) -> DeclineHandshakeRequest
newDeclineHandshakeRequest' _HandshakeId customize = (DeclineHandshakeRequest <<< customize) { "HandshakeId": _HandshakeId }



newtype DeclineHandshakeResponse = DeclineHandshakeResponse 
  { "Handshake" :: NullOrUndefined.NullOrUndefined (Handshake)
  }
derive instance newtypeDeclineHandshakeResponse :: Newtype DeclineHandshakeResponse _
derive instance repGenericDeclineHandshakeResponse :: Generic DeclineHandshakeResponse _
instance showDeclineHandshakeResponse :: Show DeclineHandshakeResponse where
  show = genericShow
instance decodeDeclineHandshakeResponse :: Decode DeclineHandshakeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeclineHandshakeResponse :: Encode DeclineHandshakeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DeclineHandshakeResponse from required parameters
newDeclineHandshakeResponse :: DeclineHandshakeResponse
newDeclineHandshakeResponse  = DeclineHandshakeResponse { "Handshake": (NullOrUndefined Nothing) }

-- | Constructs DeclineHandshakeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDeclineHandshakeResponse' :: ( { "Handshake" :: NullOrUndefined.NullOrUndefined (Handshake) } -> {"Handshake" :: NullOrUndefined.NullOrUndefined (Handshake) } ) -> DeclineHandshakeResponse
newDeclineHandshakeResponse'  customize = (DeclineHandshakeResponse <<< customize) { "Handshake": (NullOrUndefined Nothing) }



newtype DeleteOrganizationalUnitRequest = DeleteOrganizationalUnitRequest 
  { "OrganizationalUnitId" :: (OrganizationalUnitId)
  }
derive instance newtypeDeleteOrganizationalUnitRequest :: Newtype DeleteOrganizationalUnitRequest _
derive instance repGenericDeleteOrganizationalUnitRequest :: Generic DeleteOrganizationalUnitRequest _
instance showDeleteOrganizationalUnitRequest :: Show DeleteOrganizationalUnitRequest where
  show = genericShow
instance decodeDeleteOrganizationalUnitRequest :: Decode DeleteOrganizationalUnitRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeleteOrganizationalUnitRequest :: Encode DeleteOrganizationalUnitRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDeletePolicyRequest :: Show DeletePolicyRequest where
  show = genericShow
instance decodeDeletePolicyRequest :: Decode DeletePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDeletePolicyRequest :: Encode DeletePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDescribeAccountRequest :: Show DescribeAccountRequest where
  show = genericShow
instance decodeDescribeAccountRequest :: Decode DescribeAccountRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeAccountRequest :: Encode DescribeAccountRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeAccountRequest from required parameters
newDescribeAccountRequest :: AccountId -> DescribeAccountRequest
newDescribeAccountRequest _AccountId = DescribeAccountRequest { "AccountId": _AccountId }

-- | Constructs DescribeAccountRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAccountRequest' :: AccountId -> ( { "AccountId" :: (AccountId) } -> {"AccountId" :: (AccountId) } ) -> DescribeAccountRequest
newDescribeAccountRequest' _AccountId customize = (DescribeAccountRequest <<< customize) { "AccountId": _AccountId }



newtype DescribeAccountResponse = DescribeAccountResponse 
  { "Account" :: NullOrUndefined.NullOrUndefined (Account)
  }
derive instance newtypeDescribeAccountResponse :: Newtype DescribeAccountResponse _
derive instance repGenericDescribeAccountResponse :: Generic DescribeAccountResponse _
instance showDescribeAccountResponse :: Show DescribeAccountResponse where
  show = genericShow
instance decodeDescribeAccountResponse :: Decode DescribeAccountResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeAccountResponse :: Encode DescribeAccountResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeAccountResponse from required parameters
newDescribeAccountResponse :: DescribeAccountResponse
newDescribeAccountResponse  = DescribeAccountResponse { "Account": (NullOrUndefined Nothing) }

-- | Constructs DescribeAccountResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeAccountResponse' :: ( { "Account" :: NullOrUndefined.NullOrUndefined (Account) } -> {"Account" :: NullOrUndefined.NullOrUndefined (Account) } ) -> DescribeAccountResponse
newDescribeAccountResponse'  customize = (DescribeAccountResponse <<< customize) { "Account": (NullOrUndefined Nothing) }



newtype DescribeCreateAccountStatusRequest = DescribeCreateAccountStatusRequest 
  { "CreateAccountRequestId" :: (CreateAccountRequestId)
  }
derive instance newtypeDescribeCreateAccountStatusRequest :: Newtype DescribeCreateAccountStatusRequest _
derive instance repGenericDescribeCreateAccountStatusRequest :: Generic DescribeCreateAccountStatusRequest _
instance showDescribeCreateAccountStatusRequest :: Show DescribeCreateAccountStatusRequest where
  show = genericShow
instance decodeDescribeCreateAccountStatusRequest :: Decode DescribeCreateAccountStatusRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeCreateAccountStatusRequest :: Encode DescribeCreateAccountStatusRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeCreateAccountStatusRequest from required parameters
newDescribeCreateAccountStatusRequest :: CreateAccountRequestId -> DescribeCreateAccountStatusRequest
newDescribeCreateAccountStatusRequest _CreateAccountRequestId = DescribeCreateAccountStatusRequest { "CreateAccountRequestId": _CreateAccountRequestId }

-- | Constructs DescribeCreateAccountStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCreateAccountStatusRequest' :: CreateAccountRequestId -> ( { "CreateAccountRequestId" :: (CreateAccountRequestId) } -> {"CreateAccountRequestId" :: (CreateAccountRequestId) } ) -> DescribeCreateAccountStatusRequest
newDescribeCreateAccountStatusRequest' _CreateAccountRequestId customize = (DescribeCreateAccountStatusRequest <<< customize) { "CreateAccountRequestId": _CreateAccountRequestId }



newtype DescribeCreateAccountStatusResponse = DescribeCreateAccountStatusResponse 
  { "CreateAccountStatus" :: NullOrUndefined.NullOrUndefined (CreateAccountStatus)
  }
derive instance newtypeDescribeCreateAccountStatusResponse :: Newtype DescribeCreateAccountStatusResponse _
derive instance repGenericDescribeCreateAccountStatusResponse :: Generic DescribeCreateAccountStatusResponse _
instance showDescribeCreateAccountStatusResponse :: Show DescribeCreateAccountStatusResponse where
  show = genericShow
instance decodeDescribeCreateAccountStatusResponse :: Decode DescribeCreateAccountStatusResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeCreateAccountStatusResponse :: Encode DescribeCreateAccountStatusResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeCreateAccountStatusResponse from required parameters
newDescribeCreateAccountStatusResponse :: DescribeCreateAccountStatusResponse
newDescribeCreateAccountStatusResponse  = DescribeCreateAccountStatusResponse { "CreateAccountStatus": (NullOrUndefined Nothing) }

-- | Constructs DescribeCreateAccountStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeCreateAccountStatusResponse' :: ( { "CreateAccountStatus" :: NullOrUndefined.NullOrUndefined (CreateAccountStatus) } -> {"CreateAccountStatus" :: NullOrUndefined.NullOrUndefined (CreateAccountStatus) } ) -> DescribeCreateAccountStatusResponse
newDescribeCreateAccountStatusResponse'  customize = (DescribeCreateAccountStatusResponse <<< customize) { "CreateAccountStatus": (NullOrUndefined Nothing) }



newtype DescribeHandshakeRequest = DescribeHandshakeRequest 
  { "HandshakeId" :: (HandshakeId)
  }
derive instance newtypeDescribeHandshakeRequest :: Newtype DescribeHandshakeRequest _
derive instance repGenericDescribeHandshakeRequest :: Generic DescribeHandshakeRequest _
instance showDescribeHandshakeRequest :: Show DescribeHandshakeRequest where
  show = genericShow
instance decodeDescribeHandshakeRequest :: Decode DescribeHandshakeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeHandshakeRequest :: Encode DescribeHandshakeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeHandshakeRequest from required parameters
newDescribeHandshakeRequest :: HandshakeId -> DescribeHandshakeRequest
newDescribeHandshakeRequest _HandshakeId = DescribeHandshakeRequest { "HandshakeId": _HandshakeId }

-- | Constructs DescribeHandshakeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeHandshakeRequest' :: HandshakeId -> ( { "HandshakeId" :: (HandshakeId) } -> {"HandshakeId" :: (HandshakeId) } ) -> DescribeHandshakeRequest
newDescribeHandshakeRequest' _HandshakeId customize = (DescribeHandshakeRequest <<< customize) { "HandshakeId": _HandshakeId }



newtype DescribeHandshakeResponse = DescribeHandshakeResponse 
  { "Handshake" :: NullOrUndefined.NullOrUndefined (Handshake)
  }
derive instance newtypeDescribeHandshakeResponse :: Newtype DescribeHandshakeResponse _
derive instance repGenericDescribeHandshakeResponse :: Generic DescribeHandshakeResponse _
instance showDescribeHandshakeResponse :: Show DescribeHandshakeResponse where
  show = genericShow
instance decodeDescribeHandshakeResponse :: Decode DescribeHandshakeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeHandshakeResponse :: Encode DescribeHandshakeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeHandshakeResponse from required parameters
newDescribeHandshakeResponse :: DescribeHandshakeResponse
newDescribeHandshakeResponse  = DescribeHandshakeResponse { "Handshake": (NullOrUndefined Nothing) }

-- | Constructs DescribeHandshakeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeHandshakeResponse' :: ( { "Handshake" :: NullOrUndefined.NullOrUndefined (Handshake) } -> {"Handshake" :: NullOrUndefined.NullOrUndefined (Handshake) } ) -> DescribeHandshakeResponse
newDescribeHandshakeResponse'  customize = (DescribeHandshakeResponse <<< customize) { "Handshake": (NullOrUndefined Nothing) }



newtype DescribeOrganizationResponse = DescribeOrganizationResponse 
  { "Organization" :: NullOrUndefined.NullOrUndefined (Organization)
  }
derive instance newtypeDescribeOrganizationResponse :: Newtype DescribeOrganizationResponse _
derive instance repGenericDescribeOrganizationResponse :: Generic DescribeOrganizationResponse _
instance showDescribeOrganizationResponse :: Show DescribeOrganizationResponse where
  show = genericShow
instance decodeDescribeOrganizationResponse :: Decode DescribeOrganizationResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeOrganizationResponse :: Encode DescribeOrganizationResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeOrganizationResponse from required parameters
newDescribeOrganizationResponse :: DescribeOrganizationResponse
newDescribeOrganizationResponse  = DescribeOrganizationResponse { "Organization": (NullOrUndefined Nothing) }

-- | Constructs DescribeOrganizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeOrganizationResponse' :: ( { "Organization" :: NullOrUndefined.NullOrUndefined (Organization) } -> {"Organization" :: NullOrUndefined.NullOrUndefined (Organization) } ) -> DescribeOrganizationResponse
newDescribeOrganizationResponse'  customize = (DescribeOrganizationResponse <<< customize) { "Organization": (NullOrUndefined Nothing) }



newtype DescribeOrganizationalUnitRequest = DescribeOrganizationalUnitRequest 
  { "OrganizationalUnitId" :: (OrganizationalUnitId)
  }
derive instance newtypeDescribeOrganizationalUnitRequest :: Newtype DescribeOrganizationalUnitRequest _
derive instance repGenericDescribeOrganizationalUnitRequest :: Generic DescribeOrganizationalUnitRequest _
instance showDescribeOrganizationalUnitRequest :: Show DescribeOrganizationalUnitRequest where
  show = genericShow
instance decodeDescribeOrganizationalUnitRequest :: Decode DescribeOrganizationalUnitRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeOrganizationalUnitRequest :: Encode DescribeOrganizationalUnitRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeOrganizationalUnitRequest from required parameters
newDescribeOrganizationalUnitRequest :: OrganizationalUnitId -> DescribeOrganizationalUnitRequest
newDescribeOrganizationalUnitRequest _OrganizationalUnitId = DescribeOrganizationalUnitRequest { "OrganizationalUnitId": _OrganizationalUnitId }

-- | Constructs DescribeOrganizationalUnitRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeOrganizationalUnitRequest' :: OrganizationalUnitId -> ( { "OrganizationalUnitId" :: (OrganizationalUnitId) } -> {"OrganizationalUnitId" :: (OrganizationalUnitId) } ) -> DescribeOrganizationalUnitRequest
newDescribeOrganizationalUnitRequest' _OrganizationalUnitId customize = (DescribeOrganizationalUnitRequest <<< customize) { "OrganizationalUnitId": _OrganizationalUnitId }



newtype DescribeOrganizationalUnitResponse = DescribeOrganizationalUnitResponse 
  { "OrganizationalUnit" :: NullOrUndefined.NullOrUndefined (OrganizationalUnit)
  }
derive instance newtypeDescribeOrganizationalUnitResponse :: Newtype DescribeOrganizationalUnitResponse _
derive instance repGenericDescribeOrganizationalUnitResponse :: Generic DescribeOrganizationalUnitResponse _
instance showDescribeOrganizationalUnitResponse :: Show DescribeOrganizationalUnitResponse where
  show = genericShow
instance decodeDescribeOrganizationalUnitResponse :: Decode DescribeOrganizationalUnitResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribeOrganizationalUnitResponse :: Encode DescribeOrganizationalUnitResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribeOrganizationalUnitResponse from required parameters
newDescribeOrganizationalUnitResponse :: DescribeOrganizationalUnitResponse
newDescribeOrganizationalUnitResponse  = DescribeOrganizationalUnitResponse { "OrganizationalUnit": (NullOrUndefined Nothing) }

-- | Constructs DescribeOrganizationalUnitResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribeOrganizationalUnitResponse' :: ( { "OrganizationalUnit" :: NullOrUndefined.NullOrUndefined (OrganizationalUnit) } -> {"OrganizationalUnit" :: NullOrUndefined.NullOrUndefined (OrganizationalUnit) } ) -> DescribeOrganizationalUnitResponse
newDescribeOrganizationalUnitResponse'  customize = (DescribeOrganizationalUnitResponse <<< customize) { "OrganizationalUnit": (NullOrUndefined Nothing) }



newtype DescribePolicyRequest = DescribePolicyRequest 
  { "PolicyId" :: (PolicyId)
  }
derive instance newtypeDescribePolicyRequest :: Newtype DescribePolicyRequest _
derive instance repGenericDescribePolicyRequest :: Generic DescribePolicyRequest _
instance showDescribePolicyRequest :: Show DescribePolicyRequest where
  show = genericShow
instance decodeDescribePolicyRequest :: Decode DescribePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribePolicyRequest :: Encode DescribePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribePolicyRequest from required parameters
newDescribePolicyRequest :: PolicyId -> DescribePolicyRequest
newDescribePolicyRequest _PolicyId = DescribePolicyRequest { "PolicyId": _PolicyId }

-- | Constructs DescribePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribePolicyRequest' :: PolicyId -> ( { "PolicyId" :: (PolicyId) } -> {"PolicyId" :: (PolicyId) } ) -> DescribePolicyRequest
newDescribePolicyRequest' _PolicyId customize = (DescribePolicyRequest <<< customize) { "PolicyId": _PolicyId }



newtype DescribePolicyResponse = DescribePolicyResponse 
  { "Policy" :: NullOrUndefined.NullOrUndefined (Policy)
  }
derive instance newtypeDescribePolicyResponse :: Newtype DescribePolicyResponse _
derive instance repGenericDescribePolicyResponse :: Generic DescribePolicyResponse _
instance showDescribePolicyResponse :: Show DescribePolicyResponse where
  show = genericShow
instance decodeDescribePolicyResponse :: Decode DescribePolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDescribePolicyResponse :: Encode DescribePolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DescribePolicyResponse from required parameters
newDescribePolicyResponse :: DescribePolicyResponse
newDescribePolicyResponse  = DescribePolicyResponse { "Policy": (NullOrUndefined Nothing) }

-- | Constructs DescribePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDescribePolicyResponse' :: ( { "Policy" :: NullOrUndefined.NullOrUndefined (Policy) } -> {"Policy" :: NullOrUndefined.NullOrUndefined (Policy) } ) -> DescribePolicyResponse
newDescribePolicyResponse'  customize = (DescribePolicyResponse <<< customize) { "Policy": (NullOrUndefined Nothing) }



-- | <p>We can't find the destination container (a root or OU) with the ParentId that you specified.</p>
newtype DestinationParentNotFoundException = DestinationParentNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeDestinationParentNotFoundException :: Newtype DestinationParentNotFoundException _
derive instance repGenericDestinationParentNotFoundException :: Generic DestinationParentNotFoundException _
instance showDestinationParentNotFoundException :: Show DestinationParentNotFoundException where
  show = genericShow
instance decodeDestinationParentNotFoundException :: Decode DestinationParentNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDestinationParentNotFoundException :: Encode DestinationParentNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DestinationParentNotFoundException from required parameters
newDestinationParentNotFoundException :: DestinationParentNotFoundException
newDestinationParentNotFoundException  = DestinationParentNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs DestinationParentNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDestinationParentNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> DestinationParentNotFoundException
newDestinationParentNotFoundException'  customize = (DestinationParentNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype DetachPolicyRequest = DetachPolicyRequest 
  { "PolicyId" :: (PolicyId)
  , "TargetId" :: (PolicyTargetId)
  }
derive instance newtypeDetachPolicyRequest :: Newtype DetachPolicyRequest _
derive instance repGenericDetachPolicyRequest :: Generic DetachPolicyRequest _
instance showDetachPolicyRequest :: Show DetachPolicyRequest where
  show = genericShow
instance decodeDetachPolicyRequest :: Decode DetachPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDetachPolicyRequest :: Encode DetachPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDisableAWSServiceAccessRequest :: Show DisableAWSServiceAccessRequest where
  show = genericShow
instance decodeDisableAWSServiceAccessRequest :: Decode DisableAWSServiceAccessRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisableAWSServiceAccessRequest :: Encode DisableAWSServiceAccessRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showDisablePolicyTypeRequest :: Show DisablePolicyTypeRequest where
  show = genericShow
instance decodeDisablePolicyTypeRequest :: Decode DisablePolicyTypeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisablePolicyTypeRequest :: Encode DisablePolicyTypeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DisablePolicyTypeRequest from required parameters
newDisablePolicyTypeRequest :: PolicyType -> RootId -> DisablePolicyTypeRequest
newDisablePolicyTypeRequest _PolicyType _RootId = DisablePolicyTypeRequest { "PolicyType": _PolicyType, "RootId": _RootId }

-- | Constructs DisablePolicyTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisablePolicyTypeRequest' :: PolicyType -> RootId -> ( { "RootId" :: (RootId) , "PolicyType" :: (PolicyType) } -> {"RootId" :: (RootId) , "PolicyType" :: (PolicyType) } ) -> DisablePolicyTypeRequest
newDisablePolicyTypeRequest' _PolicyType _RootId customize = (DisablePolicyTypeRequest <<< customize) { "PolicyType": _PolicyType, "RootId": _RootId }



newtype DisablePolicyTypeResponse = DisablePolicyTypeResponse 
  { "Root" :: NullOrUndefined.NullOrUndefined (Root)
  }
derive instance newtypeDisablePolicyTypeResponse :: Newtype DisablePolicyTypeResponse _
derive instance repGenericDisablePolicyTypeResponse :: Generic DisablePolicyTypeResponse _
instance showDisablePolicyTypeResponse :: Show DisablePolicyTypeResponse where
  show = genericShow
instance decodeDisablePolicyTypeResponse :: Decode DisablePolicyTypeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDisablePolicyTypeResponse :: Encode DisablePolicyTypeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DisablePolicyTypeResponse from required parameters
newDisablePolicyTypeResponse :: DisablePolicyTypeResponse
newDisablePolicyTypeResponse  = DisablePolicyTypeResponse { "Root": (NullOrUndefined Nothing) }

-- | Constructs DisablePolicyTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDisablePolicyTypeResponse' :: ( { "Root" :: NullOrUndefined.NullOrUndefined (Root) } -> {"Root" :: NullOrUndefined.NullOrUndefined (Root) } ) -> DisablePolicyTypeResponse
newDisablePolicyTypeResponse'  customize = (DisablePolicyTypeResponse <<< customize) { "Root": (NullOrUndefined Nothing) }



-- | <p>That account is already present in the specified destination.</p>
newtype DuplicateAccountException = DuplicateAccountException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeDuplicateAccountException :: Newtype DuplicateAccountException _
derive instance repGenericDuplicateAccountException :: Generic DuplicateAccountException _
instance showDuplicateAccountException :: Show DuplicateAccountException where
  show = genericShow
instance decodeDuplicateAccountException :: Decode DuplicateAccountException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDuplicateAccountException :: Encode DuplicateAccountException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DuplicateAccountException from required parameters
newDuplicateAccountException :: DuplicateAccountException
newDuplicateAccountException  = DuplicateAccountException { "Message": (NullOrUndefined Nothing) }

-- | Constructs DuplicateAccountException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateAccountException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> DuplicateAccountException
newDuplicateAccountException'  customize = (DuplicateAccountException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>A handshake with the same action and target already exists. For example, if you invited an account to join your organization, the invited account might already have a pending invitation from this organization. If you intend to resend an invitation to an account, ensure that existing handshakes that might be considered duplicates are canceled or declined.</p>
newtype DuplicateHandshakeException = DuplicateHandshakeException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeDuplicateHandshakeException :: Newtype DuplicateHandshakeException _
derive instance repGenericDuplicateHandshakeException :: Generic DuplicateHandshakeException _
instance showDuplicateHandshakeException :: Show DuplicateHandshakeException where
  show = genericShow
instance decodeDuplicateHandshakeException :: Decode DuplicateHandshakeException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDuplicateHandshakeException :: Encode DuplicateHandshakeException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DuplicateHandshakeException from required parameters
newDuplicateHandshakeException :: DuplicateHandshakeException
newDuplicateHandshakeException  = DuplicateHandshakeException { "Message": (NullOrUndefined Nothing) }

-- | Constructs DuplicateHandshakeException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateHandshakeException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> DuplicateHandshakeException
newDuplicateHandshakeException'  customize = (DuplicateHandshakeException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>An organizational unit (OU) with the same name already exists.</p>
newtype DuplicateOrganizationalUnitException = DuplicateOrganizationalUnitException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeDuplicateOrganizationalUnitException :: Newtype DuplicateOrganizationalUnitException _
derive instance repGenericDuplicateOrganizationalUnitException :: Generic DuplicateOrganizationalUnitException _
instance showDuplicateOrganizationalUnitException :: Show DuplicateOrganizationalUnitException where
  show = genericShow
instance decodeDuplicateOrganizationalUnitException :: Decode DuplicateOrganizationalUnitException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDuplicateOrganizationalUnitException :: Encode DuplicateOrganizationalUnitException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DuplicateOrganizationalUnitException from required parameters
newDuplicateOrganizationalUnitException :: DuplicateOrganizationalUnitException
newDuplicateOrganizationalUnitException  = DuplicateOrganizationalUnitException { "Message": (NullOrUndefined Nothing) }

-- | Constructs DuplicateOrganizationalUnitException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicateOrganizationalUnitException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> DuplicateOrganizationalUnitException
newDuplicateOrganizationalUnitException'  customize = (DuplicateOrganizationalUnitException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The selected policy is already attached to the specified target.</p>
newtype DuplicatePolicyAttachmentException = DuplicatePolicyAttachmentException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeDuplicatePolicyAttachmentException :: Newtype DuplicatePolicyAttachmentException _
derive instance repGenericDuplicatePolicyAttachmentException :: Generic DuplicatePolicyAttachmentException _
instance showDuplicatePolicyAttachmentException :: Show DuplicatePolicyAttachmentException where
  show = genericShow
instance decodeDuplicatePolicyAttachmentException :: Decode DuplicatePolicyAttachmentException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDuplicatePolicyAttachmentException :: Encode DuplicatePolicyAttachmentException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DuplicatePolicyAttachmentException from required parameters
newDuplicatePolicyAttachmentException :: DuplicatePolicyAttachmentException
newDuplicatePolicyAttachmentException  = DuplicatePolicyAttachmentException { "Message": (NullOrUndefined Nothing) }

-- | Constructs DuplicatePolicyAttachmentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicatePolicyAttachmentException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> DuplicatePolicyAttachmentException
newDuplicatePolicyAttachmentException'  customize = (DuplicatePolicyAttachmentException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>A policy with the same name already exists.</p>
newtype DuplicatePolicyException = DuplicatePolicyException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeDuplicatePolicyException :: Newtype DuplicatePolicyException _
derive instance repGenericDuplicatePolicyException :: Generic DuplicatePolicyException _
instance showDuplicatePolicyException :: Show DuplicatePolicyException where
  show = genericShow
instance decodeDuplicatePolicyException :: Decode DuplicatePolicyException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeDuplicatePolicyException :: Encode DuplicatePolicyException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs DuplicatePolicyException from required parameters
newDuplicatePolicyException :: DuplicatePolicyException
newDuplicatePolicyException  = DuplicatePolicyException { "Message": (NullOrUndefined Nothing) }

-- | Constructs DuplicatePolicyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newDuplicatePolicyException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> DuplicatePolicyException
newDuplicatePolicyException'  customize = (DuplicatePolicyException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype Email = Email String
derive instance newtypeEmail :: Newtype Email _
derive instance repGenericEmail :: Generic Email _
instance showEmail :: Show Email where
  show = genericShow
instance decodeEmail :: Decode Email where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEmail :: Encode Email where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EnableAWSServiceAccessRequest = EnableAWSServiceAccessRequest 
  { "ServicePrincipal" :: (ServicePrincipal)
  }
derive instance newtypeEnableAWSServiceAccessRequest :: Newtype EnableAWSServiceAccessRequest _
derive instance repGenericEnableAWSServiceAccessRequest :: Generic EnableAWSServiceAccessRequest _
instance showEnableAWSServiceAccessRequest :: Show EnableAWSServiceAccessRequest where
  show = genericShow
instance decodeEnableAWSServiceAccessRequest :: Decode EnableAWSServiceAccessRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnableAWSServiceAccessRequest :: Encode EnableAWSServiceAccessRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showEnableAllFeaturesRequest :: Show EnableAllFeaturesRequest where
  show = genericShow
instance decodeEnableAllFeaturesRequest :: Decode EnableAllFeaturesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnableAllFeaturesRequest :: Encode EnableAllFeaturesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype EnableAllFeaturesResponse = EnableAllFeaturesResponse 
  { "Handshake" :: NullOrUndefined.NullOrUndefined (Handshake)
  }
derive instance newtypeEnableAllFeaturesResponse :: Newtype EnableAllFeaturesResponse _
derive instance repGenericEnableAllFeaturesResponse :: Generic EnableAllFeaturesResponse _
instance showEnableAllFeaturesResponse :: Show EnableAllFeaturesResponse where
  show = genericShow
instance decodeEnableAllFeaturesResponse :: Decode EnableAllFeaturesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnableAllFeaturesResponse :: Encode EnableAllFeaturesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EnableAllFeaturesResponse from required parameters
newEnableAllFeaturesResponse :: EnableAllFeaturesResponse
newEnableAllFeaturesResponse  = EnableAllFeaturesResponse { "Handshake": (NullOrUndefined Nothing) }

-- | Constructs EnableAllFeaturesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnableAllFeaturesResponse' :: ( { "Handshake" :: NullOrUndefined.NullOrUndefined (Handshake) } -> {"Handshake" :: NullOrUndefined.NullOrUndefined (Handshake) } ) -> EnableAllFeaturesResponse
newEnableAllFeaturesResponse'  customize = (EnableAllFeaturesResponse <<< customize) { "Handshake": (NullOrUndefined Nothing) }



newtype EnablePolicyTypeRequest = EnablePolicyTypeRequest 
  { "RootId" :: (RootId)
  , "PolicyType" :: (PolicyType)
  }
derive instance newtypeEnablePolicyTypeRequest :: Newtype EnablePolicyTypeRequest _
derive instance repGenericEnablePolicyTypeRequest :: Generic EnablePolicyTypeRequest _
instance showEnablePolicyTypeRequest :: Show EnablePolicyTypeRequest where
  show = genericShow
instance decodeEnablePolicyTypeRequest :: Decode EnablePolicyTypeRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnablePolicyTypeRequest :: Encode EnablePolicyTypeRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EnablePolicyTypeRequest from required parameters
newEnablePolicyTypeRequest :: PolicyType -> RootId -> EnablePolicyTypeRequest
newEnablePolicyTypeRequest _PolicyType _RootId = EnablePolicyTypeRequest { "PolicyType": _PolicyType, "RootId": _RootId }

-- | Constructs EnablePolicyTypeRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnablePolicyTypeRequest' :: PolicyType -> RootId -> ( { "RootId" :: (RootId) , "PolicyType" :: (PolicyType) } -> {"RootId" :: (RootId) , "PolicyType" :: (PolicyType) } ) -> EnablePolicyTypeRequest
newEnablePolicyTypeRequest' _PolicyType _RootId customize = (EnablePolicyTypeRequest <<< customize) { "PolicyType": _PolicyType, "RootId": _RootId }



newtype EnablePolicyTypeResponse = EnablePolicyTypeResponse 
  { "Root" :: NullOrUndefined.NullOrUndefined (Root)
  }
derive instance newtypeEnablePolicyTypeResponse :: Newtype EnablePolicyTypeResponse _
derive instance repGenericEnablePolicyTypeResponse :: Generic EnablePolicyTypeResponse _
instance showEnablePolicyTypeResponse :: Show EnablePolicyTypeResponse where
  show = genericShow
instance decodeEnablePolicyTypeResponse :: Decode EnablePolicyTypeResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnablePolicyTypeResponse :: Encode EnablePolicyTypeResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EnablePolicyTypeResponse from required parameters
newEnablePolicyTypeResponse :: EnablePolicyTypeResponse
newEnablePolicyTypeResponse  = EnablePolicyTypeResponse { "Root": (NullOrUndefined Nothing) }

-- | Constructs EnablePolicyTypeResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnablePolicyTypeResponse' :: ( { "Root" :: NullOrUndefined.NullOrUndefined (Root) } -> {"Root" :: NullOrUndefined.NullOrUndefined (Root) } ) -> EnablePolicyTypeResponse
newEnablePolicyTypeResponse'  customize = (EnablePolicyTypeResponse <<< customize) { "Root": (NullOrUndefined Nothing) }



-- | <p>A structure that contains details of a service principal that is enabled to integrate with AWS Organizations.</p>
newtype EnabledServicePrincipal = EnabledServicePrincipal 
  { "ServicePrincipal" :: NullOrUndefined.NullOrUndefined (ServicePrincipal)
  , "DateEnabled" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  }
derive instance newtypeEnabledServicePrincipal :: Newtype EnabledServicePrincipal _
derive instance repGenericEnabledServicePrincipal :: Generic EnabledServicePrincipal _
instance showEnabledServicePrincipal :: Show EnabledServicePrincipal where
  show = genericShow
instance decodeEnabledServicePrincipal :: Decode EnabledServicePrincipal where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnabledServicePrincipal :: Encode EnabledServicePrincipal where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs EnabledServicePrincipal from required parameters
newEnabledServicePrincipal :: EnabledServicePrincipal
newEnabledServicePrincipal  = EnabledServicePrincipal { "DateEnabled": (NullOrUndefined Nothing), "ServicePrincipal": (NullOrUndefined Nothing) }

-- | Constructs EnabledServicePrincipal's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newEnabledServicePrincipal' :: ( { "ServicePrincipal" :: NullOrUndefined.NullOrUndefined (ServicePrincipal) , "DateEnabled" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } -> {"ServicePrincipal" :: NullOrUndefined.NullOrUndefined (ServicePrincipal) , "DateEnabled" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) } ) -> EnabledServicePrincipal
newEnabledServicePrincipal'  customize = (EnabledServicePrincipal <<< customize) { "DateEnabled": (NullOrUndefined Nothing), "ServicePrincipal": (NullOrUndefined Nothing) }



newtype EnabledServicePrincipals = EnabledServicePrincipals (Array EnabledServicePrincipal)
derive instance newtypeEnabledServicePrincipals :: Newtype EnabledServicePrincipals _
derive instance repGenericEnabledServicePrincipals :: Generic EnabledServicePrincipals _
instance showEnabledServicePrincipals :: Show EnabledServicePrincipals where
  show = genericShow
instance decodeEnabledServicePrincipals :: Decode EnabledServicePrincipals where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeEnabledServicePrincipals :: Encode EnabledServicePrincipals where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ExceptionMessage = ExceptionMessage String
derive instance newtypeExceptionMessage :: Newtype ExceptionMessage _
derive instance repGenericExceptionMessage :: Generic ExceptionMessage _
instance showExceptionMessage :: Show ExceptionMessage where
  show = genericShow
instance decodeExceptionMessage :: Decode ExceptionMessage where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExceptionMessage :: Encode ExceptionMessage where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype ExceptionType = ExceptionType String
derive instance newtypeExceptionType :: Newtype ExceptionType _
derive instance repGenericExceptionType :: Generic ExceptionType _
instance showExceptionType :: Show ExceptionType where
  show = genericShow
instance decodeExceptionType :: Decode ExceptionType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeExceptionType :: Encode ExceptionType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>AWS Organizations could not finalize the creation of your organization. Try again later. If this persists, contact AWS customer support.</p>
newtype FinalizingOrganizationException = FinalizingOrganizationException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeFinalizingOrganizationException :: Newtype FinalizingOrganizationException _
derive instance repGenericFinalizingOrganizationException :: Generic FinalizingOrganizationException _
instance showFinalizingOrganizationException :: Show FinalizingOrganizationException where
  show = genericShow
instance decodeFinalizingOrganizationException :: Decode FinalizingOrganizationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeFinalizingOrganizationException :: Encode FinalizingOrganizationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs FinalizingOrganizationException from required parameters
newFinalizingOrganizationException :: FinalizingOrganizationException
newFinalizingOrganizationException  = FinalizingOrganizationException { "Message": (NullOrUndefined Nothing) }

-- | Constructs FinalizingOrganizationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newFinalizingOrganizationException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> FinalizingOrganizationException
newFinalizingOrganizationException'  customize = (FinalizingOrganizationException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype GenericArn = GenericArn String
derive instance newtypeGenericArn :: Newtype GenericArn _
derive instance repGenericGenericArn :: Generic GenericArn _
instance showGenericArn :: Show GenericArn where
  show = genericShow
instance decodeGenericArn :: Decode GenericArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeGenericArn :: Encode GenericArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information that must be exchanged to securely establish a relationship between two accounts (an <i>originator</i> and a <i>recipient</i>). For example, when a master account (the originator) invites another account (the recipient) to join its organization, the two accounts exchange information as a series of handshake requests and responses.</p> <p> <b>Note:</b> Handshakes that are CANCELED, ACCEPTED, or DECLINED show up in lists for only 30 days after entering that state After that they are deleted.</p>
newtype Handshake = Handshake 
  { "Id" :: NullOrUndefined.NullOrUndefined (HandshakeId)
  , "Arn" :: NullOrUndefined.NullOrUndefined (HandshakeArn)
  , "Parties" :: NullOrUndefined.NullOrUndefined (HandshakeParties)
  , "State" :: NullOrUndefined.NullOrUndefined (HandshakeState)
  , "RequestedTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "ExpirationTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp)
  , "Action" :: NullOrUndefined.NullOrUndefined (ActionType)
  , "Resources" :: NullOrUndefined.NullOrUndefined (HandshakeResources)
  }
derive instance newtypeHandshake :: Newtype Handshake _
derive instance repGenericHandshake :: Generic Handshake _
instance showHandshake :: Show Handshake where
  show = genericShow
instance decodeHandshake :: Decode Handshake where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshake :: Encode Handshake where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Handshake from required parameters
newHandshake :: Handshake
newHandshake  = Handshake { "Action": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "ExpirationTimestamp": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Parties": (NullOrUndefined Nothing), "RequestedTimestamp": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing) }

-- | Constructs Handshake's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHandshake' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (HandshakeId) , "Arn" :: NullOrUndefined.NullOrUndefined (HandshakeArn) , "Parties" :: NullOrUndefined.NullOrUndefined (HandshakeParties) , "State" :: NullOrUndefined.NullOrUndefined (HandshakeState) , "RequestedTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "ExpirationTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Action" :: NullOrUndefined.NullOrUndefined (ActionType) , "Resources" :: NullOrUndefined.NullOrUndefined (HandshakeResources) } -> {"Id" :: NullOrUndefined.NullOrUndefined (HandshakeId) , "Arn" :: NullOrUndefined.NullOrUndefined (HandshakeArn) , "Parties" :: NullOrUndefined.NullOrUndefined (HandshakeParties) , "State" :: NullOrUndefined.NullOrUndefined (HandshakeState) , "RequestedTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "ExpirationTimestamp" :: NullOrUndefined.NullOrUndefined (Types.Timestamp) , "Action" :: NullOrUndefined.NullOrUndefined (ActionType) , "Resources" :: NullOrUndefined.NullOrUndefined (HandshakeResources) } ) -> Handshake
newHandshake'  customize = (Handshake <<< customize) { "Action": (NullOrUndefined Nothing), "Arn": (NullOrUndefined Nothing), "ExpirationTimestamp": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Parties": (NullOrUndefined Nothing), "RequestedTimestamp": (NullOrUndefined Nothing), "Resources": (NullOrUndefined Nothing), "State": (NullOrUndefined Nothing) }



-- | <p>The specified handshake is already in the requested state. For example, you can't accept a handshake that was already accepted.</p>
newtype HandshakeAlreadyInStateException = HandshakeAlreadyInStateException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeHandshakeAlreadyInStateException :: Newtype HandshakeAlreadyInStateException _
derive instance repGenericHandshakeAlreadyInStateException :: Generic HandshakeAlreadyInStateException _
instance showHandshakeAlreadyInStateException :: Show HandshakeAlreadyInStateException where
  show = genericShow
instance decodeHandshakeAlreadyInStateException :: Decode HandshakeAlreadyInStateException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeAlreadyInStateException :: Encode HandshakeAlreadyInStateException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs HandshakeAlreadyInStateException from required parameters
newHandshakeAlreadyInStateException :: HandshakeAlreadyInStateException
newHandshakeAlreadyInStateException  = HandshakeAlreadyInStateException { "Message": (NullOrUndefined Nothing) }

-- | Constructs HandshakeAlreadyInStateException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHandshakeAlreadyInStateException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> HandshakeAlreadyInStateException
newHandshakeAlreadyInStateException'  customize = (HandshakeAlreadyInStateException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype HandshakeArn = HandshakeArn String
derive instance newtypeHandshakeArn :: Newtype HandshakeArn _
derive instance repGenericHandshakeArn :: Generic HandshakeArn _
instance showHandshakeArn :: Show HandshakeArn where
  show = genericShow
instance decodeHandshakeArn :: Decode HandshakeArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeArn :: Encode HandshakeArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The requested operation would violate the constraint identified in the reason code.</p> <note> <p>Some of the reasons in the following list might not be applicable to this specific API or operation:</p> </note> <ul> <li> <p>ACCOUNT_NUMBER_LIMIT_EXCEEDED: You attempted to exceed the limit on the number of accounts in an organization. <b>Note</b>: deleted and closed accounts still count toward your limit.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important> </li> <li> <p>HANDSHAKE_RATE_LIMIT_EXCEEDED: You attempted to exceed the number of handshakes you can send in one day.</p> </li> <li> <p>ALREADY_IN_AN_ORGANIZATION: The handshake request is invalid because the invited account is already a member of an organization.</p> </li> <li> <p>ORGANIZATION_ALREADY_HAS_ALL_FEATURES: The handshake request is invalid because the organization has already enabled all features.</p> </li> <li> <p>INVITE_DISABLED_DURING_ENABLE_ALL_FEATURES: You cannot issue new invitations to join an organization while it is in the process of enabling all features. You can resume inviting accounts after you finalize the process when all accounts have agreed to the change.</p> </li> <li> <p>PAYMENT_INSTRUMENT_REQUIRED: You cannot complete the operation with an account that does not have a payment instrument, such as a credit card, associated with it.</p> </li> <li> <p>ORGANIZATION_FROM_DIFFERENT_SELLER_OF_RECORD: The request failed because the account is from a different marketplace than the accounts in the organization. For example, accounts with India addresses must be associated with the AISPL marketplace. All accounts in an organization must be from the same marketplace.</p> </li> <li> <p>ORGANIZATION_MEMBERSHIP_CHANGE_RATE_LIMIT_EXCEEDED: You attempted to change the membership of an account too quickly after its previous change.</p> </li> </ul>
newtype HandshakeConstraintViolationException = HandshakeConstraintViolationException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  , "Reason" :: NullOrUndefined.NullOrUndefined (HandshakeConstraintViolationExceptionReason)
  }
derive instance newtypeHandshakeConstraintViolationException :: Newtype HandshakeConstraintViolationException _
derive instance repGenericHandshakeConstraintViolationException :: Generic HandshakeConstraintViolationException _
instance showHandshakeConstraintViolationException :: Show HandshakeConstraintViolationException where
  show = genericShow
instance decodeHandshakeConstraintViolationException :: Decode HandshakeConstraintViolationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeConstraintViolationException :: Encode HandshakeConstraintViolationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs HandshakeConstraintViolationException from required parameters
newHandshakeConstraintViolationException :: HandshakeConstraintViolationException
newHandshakeConstraintViolationException  = HandshakeConstraintViolationException { "Message": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }

-- | Constructs HandshakeConstraintViolationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHandshakeConstraintViolationException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) , "Reason" :: NullOrUndefined.NullOrUndefined (HandshakeConstraintViolationExceptionReason) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) , "Reason" :: NullOrUndefined.NullOrUndefined (HandshakeConstraintViolationExceptionReason) } ) -> HandshakeConstraintViolationException
newHandshakeConstraintViolationException'  customize = (HandshakeConstraintViolationException <<< customize) { "Message": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }



newtype HandshakeConstraintViolationExceptionReason = HandshakeConstraintViolationExceptionReason String
derive instance newtypeHandshakeConstraintViolationExceptionReason :: Newtype HandshakeConstraintViolationExceptionReason _
derive instance repGenericHandshakeConstraintViolationExceptionReason :: Generic HandshakeConstraintViolationExceptionReason _
instance showHandshakeConstraintViolationExceptionReason :: Show HandshakeConstraintViolationExceptionReason where
  show = genericShow
instance decodeHandshakeConstraintViolationExceptionReason :: Decode HandshakeConstraintViolationExceptionReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeConstraintViolationExceptionReason :: Encode HandshakeConstraintViolationExceptionReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Specifies the criteria that are used to select the handshakes for the operation.</p>
newtype HandshakeFilter = HandshakeFilter 
  { "ActionType" :: NullOrUndefined.NullOrUndefined (ActionType)
  , "ParentHandshakeId" :: NullOrUndefined.NullOrUndefined (HandshakeId)
  }
derive instance newtypeHandshakeFilter :: Newtype HandshakeFilter _
derive instance repGenericHandshakeFilter :: Generic HandshakeFilter _
instance showHandshakeFilter :: Show HandshakeFilter where
  show = genericShow
instance decodeHandshakeFilter :: Decode HandshakeFilter where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeFilter :: Encode HandshakeFilter where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs HandshakeFilter from required parameters
newHandshakeFilter :: HandshakeFilter
newHandshakeFilter  = HandshakeFilter { "ActionType": (NullOrUndefined Nothing), "ParentHandshakeId": (NullOrUndefined Nothing) }

-- | Constructs HandshakeFilter's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHandshakeFilter' :: ( { "ActionType" :: NullOrUndefined.NullOrUndefined (ActionType) , "ParentHandshakeId" :: NullOrUndefined.NullOrUndefined (HandshakeId) } -> {"ActionType" :: NullOrUndefined.NullOrUndefined (ActionType) , "ParentHandshakeId" :: NullOrUndefined.NullOrUndefined (HandshakeId) } ) -> HandshakeFilter
newHandshakeFilter'  customize = (HandshakeFilter <<< customize) { "ActionType": (NullOrUndefined Nothing), "ParentHandshakeId": (NullOrUndefined Nothing) }



newtype HandshakeId = HandshakeId String
derive instance newtypeHandshakeId :: Newtype HandshakeId _
derive instance repGenericHandshakeId :: Generic HandshakeId _
instance showHandshakeId :: Show HandshakeId where
  show = genericShow
instance decodeHandshakeId :: Decode HandshakeId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeId :: Encode HandshakeId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>We can't find a handshake with the HandshakeId that you specified.</p>
newtype HandshakeNotFoundException = HandshakeNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeHandshakeNotFoundException :: Newtype HandshakeNotFoundException _
derive instance repGenericHandshakeNotFoundException :: Generic HandshakeNotFoundException _
instance showHandshakeNotFoundException :: Show HandshakeNotFoundException where
  show = genericShow
instance decodeHandshakeNotFoundException :: Decode HandshakeNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeNotFoundException :: Encode HandshakeNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs HandshakeNotFoundException from required parameters
newHandshakeNotFoundException :: HandshakeNotFoundException
newHandshakeNotFoundException  = HandshakeNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs HandshakeNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHandshakeNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> HandshakeNotFoundException
newHandshakeNotFoundException'  customize = (HandshakeNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype HandshakeNotes = HandshakeNotes String
derive instance newtypeHandshakeNotes :: Newtype HandshakeNotes _
derive instance repGenericHandshakeNotes :: Generic HandshakeNotes _
instance showHandshakeNotes :: Show HandshakeNotes where
  show = genericShow
instance decodeHandshakeNotes :: Decode HandshakeNotes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeNotes :: Encode HandshakeNotes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype HandshakeParties = HandshakeParties (Array HandshakeParty)
derive instance newtypeHandshakeParties :: Newtype HandshakeParties _
derive instance repGenericHandshakeParties :: Generic HandshakeParties _
instance showHandshakeParties :: Show HandshakeParties where
  show = genericShow
instance decodeHandshakeParties :: Decode HandshakeParties where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeParties :: Encode HandshakeParties where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Identifies a participant in a handshake.</p>
newtype HandshakeParty = HandshakeParty 
  { "Id" :: (HandshakePartyId)
  , "Type" :: (HandshakePartyType)
  }
derive instance newtypeHandshakeParty :: Newtype HandshakeParty _
derive instance repGenericHandshakeParty :: Generic HandshakeParty _
instance showHandshakeParty :: Show HandshakeParty where
  show = genericShow
instance decodeHandshakeParty :: Decode HandshakeParty where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeParty :: Encode HandshakeParty where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showHandshakePartyId :: Show HandshakePartyId where
  show = genericShow
instance decodeHandshakePartyId :: Decode HandshakePartyId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakePartyId :: Encode HandshakePartyId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype HandshakePartyType = HandshakePartyType String
derive instance newtypeHandshakePartyType :: Newtype HandshakePartyType _
derive instance repGenericHandshakePartyType :: Generic HandshakePartyType _
instance showHandshakePartyType :: Show HandshakePartyType where
  show = genericShow
instance decodeHandshakePartyType :: Decode HandshakePartyType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakePartyType :: Encode HandshakePartyType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains additional data that is needed to process a handshake.</p>
newtype HandshakeResource = HandshakeResource 
  { "Value" :: NullOrUndefined.NullOrUndefined (HandshakeResourceValue)
  , "Type" :: NullOrUndefined.NullOrUndefined (HandshakeResourceType)
  }
derive instance newtypeHandshakeResource :: Newtype HandshakeResource _
derive instance repGenericHandshakeResource :: Generic HandshakeResource _
instance showHandshakeResource :: Show HandshakeResource where
  show = genericShow
instance decodeHandshakeResource :: Decode HandshakeResource where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeResource :: Encode HandshakeResource where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs HandshakeResource from required parameters
newHandshakeResource :: HandshakeResource
newHandshakeResource  = HandshakeResource { "Type": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }

-- | Constructs HandshakeResource's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newHandshakeResource' :: ( { "Value" :: NullOrUndefined.NullOrUndefined (HandshakeResourceValue) , "Type" :: NullOrUndefined.NullOrUndefined (HandshakeResourceType) } -> {"Value" :: NullOrUndefined.NullOrUndefined (HandshakeResourceValue) , "Type" :: NullOrUndefined.NullOrUndefined (HandshakeResourceType) } ) -> HandshakeResource
newHandshakeResource'  customize = (HandshakeResource <<< customize) { "Type": (NullOrUndefined Nothing), "Value": (NullOrUndefined Nothing) }



newtype HandshakeResourceType = HandshakeResourceType String
derive instance newtypeHandshakeResourceType :: Newtype HandshakeResourceType _
derive instance repGenericHandshakeResourceType :: Generic HandshakeResourceType _
instance showHandshakeResourceType :: Show HandshakeResourceType where
  show = genericShow
instance decodeHandshakeResourceType :: Decode HandshakeResourceType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeResourceType :: Encode HandshakeResourceType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype HandshakeResourceValue = HandshakeResourceValue String
derive instance newtypeHandshakeResourceValue :: Newtype HandshakeResourceValue _
derive instance repGenericHandshakeResourceValue :: Generic HandshakeResourceValue _
instance showHandshakeResourceValue :: Show HandshakeResourceValue where
  show = genericShow
instance decodeHandshakeResourceValue :: Decode HandshakeResourceValue where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeResourceValue :: Encode HandshakeResourceValue where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype HandshakeResources = HandshakeResources (Array HandshakeResource)
derive instance newtypeHandshakeResources :: Newtype HandshakeResources _
derive instance repGenericHandshakeResources :: Generic HandshakeResources _
instance showHandshakeResources :: Show HandshakeResources where
  show = genericShow
instance decodeHandshakeResources :: Decode HandshakeResources where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeResources :: Encode HandshakeResources where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype HandshakeState = HandshakeState String
derive instance newtypeHandshakeState :: Newtype HandshakeState _
derive instance repGenericHandshakeState :: Generic HandshakeState _
instance showHandshakeState :: Show HandshakeState where
  show = genericShow
instance decodeHandshakeState :: Decode HandshakeState where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakeState :: Encode HandshakeState where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Handshakes = Handshakes (Array Handshake)
derive instance newtypeHandshakes :: Newtype Handshakes _
derive instance repGenericHandshakes :: Generic Handshakes _
instance showHandshakes :: Show Handshakes where
  show = genericShow
instance decodeHandshakes :: Decode Handshakes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeHandshakes :: Encode Handshakes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype IAMUserAccessToBilling = IAMUserAccessToBilling String
derive instance newtypeIAMUserAccessToBilling :: Newtype IAMUserAccessToBilling _
derive instance repGenericIAMUserAccessToBilling :: Generic IAMUserAccessToBilling _
instance showIAMUserAccessToBilling :: Show IAMUserAccessToBilling where
  show = genericShow
instance decodeIAMUserAccessToBilling :: Decode IAMUserAccessToBilling where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeIAMUserAccessToBilling :: Encode IAMUserAccessToBilling where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>You can't perform the operation on the handshake in its current state. For example, you can't cancel a handshake that was already accepted, or accept a handshake that was already declined.</p>
newtype InvalidHandshakeTransitionException = InvalidHandshakeTransitionException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeInvalidHandshakeTransitionException :: Newtype InvalidHandshakeTransitionException _
derive instance repGenericInvalidHandshakeTransitionException :: Generic InvalidHandshakeTransitionException _
instance showInvalidHandshakeTransitionException :: Show InvalidHandshakeTransitionException where
  show = genericShow
instance decodeInvalidHandshakeTransitionException :: Decode InvalidHandshakeTransitionException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidHandshakeTransitionException :: Encode InvalidHandshakeTransitionException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidHandshakeTransitionException from required parameters
newInvalidHandshakeTransitionException :: InvalidHandshakeTransitionException
newInvalidHandshakeTransitionException  = InvalidHandshakeTransitionException { "Message": (NullOrUndefined Nothing) }

-- | Constructs InvalidHandshakeTransitionException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidHandshakeTransitionException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> InvalidHandshakeTransitionException
newInvalidHandshakeTransitionException'  customize = (InvalidHandshakeTransitionException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The requested operation failed because you provided invalid values for one or more of the request parameters. This exception includes a reason that contains additional information about the violated limit:</p> <note> <p>Some of the reasons in the following list might not be applicable to this specific API or operation:</p> </note> <ul> <li> <p>INVALID_PARTY_TYPE_TARGET: You specified the wrong type of entity (account, organization, or email) as a party.</p> </li> <li> <p>INVALID_SYNTAX_ORGANIZATION_ARN: You specified an invalid ARN for the organization.</p> </li> <li> <p>INVALID_SYNTAX_POLICY_ID: You specified an invalid policy ID. </p> </li> <li> <p>INVALID_ENUM: You specified a value that is not valid for that parameter.</p> </li> <li> <p>INVALID_FULL_NAME_TARGET: You specified a full name that contains invalid characters.</p> </li> <li> <p>INVALID_LIST_MEMBER: You provided a list to a parameter that contains at least one invalid value.</p> </li> <li> <p>MAX_LENGTH_EXCEEDED: You provided a string parameter that is longer than allowed.</p> </li> <li> <p>MAX_VALUE_EXCEEDED: You provided a numeric parameter that has a larger value than allowed.</p> </li> <li> <p>MIN_LENGTH_EXCEEDED: You provided a string parameter that is shorter than allowed.</p> </li> <li> <p>MIN_VALUE_EXCEEDED: You provided a numeric parameter that has a smaller value than allowed.</p> </li> <li> <p>IMMUTABLE_POLICY: You specified a policy that is managed by AWS and cannot be modified.</p> </li> <li> <p>INVALID_PATTERN: You provided a value that doesn't match the required pattern.</p> </li> <li> <p>INVALID_PATTERN_TARGET_ID: You specified a policy target ID that doesn't match the required pattern.</p> </li> <li> <p>INPUT_REQUIRED: You must include a value for all required parameters.</p> </li> <li> <p>INVALID_PAGINATION_TOKEN: Get the value for the NextToken parameter from the response to a previous call of the operation.</p> </li> <li> <p>MAX_FILTER_LIMIT_EXCEEDED: You can specify only one filter parameter for the operation.</p> </li> <li> <p>MOVING_ACCOUNT_BETWEEN_DIFFERENT_ROOTS: You can move an account only between entities in the same root.</p> </li> </ul>
newtype InvalidInputException = InvalidInputException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  , "Reason" :: NullOrUndefined.NullOrUndefined (InvalidInputExceptionReason)
  }
derive instance newtypeInvalidInputException :: Newtype InvalidInputException _
derive instance repGenericInvalidInputException :: Generic InvalidInputException _
instance showInvalidInputException :: Show InvalidInputException where
  show = genericShow
instance decodeInvalidInputException :: Decode InvalidInputException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidInputException :: Encode InvalidInputException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InvalidInputException from required parameters
newInvalidInputException :: InvalidInputException
newInvalidInputException  = InvalidInputException { "Message": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }

-- | Constructs InvalidInputException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInvalidInputException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) , "Reason" :: NullOrUndefined.NullOrUndefined (InvalidInputExceptionReason) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) , "Reason" :: NullOrUndefined.NullOrUndefined (InvalidInputExceptionReason) } ) -> InvalidInputException
newInvalidInputException'  customize = (InvalidInputException <<< customize) { "Message": (NullOrUndefined Nothing), "Reason": (NullOrUndefined Nothing) }



newtype InvalidInputExceptionReason = InvalidInputExceptionReason String
derive instance newtypeInvalidInputExceptionReason :: Newtype InvalidInputExceptionReason _
derive instance repGenericInvalidInputExceptionReason :: Generic InvalidInputExceptionReason _
instance showInvalidInputExceptionReason :: Show InvalidInputExceptionReason where
  show = genericShow
instance decodeInvalidInputExceptionReason :: Decode InvalidInputExceptionReason where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInvalidInputExceptionReason :: Encode InvalidInputExceptionReason where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype InviteAccountToOrganizationRequest = InviteAccountToOrganizationRequest 
  { "Target" :: (HandshakeParty)
  , "Notes" :: NullOrUndefined.NullOrUndefined (HandshakeNotes)
  }
derive instance newtypeInviteAccountToOrganizationRequest :: Newtype InviteAccountToOrganizationRequest _
derive instance repGenericInviteAccountToOrganizationRequest :: Generic InviteAccountToOrganizationRequest _
instance showInviteAccountToOrganizationRequest :: Show InviteAccountToOrganizationRequest where
  show = genericShow
instance decodeInviteAccountToOrganizationRequest :: Decode InviteAccountToOrganizationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInviteAccountToOrganizationRequest :: Encode InviteAccountToOrganizationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InviteAccountToOrganizationRequest from required parameters
newInviteAccountToOrganizationRequest :: HandshakeParty -> InviteAccountToOrganizationRequest
newInviteAccountToOrganizationRequest _Target = InviteAccountToOrganizationRequest { "Target": _Target, "Notes": (NullOrUndefined Nothing) }

-- | Constructs InviteAccountToOrganizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInviteAccountToOrganizationRequest' :: HandshakeParty -> ( { "Target" :: (HandshakeParty) , "Notes" :: NullOrUndefined.NullOrUndefined (HandshakeNotes) } -> {"Target" :: (HandshakeParty) , "Notes" :: NullOrUndefined.NullOrUndefined (HandshakeNotes) } ) -> InviteAccountToOrganizationRequest
newInviteAccountToOrganizationRequest' _Target customize = (InviteAccountToOrganizationRequest <<< customize) { "Target": _Target, "Notes": (NullOrUndefined Nothing) }



newtype InviteAccountToOrganizationResponse = InviteAccountToOrganizationResponse 
  { "Handshake" :: NullOrUndefined.NullOrUndefined (Handshake)
  }
derive instance newtypeInviteAccountToOrganizationResponse :: Newtype InviteAccountToOrganizationResponse _
derive instance repGenericInviteAccountToOrganizationResponse :: Generic InviteAccountToOrganizationResponse _
instance showInviteAccountToOrganizationResponse :: Show InviteAccountToOrganizationResponse where
  show = genericShow
instance decodeInviteAccountToOrganizationResponse :: Decode InviteAccountToOrganizationResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeInviteAccountToOrganizationResponse :: Encode InviteAccountToOrganizationResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs InviteAccountToOrganizationResponse from required parameters
newInviteAccountToOrganizationResponse :: InviteAccountToOrganizationResponse
newInviteAccountToOrganizationResponse  = InviteAccountToOrganizationResponse { "Handshake": (NullOrUndefined Nothing) }

-- | Constructs InviteAccountToOrganizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newInviteAccountToOrganizationResponse' :: ( { "Handshake" :: NullOrUndefined.NullOrUndefined (Handshake) } -> {"Handshake" :: NullOrUndefined.NullOrUndefined (Handshake) } ) -> InviteAccountToOrganizationResponse
newInviteAccountToOrganizationResponse'  customize = (InviteAccountToOrganizationResponse <<< customize) { "Handshake": (NullOrUndefined Nothing) }



newtype ListAWSServiceAccessForOrganizationRequest = ListAWSServiceAccessForOrganizationRequest 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListAWSServiceAccessForOrganizationRequest :: Newtype ListAWSServiceAccessForOrganizationRequest _
derive instance repGenericListAWSServiceAccessForOrganizationRequest :: Generic ListAWSServiceAccessForOrganizationRequest _
instance showListAWSServiceAccessForOrganizationRequest :: Show ListAWSServiceAccessForOrganizationRequest where
  show = genericShow
instance decodeListAWSServiceAccessForOrganizationRequest :: Decode ListAWSServiceAccessForOrganizationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAWSServiceAccessForOrganizationRequest :: Encode ListAWSServiceAccessForOrganizationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAWSServiceAccessForOrganizationRequest from required parameters
newListAWSServiceAccessForOrganizationRequest :: ListAWSServiceAccessForOrganizationRequest
newListAWSServiceAccessForOrganizationRequest  = ListAWSServiceAccessForOrganizationRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListAWSServiceAccessForOrganizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAWSServiceAccessForOrganizationRequest' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListAWSServiceAccessForOrganizationRequest
newListAWSServiceAccessForOrganizationRequest'  customize = (ListAWSServiceAccessForOrganizationRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListAWSServiceAccessForOrganizationResponse = ListAWSServiceAccessForOrganizationResponse 
  { "EnabledServicePrincipals" :: NullOrUndefined.NullOrUndefined (EnabledServicePrincipals)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListAWSServiceAccessForOrganizationResponse :: Newtype ListAWSServiceAccessForOrganizationResponse _
derive instance repGenericListAWSServiceAccessForOrganizationResponse :: Generic ListAWSServiceAccessForOrganizationResponse _
instance showListAWSServiceAccessForOrganizationResponse :: Show ListAWSServiceAccessForOrganizationResponse where
  show = genericShow
instance decodeListAWSServiceAccessForOrganizationResponse :: Decode ListAWSServiceAccessForOrganizationResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAWSServiceAccessForOrganizationResponse :: Encode ListAWSServiceAccessForOrganizationResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAWSServiceAccessForOrganizationResponse from required parameters
newListAWSServiceAccessForOrganizationResponse :: ListAWSServiceAccessForOrganizationResponse
newListAWSServiceAccessForOrganizationResponse  = ListAWSServiceAccessForOrganizationResponse { "EnabledServicePrincipals": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListAWSServiceAccessForOrganizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAWSServiceAccessForOrganizationResponse' :: ( { "EnabledServicePrincipals" :: NullOrUndefined.NullOrUndefined (EnabledServicePrincipals) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"EnabledServicePrincipals" :: NullOrUndefined.NullOrUndefined (EnabledServicePrincipals) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListAWSServiceAccessForOrganizationResponse
newListAWSServiceAccessForOrganizationResponse'  customize = (ListAWSServiceAccessForOrganizationResponse <<< customize) { "EnabledServicePrincipals": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListAccountsForParentRequest = ListAccountsForParentRequest 
  { "ParentId" :: (ParentId)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListAccountsForParentRequest :: Newtype ListAccountsForParentRequest _
derive instance repGenericListAccountsForParentRequest :: Generic ListAccountsForParentRequest _
instance showListAccountsForParentRequest :: Show ListAccountsForParentRequest where
  show = genericShow
instance decodeListAccountsForParentRequest :: Decode ListAccountsForParentRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAccountsForParentRequest :: Encode ListAccountsForParentRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAccountsForParentRequest from required parameters
newListAccountsForParentRequest :: ParentId -> ListAccountsForParentRequest
newListAccountsForParentRequest _ParentId = ListAccountsForParentRequest { "ParentId": _ParentId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListAccountsForParentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccountsForParentRequest' :: ParentId -> ( { "ParentId" :: (ParentId) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"ParentId" :: (ParentId) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListAccountsForParentRequest
newListAccountsForParentRequest' _ParentId customize = (ListAccountsForParentRequest <<< customize) { "ParentId": _ParentId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListAccountsForParentResponse = ListAccountsForParentResponse 
  { "Accounts" :: NullOrUndefined.NullOrUndefined (Accounts)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListAccountsForParentResponse :: Newtype ListAccountsForParentResponse _
derive instance repGenericListAccountsForParentResponse :: Generic ListAccountsForParentResponse _
instance showListAccountsForParentResponse :: Show ListAccountsForParentResponse where
  show = genericShow
instance decodeListAccountsForParentResponse :: Decode ListAccountsForParentResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAccountsForParentResponse :: Encode ListAccountsForParentResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAccountsForParentResponse from required parameters
newListAccountsForParentResponse :: ListAccountsForParentResponse
newListAccountsForParentResponse  = ListAccountsForParentResponse { "Accounts": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListAccountsForParentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccountsForParentResponse' :: ( { "Accounts" :: NullOrUndefined.NullOrUndefined (Accounts) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Accounts" :: NullOrUndefined.NullOrUndefined (Accounts) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListAccountsForParentResponse
newListAccountsForParentResponse'  customize = (ListAccountsForParentResponse <<< customize) { "Accounts": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListAccountsRequest = ListAccountsRequest 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListAccountsRequest :: Newtype ListAccountsRequest _
derive instance repGenericListAccountsRequest :: Generic ListAccountsRequest _
instance showListAccountsRequest :: Show ListAccountsRequest where
  show = genericShow
instance decodeListAccountsRequest :: Decode ListAccountsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAccountsRequest :: Encode ListAccountsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAccountsRequest from required parameters
newListAccountsRequest :: ListAccountsRequest
newListAccountsRequest  = ListAccountsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListAccountsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccountsRequest' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListAccountsRequest
newListAccountsRequest'  customize = (ListAccountsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListAccountsResponse = ListAccountsResponse 
  { "Accounts" :: NullOrUndefined.NullOrUndefined (Accounts)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListAccountsResponse :: Newtype ListAccountsResponse _
derive instance repGenericListAccountsResponse :: Generic ListAccountsResponse _
instance showListAccountsResponse :: Show ListAccountsResponse where
  show = genericShow
instance decodeListAccountsResponse :: Decode ListAccountsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListAccountsResponse :: Encode ListAccountsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListAccountsResponse from required parameters
newListAccountsResponse :: ListAccountsResponse
newListAccountsResponse  = ListAccountsResponse { "Accounts": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListAccountsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListAccountsResponse' :: ( { "Accounts" :: NullOrUndefined.NullOrUndefined (Accounts) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Accounts" :: NullOrUndefined.NullOrUndefined (Accounts) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListAccountsResponse
newListAccountsResponse'  customize = (ListAccountsResponse <<< customize) { "Accounts": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListChildrenRequest = ListChildrenRequest 
  { "ParentId" :: (ParentId)
  , "ChildType" :: (ChildType)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListChildrenRequest :: Newtype ListChildrenRequest _
derive instance repGenericListChildrenRequest :: Generic ListChildrenRequest _
instance showListChildrenRequest :: Show ListChildrenRequest where
  show = genericShow
instance decodeListChildrenRequest :: Decode ListChildrenRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListChildrenRequest :: Encode ListChildrenRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListChildrenRequest from required parameters
newListChildrenRequest :: ChildType -> ParentId -> ListChildrenRequest
newListChildrenRequest _ChildType _ParentId = ListChildrenRequest { "ChildType": _ChildType, "ParentId": _ParentId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListChildrenRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListChildrenRequest' :: ChildType -> ParentId -> ( { "ParentId" :: (ParentId) , "ChildType" :: (ChildType) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"ParentId" :: (ParentId) , "ChildType" :: (ChildType) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListChildrenRequest
newListChildrenRequest' _ChildType _ParentId customize = (ListChildrenRequest <<< customize) { "ChildType": _ChildType, "ParentId": _ParentId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListChildrenResponse = ListChildrenResponse 
  { "Children" :: NullOrUndefined.NullOrUndefined (Children)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListChildrenResponse :: Newtype ListChildrenResponse _
derive instance repGenericListChildrenResponse :: Generic ListChildrenResponse _
instance showListChildrenResponse :: Show ListChildrenResponse where
  show = genericShow
instance decodeListChildrenResponse :: Decode ListChildrenResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListChildrenResponse :: Encode ListChildrenResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListChildrenResponse from required parameters
newListChildrenResponse :: ListChildrenResponse
newListChildrenResponse  = ListChildrenResponse { "Children": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListChildrenResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListChildrenResponse' :: ( { "Children" :: NullOrUndefined.NullOrUndefined (Children) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Children" :: NullOrUndefined.NullOrUndefined (Children) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListChildrenResponse
newListChildrenResponse'  customize = (ListChildrenResponse <<< customize) { "Children": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListCreateAccountStatusRequest = ListCreateAccountStatusRequest 
  { "States" :: NullOrUndefined.NullOrUndefined (CreateAccountStates)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListCreateAccountStatusRequest :: Newtype ListCreateAccountStatusRequest _
derive instance repGenericListCreateAccountStatusRequest :: Generic ListCreateAccountStatusRequest _
instance showListCreateAccountStatusRequest :: Show ListCreateAccountStatusRequest where
  show = genericShow
instance decodeListCreateAccountStatusRequest :: Decode ListCreateAccountStatusRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListCreateAccountStatusRequest :: Encode ListCreateAccountStatusRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListCreateAccountStatusRequest from required parameters
newListCreateAccountStatusRequest :: ListCreateAccountStatusRequest
newListCreateAccountStatusRequest  = ListCreateAccountStatusRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "States": (NullOrUndefined Nothing) }

-- | Constructs ListCreateAccountStatusRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCreateAccountStatusRequest' :: ( { "States" :: NullOrUndefined.NullOrUndefined (CreateAccountStates) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"States" :: NullOrUndefined.NullOrUndefined (CreateAccountStates) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListCreateAccountStatusRequest
newListCreateAccountStatusRequest'  customize = (ListCreateAccountStatusRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing), "States": (NullOrUndefined Nothing) }



newtype ListCreateAccountStatusResponse = ListCreateAccountStatusResponse 
  { "CreateAccountStatuses" :: NullOrUndefined.NullOrUndefined (CreateAccountStatuses)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListCreateAccountStatusResponse :: Newtype ListCreateAccountStatusResponse _
derive instance repGenericListCreateAccountStatusResponse :: Generic ListCreateAccountStatusResponse _
instance showListCreateAccountStatusResponse :: Show ListCreateAccountStatusResponse where
  show = genericShow
instance decodeListCreateAccountStatusResponse :: Decode ListCreateAccountStatusResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListCreateAccountStatusResponse :: Encode ListCreateAccountStatusResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListCreateAccountStatusResponse from required parameters
newListCreateAccountStatusResponse :: ListCreateAccountStatusResponse
newListCreateAccountStatusResponse  = ListCreateAccountStatusResponse { "CreateAccountStatuses": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListCreateAccountStatusResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListCreateAccountStatusResponse' :: ( { "CreateAccountStatuses" :: NullOrUndefined.NullOrUndefined (CreateAccountStatuses) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"CreateAccountStatuses" :: NullOrUndefined.NullOrUndefined (CreateAccountStatuses) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListCreateAccountStatusResponse
newListCreateAccountStatusResponse'  customize = (ListCreateAccountStatusResponse <<< customize) { "CreateAccountStatuses": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListHandshakesForAccountRequest = ListHandshakesForAccountRequest 
  { "Filter" :: NullOrUndefined.NullOrUndefined (HandshakeFilter)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListHandshakesForAccountRequest :: Newtype ListHandshakesForAccountRequest _
derive instance repGenericListHandshakesForAccountRequest :: Generic ListHandshakesForAccountRequest _
instance showListHandshakesForAccountRequest :: Show ListHandshakesForAccountRequest where
  show = genericShow
instance decodeListHandshakesForAccountRequest :: Decode ListHandshakesForAccountRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListHandshakesForAccountRequest :: Encode ListHandshakesForAccountRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListHandshakesForAccountRequest from required parameters
newListHandshakesForAccountRequest :: ListHandshakesForAccountRequest
newListHandshakesForAccountRequest  = ListHandshakesForAccountRequest { "Filter": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListHandshakesForAccountRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHandshakesForAccountRequest' :: ( { "Filter" :: NullOrUndefined.NullOrUndefined (HandshakeFilter) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"Filter" :: NullOrUndefined.NullOrUndefined (HandshakeFilter) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListHandshakesForAccountRequest
newListHandshakesForAccountRequest'  customize = (ListHandshakesForAccountRequest <<< customize) { "Filter": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListHandshakesForAccountResponse = ListHandshakesForAccountResponse 
  { "Handshakes" :: NullOrUndefined.NullOrUndefined (Handshakes)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListHandshakesForAccountResponse :: Newtype ListHandshakesForAccountResponse _
derive instance repGenericListHandshakesForAccountResponse :: Generic ListHandshakesForAccountResponse _
instance showListHandshakesForAccountResponse :: Show ListHandshakesForAccountResponse where
  show = genericShow
instance decodeListHandshakesForAccountResponse :: Decode ListHandshakesForAccountResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListHandshakesForAccountResponse :: Encode ListHandshakesForAccountResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListHandshakesForAccountResponse from required parameters
newListHandshakesForAccountResponse :: ListHandshakesForAccountResponse
newListHandshakesForAccountResponse  = ListHandshakesForAccountResponse { "Handshakes": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListHandshakesForAccountResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHandshakesForAccountResponse' :: ( { "Handshakes" :: NullOrUndefined.NullOrUndefined (Handshakes) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Handshakes" :: NullOrUndefined.NullOrUndefined (Handshakes) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListHandshakesForAccountResponse
newListHandshakesForAccountResponse'  customize = (ListHandshakesForAccountResponse <<< customize) { "Handshakes": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListHandshakesForOrganizationRequest = ListHandshakesForOrganizationRequest 
  { "Filter" :: NullOrUndefined.NullOrUndefined (HandshakeFilter)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListHandshakesForOrganizationRequest :: Newtype ListHandshakesForOrganizationRequest _
derive instance repGenericListHandshakesForOrganizationRequest :: Generic ListHandshakesForOrganizationRequest _
instance showListHandshakesForOrganizationRequest :: Show ListHandshakesForOrganizationRequest where
  show = genericShow
instance decodeListHandshakesForOrganizationRequest :: Decode ListHandshakesForOrganizationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListHandshakesForOrganizationRequest :: Encode ListHandshakesForOrganizationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListHandshakesForOrganizationRequest from required parameters
newListHandshakesForOrganizationRequest :: ListHandshakesForOrganizationRequest
newListHandshakesForOrganizationRequest  = ListHandshakesForOrganizationRequest { "Filter": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListHandshakesForOrganizationRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHandshakesForOrganizationRequest' :: ( { "Filter" :: NullOrUndefined.NullOrUndefined (HandshakeFilter) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"Filter" :: NullOrUndefined.NullOrUndefined (HandshakeFilter) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListHandshakesForOrganizationRequest
newListHandshakesForOrganizationRequest'  customize = (ListHandshakesForOrganizationRequest <<< customize) { "Filter": (NullOrUndefined Nothing), "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListHandshakesForOrganizationResponse = ListHandshakesForOrganizationResponse 
  { "Handshakes" :: NullOrUndefined.NullOrUndefined (Handshakes)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListHandshakesForOrganizationResponse :: Newtype ListHandshakesForOrganizationResponse _
derive instance repGenericListHandshakesForOrganizationResponse :: Generic ListHandshakesForOrganizationResponse _
instance showListHandshakesForOrganizationResponse :: Show ListHandshakesForOrganizationResponse where
  show = genericShow
instance decodeListHandshakesForOrganizationResponse :: Decode ListHandshakesForOrganizationResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListHandshakesForOrganizationResponse :: Encode ListHandshakesForOrganizationResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListHandshakesForOrganizationResponse from required parameters
newListHandshakesForOrganizationResponse :: ListHandshakesForOrganizationResponse
newListHandshakesForOrganizationResponse  = ListHandshakesForOrganizationResponse { "Handshakes": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListHandshakesForOrganizationResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListHandshakesForOrganizationResponse' :: ( { "Handshakes" :: NullOrUndefined.NullOrUndefined (Handshakes) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Handshakes" :: NullOrUndefined.NullOrUndefined (Handshakes) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListHandshakesForOrganizationResponse
newListHandshakesForOrganizationResponse'  customize = (ListHandshakesForOrganizationResponse <<< customize) { "Handshakes": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListOrganizationalUnitsForParentRequest = ListOrganizationalUnitsForParentRequest 
  { "ParentId" :: (ParentId)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListOrganizationalUnitsForParentRequest :: Newtype ListOrganizationalUnitsForParentRequest _
derive instance repGenericListOrganizationalUnitsForParentRequest :: Generic ListOrganizationalUnitsForParentRequest _
instance showListOrganizationalUnitsForParentRequest :: Show ListOrganizationalUnitsForParentRequest where
  show = genericShow
instance decodeListOrganizationalUnitsForParentRequest :: Decode ListOrganizationalUnitsForParentRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOrganizationalUnitsForParentRequest :: Encode ListOrganizationalUnitsForParentRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListOrganizationalUnitsForParentRequest from required parameters
newListOrganizationalUnitsForParentRequest :: ParentId -> ListOrganizationalUnitsForParentRequest
newListOrganizationalUnitsForParentRequest _ParentId = ListOrganizationalUnitsForParentRequest { "ParentId": _ParentId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListOrganizationalUnitsForParentRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOrganizationalUnitsForParentRequest' :: ParentId -> ( { "ParentId" :: (ParentId) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"ParentId" :: (ParentId) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListOrganizationalUnitsForParentRequest
newListOrganizationalUnitsForParentRequest' _ParentId customize = (ListOrganizationalUnitsForParentRequest <<< customize) { "ParentId": _ParentId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListOrganizationalUnitsForParentResponse = ListOrganizationalUnitsForParentResponse 
  { "OrganizationalUnits" :: NullOrUndefined.NullOrUndefined (OrganizationalUnits)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListOrganizationalUnitsForParentResponse :: Newtype ListOrganizationalUnitsForParentResponse _
derive instance repGenericListOrganizationalUnitsForParentResponse :: Generic ListOrganizationalUnitsForParentResponse _
instance showListOrganizationalUnitsForParentResponse :: Show ListOrganizationalUnitsForParentResponse where
  show = genericShow
instance decodeListOrganizationalUnitsForParentResponse :: Decode ListOrganizationalUnitsForParentResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListOrganizationalUnitsForParentResponse :: Encode ListOrganizationalUnitsForParentResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListOrganizationalUnitsForParentResponse from required parameters
newListOrganizationalUnitsForParentResponse :: ListOrganizationalUnitsForParentResponse
newListOrganizationalUnitsForParentResponse  = ListOrganizationalUnitsForParentResponse { "NextToken": (NullOrUndefined Nothing), "OrganizationalUnits": (NullOrUndefined Nothing) }

-- | Constructs ListOrganizationalUnitsForParentResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListOrganizationalUnitsForParentResponse' :: ( { "OrganizationalUnits" :: NullOrUndefined.NullOrUndefined (OrganizationalUnits) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"OrganizationalUnits" :: NullOrUndefined.NullOrUndefined (OrganizationalUnits) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListOrganizationalUnitsForParentResponse
newListOrganizationalUnitsForParentResponse'  customize = (ListOrganizationalUnitsForParentResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "OrganizationalUnits": (NullOrUndefined Nothing) }



newtype ListParentsRequest = ListParentsRequest 
  { "ChildId" :: (ChildId)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListParentsRequest :: Newtype ListParentsRequest _
derive instance repGenericListParentsRequest :: Generic ListParentsRequest _
instance showListParentsRequest :: Show ListParentsRequest where
  show = genericShow
instance decodeListParentsRequest :: Decode ListParentsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListParentsRequest :: Encode ListParentsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListParentsRequest from required parameters
newListParentsRequest :: ChildId -> ListParentsRequest
newListParentsRequest _ChildId = ListParentsRequest { "ChildId": _ChildId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListParentsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListParentsRequest' :: ChildId -> ( { "ChildId" :: (ChildId) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"ChildId" :: (ChildId) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListParentsRequest
newListParentsRequest' _ChildId customize = (ListParentsRequest <<< customize) { "ChildId": _ChildId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListParentsResponse = ListParentsResponse 
  { "Parents" :: NullOrUndefined.NullOrUndefined (Parents)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListParentsResponse :: Newtype ListParentsResponse _
derive instance repGenericListParentsResponse :: Generic ListParentsResponse _
instance showListParentsResponse :: Show ListParentsResponse where
  show = genericShow
instance decodeListParentsResponse :: Decode ListParentsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListParentsResponse :: Encode ListParentsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListParentsResponse from required parameters
newListParentsResponse :: ListParentsResponse
newListParentsResponse  = ListParentsResponse { "NextToken": (NullOrUndefined Nothing), "Parents": (NullOrUndefined Nothing) }

-- | Constructs ListParentsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListParentsResponse' :: ( { "Parents" :: NullOrUndefined.NullOrUndefined (Parents) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Parents" :: NullOrUndefined.NullOrUndefined (Parents) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListParentsResponse
newListParentsResponse'  customize = (ListParentsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Parents": (NullOrUndefined Nothing) }



newtype ListPoliciesForTargetRequest = ListPoliciesForTargetRequest 
  { "TargetId" :: (PolicyTargetId)
  , "Filter" :: (PolicyType)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListPoliciesForTargetRequest :: Newtype ListPoliciesForTargetRequest _
derive instance repGenericListPoliciesForTargetRequest :: Generic ListPoliciesForTargetRequest _
instance showListPoliciesForTargetRequest :: Show ListPoliciesForTargetRequest where
  show = genericShow
instance decodeListPoliciesForTargetRequest :: Decode ListPoliciesForTargetRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListPoliciesForTargetRequest :: Encode ListPoliciesForTargetRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListPoliciesForTargetRequest from required parameters
newListPoliciesForTargetRequest :: PolicyType -> PolicyTargetId -> ListPoliciesForTargetRequest
newListPoliciesForTargetRequest _Filter _TargetId = ListPoliciesForTargetRequest { "Filter": _Filter, "TargetId": _TargetId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListPoliciesForTargetRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesForTargetRequest' :: PolicyType -> PolicyTargetId -> ( { "TargetId" :: (PolicyTargetId) , "Filter" :: (PolicyType) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"TargetId" :: (PolicyTargetId) , "Filter" :: (PolicyType) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListPoliciesForTargetRequest
newListPoliciesForTargetRequest' _Filter _TargetId customize = (ListPoliciesForTargetRequest <<< customize) { "Filter": _Filter, "TargetId": _TargetId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListPoliciesForTargetResponse = ListPoliciesForTargetResponse 
  { "Policies" :: NullOrUndefined.NullOrUndefined (Policies)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListPoliciesForTargetResponse :: Newtype ListPoliciesForTargetResponse _
derive instance repGenericListPoliciesForTargetResponse :: Generic ListPoliciesForTargetResponse _
instance showListPoliciesForTargetResponse :: Show ListPoliciesForTargetResponse where
  show = genericShow
instance decodeListPoliciesForTargetResponse :: Decode ListPoliciesForTargetResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListPoliciesForTargetResponse :: Encode ListPoliciesForTargetResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListPoliciesForTargetResponse from required parameters
newListPoliciesForTargetResponse :: ListPoliciesForTargetResponse
newListPoliciesForTargetResponse  = ListPoliciesForTargetResponse { "NextToken": (NullOrUndefined Nothing), "Policies": (NullOrUndefined Nothing) }

-- | Constructs ListPoliciesForTargetResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesForTargetResponse' :: ( { "Policies" :: NullOrUndefined.NullOrUndefined (Policies) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Policies" :: NullOrUndefined.NullOrUndefined (Policies) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListPoliciesForTargetResponse
newListPoliciesForTargetResponse'  customize = (ListPoliciesForTargetResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Policies": (NullOrUndefined Nothing) }



newtype ListPoliciesRequest = ListPoliciesRequest 
  { "Filter" :: (PolicyType)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListPoliciesRequest :: Newtype ListPoliciesRequest _
derive instance repGenericListPoliciesRequest :: Generic ListPoliciesRequest _
instance showListPoliciesRequest :: Show ListPoliciesRequest where
  show = genericShow
instance decodeListPoliciesRequest :: Decode ListPoliciesRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListPoliciesRequest :: Encode ListPoliciesRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListPoliciesRequest from required parameters
newListPoliciesRequest :: PolicyType -> ListPoliciesRequest
newListPoliciesRequest _Filter = ListPoliciesRequest { "Filter": _Filter, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListPoliciesRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesRequest' :: PolicyType -> ( { "Filter" :: (PolicyType) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"Filter" :: (PolicyType) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListPoliciesRequest
newListPoliciesRequest' _Filter customize = (ListPoliciesRequest <<< customize) { "Filter": _Filter, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListPoliciesResponse = ListPoliciesResponse 
  { "Policies" :: NullOrUndefined.NullOrUndefined (Policies)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListPoliciesResponse :: Newtype ListPoliciesResponse _
derive instance repGenericListPoliciesResponse :: Generic ListPoliciesResponse _
instance showListPoliciesResponse :: Show ListPoliciesResponse where
  show = genericShow
instance decodeListPoliciesResponse :: Decode ListPoliciesResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListPoliciesResponse :: Encode ListPoliciesResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListPoliciesResponse from required parameters
newListPoliciesResponse :: ListPoliciesResponse
newListPoliciesResponse  = ListPoliciesResponse { "NextToken": (NullOrUndefined Nothing), "Policies": (NullOrUndefined Nothing) }

-- | Constructs ListPoliciesResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListPoliciesResponse' :: ( { "Policies" :: NullOrUndefined.NullOrUndefined (Policies) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Policies" :: NullOrUndefined.NullOrUndefined (Policies) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListPoliciesResponse
newListPoliciesResponse'  customize = (ListPoliciesResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Policies": (NullOrUndefined Nothing) }



newtype ListRootsRequest = ListRootsRequest 
  { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListRootsRequest :: Newtype ListRootsRequest _
derive instance repGenericListRootsRequest :: Generic ListRootsRequest _
instance showListRootsRequest :: Show ListRootsRequest where
  show = genericShow
instance decodeListRootsRequest :: Decode ListRootsRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListRootsRequest :: Encode ListRootsRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListRootsRequest from required parameters
newListRootsRequest :: ListRootsRequest
newListRootsRequest  = ListRootsRequest { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListRootsRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRootsRequest' :: ( { "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListRootsRequest
newListRootsRequest'  customize = (ListRootsRequest <<< customize) { "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListRootsResponse = ListRootsResponse 
  { "Roots" :: NullOrUndefined.NullOrUndefined (Roots)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListRootsResponse :: Newtype ListRootsResponse _
derive instance repGenericListRootsResponse :: Generic ListRootsResponse _
instance showListRootsResponse :: Show ListRootsResponse where
  show = genericShow
instance decodeListRootsResponse :: Decode ListRootsResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListRootsResponse :: Encode ListRootsResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListRootsResponse from required parameters
newListRootsResponse :: ListRootsResponse
newListRootsResponse  = ListRootsResponse { "NextToken": (NullOrUndefined Nothing), "Roots": (NullOrUndefined Nothing) }

-- | Constructs ListRootsResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListRootsResponse' :: ( { "Roots" :: NullOrUndefined.NullOrUndefined (Roots) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Roots" :: NullOrUndefined.NullOrUndefined (Roots) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListRootsResponse
newListRootsResponse'  customize = (ListRootsResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Roots": (NullOrUndefined Nothing) }



newtype ListTargetsForPolicyRequest = ListTargetsForPolicyRequest 
  { "PolicyId" :: (PolicyId)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults)
  }
derive instance newtypeListTargetsForPolicyRequest :: Newtype ListTargetsForPolicyRequest _
derive instance repGenericListTargetsForPolicyRequest :: Generic ListTargetsForPolicyRequest _
instance showListTargetsForPolicyRequest :: Show ListTargetsForPolicyRequest where
  show = genericShow
instance decodeListTargetsForPolicyRequest :: Decode ListTargetsForPolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTargetsForPolicyRequest :: Encode ListTargetsForPolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListTargetsForPolicyRequest from required parameters
newListTargetsForPolicyRequest :: PolicyId -> ListTargetsForPolicyRequest
newListTargetsForPolicyRequest _PolicyId = ListTargetsForPolicyRequest { "PolicyId": _PolicyId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }

-- | Constructs ListTargetsForPolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTargetsForPolicyRequest' :: PolicyId -> ( { "PolicyId" :: (PolicyId) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } -> {"PolicyId" :: (PolicyId) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) , "MaxResults" :: NullOrUndefined.NullOrUndefined (MaxResults) } ) -> ListTargetsForPolicyRequest
newListTargetsForPolicyRequest' _PolicyId customize = (ListTargetsForPolicyRequest <<< customize) { "PolicyId": _PolicyId, "MaxResults": (NullOrUndefined Nothing), "NextToken": (NullOrUndefined Nothing) }



newtype ListTargetsForPolicyResponse = ListTargetsForPolicyResponse 
  { "Targets" :: NullOrUndefined.NullOrUndefined (PolicyTargets)
  , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken)
  }
derive instance newtypeListTargetsForPolicyResponse :: Newtype ListTargetsForPolicyResponse _
derive instance repGenericListTargetsForPolicyResponse :: Generic ListTargetsForPolicyResponse _
instance showListTargetsForPolicyResponse :: Show ListTargetsForPolicyResponse where
  show = genericShow
instance decodeListTargetsForPolicyResponse :: Decode ListTargetsForPolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeListTargetsForPolicyResponse :: Encode ListTargetsForPolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ListTargetsForPolicyResponse from required parameters
newListTargetsForPolicyResponse :: ListTargetsForPolicyResponse
newListTargetsForPolicyResponse  = ListTargetsForPolicyResponse { "NextToken": (NullOrUndefined Nothing), "Targets": (NullOrUndefined Nothing) }

-- | Constructs ListTargetsForPolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newListTargetsForPolicyResponse' :: ( { "Targets" :: NullOrUndefined.NullOrUndefined (PolicyTargets) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } -> {"Targets" :: NullOrUndefined.NullOrUndefined (PolicyTargets) , "NextToken" :: NullOrUndefined.NullOrUndefined (NextToken) } ) -> ListTargetsForPolicyResponse
newListTargetsForPolicyResponse'  customize = (ListTargetsForPolicyResponse <<< customize) { "NextToken": (NullOrUndefined Nothing), "Targets": (NullOrUndefined Nothing) }



-- | <p>The provided policy document does not meet the requirements of the specified policy type. For example, the syntax might be incorrect. For details about service control policy syntax, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_reference_scp-syntax.html">Service Control Policy Syntax</a> in the <i>AWS Organizations User Guide</i>.</p>
newtype MalformedPolicyDocumentException = MalformedPolicyDocumentException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeMalformedPolicyDocumentException :: Newtype MalformedPolicyDocumentException _
derive instance repGenericMalformedPolicyDocumentException :: Generic MalformedPolicyDocumentException _
instance showMalformedPolicyDocumentException :: Show MalformedPolicyDocumentException where
  show = genericShow
instance decodeMalformedPolicyDocumentException :: Decode MalformedPolicyDocumentException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMalformedPolicyDocumentException :: Encode MalformedPolicyDocumentException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MalformedPolicyDocumentException from required parameters
newMalformedPolicyDocumentException :: MalformedPolicyDocumentException
newMalformedPolicyDocumentException  = MalformedPolicyDocumentException { "Message": (NullOrUndefined Nothing) }

-- | Constructs MalformedPolicyDocumentException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMalformedPolicyDocumentException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> MalformedPolicyDocumentException
newMalformedPolicyDocumentException'  customize = (MalformedPolicyDocumentException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>You can't remove a master account from an organization. If you want the master account to become a member account in another organization, you must first delete the current organization of the master account.</p>
newtype MasterCannotLeaveOrganizationException = MasterCannotLeaveOrganizationException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeMasterCannotLeaveOrganizationException :: Newtype MasterCannotLeaveOrganizationException _
derive instance repGenericMasterCannotLeaveOrganizationException :: Generic MasterCannotLeaveOrganizationException _
instance showMasterCannotLeaveOrganizationException :: Show MasterCannotLeaveOrganizationException where
  show = genericShow
instance decodeMasterCannotLeaveOrganizationException :: Decode MasterCannotLeaveOrganizationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMasterCannotLeaveOrganizationException :: Encode MasterCannotLeaveOrganizationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs MasterCannotLeaveOrganizationException from required parameters
newMasterCannotLeaveOrganizationException :: MasterCannotLeaveOrganizationException
newMasterCannotLeaveOrganizationException  = MasterCannotLeaveOrganizationException { "Message": (NullOrUndefined Nothing) }

-- | Constructs MasterCannotLeaveOrganizationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newMasterCannotLeaveOrganizationException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> MasterCannotLeaveOrganizationException
newMasterCannotLeaveOrganizationException'  customize = (MasterCannotLeaveOrganizationException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype MaxResults = MaxResults Int
derive instance newtypeMaxResults :: Newtype MaxResults _
derive instance repGenericMaxResults :: Generic MaxResults _
instance showMaxResults :: Show MaxResults where
  show = genericShow
instance decodeMaxResults :: Decode MaxResults where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMaxResults :: Encode MaxResults where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype MoveAccountRequest = MoveAccountRequest 
  { "AccountId" :: (AccountId)
  , "SourceParentId" :: (ParentId)
  , "DestinationParentId" :: (ParentId)
  }
derive instance newtypeMoveAccountRequest :: Newtype MoveAccountRequest _
derive instance repGenericMoveAccountRequest :: Generic MoveAccountRequest _
instance showMoveAccountRequest :: Show MoveAccountRequest where
  show = genericShow
instance decodeMoveAccountRequest :: Decode MoveAccountRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeMoveAccountRequest :: Encode MoveAccountRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showNextToken :: Show NextToken where
  show = genericShow
instance decodeNextToken :: Decode NextToken where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeNextToken :: Encode NextToken where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains details about an organization. An organization is a collection of accounts that are centrally managed together using consolidated billing, organized hierarchically with organizational units (OUs), and controlled with policies .</p>
newtype Organization = Organization 
  { "Id" :: NullOrUndefined.NullOrUndefined (OrganizationId)
  , "Arn" :: NullOrUndefined.NullOrUndefined (OrganizationArn)
  , "FeatureSet" :: NullOrUndefined.NullOrUndefined (OrganizationFeatureSet)
  , "MasterAccountArn" :: NullOrUndefined.NullOrUndefined (AccountArn)
  , "MasterAccountId" :: NullOrUndefined.NullOrUndefined (AccountId)
  , "MasterAccountEmail" :: NullOrUndefined.NullOrUndefined (Email)
  , "AvailablePolicyTypes" :: NullOrUndefined.NullOrUndefined (PolicyTypes)
  }
derive instance newtypeOrganization :: Newtype Organization _
derive instance repGenericOrganization :: Generic Organization _
instance showOrganization :: Show Organization where
  show = genericShow
instance decodeOrganization :: Decode Organization where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOrganization :: Encode Organization where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Organization from required parameters
newOrganization :: Organization
newOrganization  = Organization { "Arn": (NullOrUndefined Nothing), "AvailablePolicyTypes": (NullOrUndefined Nothing), "FeatureSet": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "MasterAccountArn": (NullOrUndefined Nothing), "MasterAccountEmail": (NullOrUndefined Nothing), "MasterAccountId": (NullOrUndefined Nothing) }

-- | Constructs Organization's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganization' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (OrganizationId) , "Arn" :: NullOrUndefined.NullOrUndefined (OrganizationArn) , "FeatureSet" :: NullOrUndefined.NullOrUndefined (OrganizationFeatureSet) , "MasterAccountArn" :: NullOrUndefined.NullOrUndefined (AccountArn) , "MasterAccountId" :: NullOrUndefined.NullOrUndefined (AccountId) , "MasterAccountEmail" :: NullOrUndefined.NullOrUndefined (Email) , "AvailablePolicyTypes" :: NullOrUndefined.NullOrUndefined (PolicyTypes) } -> {"Id" :: NullOrUndefined.NullOrUndefined (OrganizationId) , "Arn" :: NullOrUndefined.NullOrUndefined (OrganizationArn) , "FeatureSet" :: NullOrUndefined.NullOrUndefined (OrganizationFeatureSet) , "MasterAccountArn" :: NullOrUndefined.NullOrUndefined (AccountArn) , "MasterAccountId" :: NullOrUndefined.NullOrUndefined (AccountId) , "MasterAccountEmail" :: NullOrUndefined.NullOrUndefined (Email) , "AvailablePolicyTypes" :: NullOrUndefined.NullOrUndefined (PolicyTypes) } ) -> Organization
newOrganization'  customize = (Organization <<< customize) { "Arn": (NullOrUndefined Nothing), "AvailablePolicyTypes": (NullOrUndefined Nothing), "FeatureSet": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "MasterAccountArn": (NullOrUndefined Nothing), "MasterAccountEmail": (NullOrUndefined Nothing), "MasterAccountId": (NullOrUndefined Nothing) }



newtype OrganizationArn = OrganizationArn String
derive instance newtypeOrganizationArn :: Newtype OrganizationArn _
derive instance repGenericOrganizationArn :: Generic OrganizationArn _
instance showOrganizationArn :: Show OrganizationArn where
  show = genericShow
instance decodeOrganizationArn :: Decode OrganizationArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOrganizationArn :: Encode OrganizationArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OrganizationFeatureSet = OrganizationFeatureSet String
derive instance newtypeOrganizationFeatureSet :: Newtype OrganizationFeatureSet _
derive instance repGenericOrganizationFeatureSet :: Generic OrganizationFeatureSet _
instance showOrganizationFeatureSet :: Show OrganizationFeatureSet where
  show = genericShow
instance decodeOrganizationFeatureSet :: Decode OrganizationFeatureSet where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOrganizationFeatureSet :: Encode OrganizationFeatureSet where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OrganizationId = OrganizationId String
derive instance newtypeOrganizationId :: Newtype OrganizationId _
derive instance repGenericOrganizationId :: Generic OrganizationId _
instance showOrganizationId :: Show OrganizationId where
  show = genericShow
instance decodeOrganizationId :: Decode OrganizationId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOrganizationId :: Encode OrganizationId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The organization isn't empty. To delete an organization, you must first remove all accounts except the master account, delete all organizational units (OUs), and delete all policies.</p>
newtype OrganizationNotEmptyException = OrganizationNotEmptyException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeOrganizationNotEmptyException :: Newtype OrganizationNotEmptyException _
derive instance repGenericOrganizationNotEmptyException :: Generic OrganizationNotEmptyException _
instance showOrganizationNotEmptyException :: Show OrganizationNotEmptyException where
  show = genericShow
instance decodeOrganizationNotEmptyException :: Decode OrganizationNotEmptyException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOrganizationNotEmptyException :: Encode OrganizationNotEmptyException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OrganizationNotEmptyException from required parameters
newOrganizationNotEmptyException :: OrganizationNotEmptyException
newOrganizationNotEmptyException  = OrganizationNotEmptyException { "Message": (NullOrUndefined Nothing) }

-- | Constructs OrganizationNotEmptyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganizationNotEmptyException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> OrganizationNotEmptyException
newOrganizationNotEmptyException'  customize = (OrganizationNotEmptyException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Contains details about an organizational unit (OU). An OU is a container of AWS accounts within a root of an organization. Policies that are attached to an OU apply to all accounts contained in that OU and in any child OUs.</p>
newtype OrganizationalUnit = OrganizationalUnit 
  { "Id" :: NullOrUndefined.NullOrUndefined (OrganizationalUnitId)
  , "Arn" :: NullOrUndefined.NullOrUndefined (OrganizationalUnitArn)
  , "Name" :: NullOrUndefined.NullOrUndefined (OrganizationalUnitName)
  }
derive instance newtypeOrganizationalUnit :: Newtype OrganizationalUnit _
derive instance repGenericOrganizationalUnit :: Generic OrganizationalUnit _
instance showOrganizationalUnit :: Show OrganizationalUnit where
  show = genericShow
instance decodeOrganizationalUnit :: Decode OrganizationalUnit where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOrganizationalUnit :: Encode OrganizationalUnit where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OrganizationalUnit from required parameters
newOrganizationalUnit :: OrganizationalUnit
newOrganizationalUnit  = OrganizationalUnit { "Arn": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs OrganizationalUnit's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganizationalUnit' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (OrganizationalUnitId) , "Arn" :: NullOrUndefined.NullOrUndefined (OrganizationalUnitArn) , "Name" :: NullOrUndefined.NullOrUndefined (OrganizationalUnitName) } -> {"Id" :: NullOrUndefined.NullOrUndefined (OrganizationalUnitId) , "Arn" :: NullOrUndefined.NullOrUndefined (OrganizationalUnitArn) , "Name" :: NullOrUndefined.NullOrUndefined (OrganizationalUnitName) } ) -> OrganizationalUnit
newOrganizationalUnit'  customize = (OrganizationalUnit <<< customize) { "Arn": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



newtype OrganizationalUnitArn = OrganizationalUnitArn String
derive instance newtypeOrganizationalUnitArn :: Newtype OrganizationalUnitArn _
derive instance repGenericOrganizationalUnitArn :: Generic OrganizationalUnitArn _
instance showOrganizationalUnitArn :: Show OrganizationalUnitArn where
  show = genericShow
instance decodeOrganizationalUnitArn :: Decode OrganizationalUnitArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOrganizationalUnitArn :: Encode OrganizationalUnitArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OrganizationalUnitId = OrganizationalUnitId String
derive instance newtypeOrganizationalUnitId :: Newtype OrganizationalUnitId _
derive instance repGenericOrganizationalUnitId :: Generic OrganizationalUnitId _
instance showOrganizationalUnitId :: Show OrganizationalUnitId where
  show = genericShow
instance decodeOrganizationalUnitId :: Decode OrganizationalUnitId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOrganizationalUnitId :: Encode OrganizationalUnitId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype OrganizationalUnitName = OrganizationalUnitName String
derive instance newtypeOrganizationalUnitName :: Newtype OrganizationalUnitName _
derive instance repGenericOrganizationalUnitName :: Generic OrganizationalUnitName _
instance showOrganizationalUnitName :: Show OrganizationalUnitName where
  show = genericShow
instance decodeOrganizationalUnitName :: Decode OrganizationalUnitName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOrganizationalUnitName :: Encode OrganizationalUnitName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The specified organizational unit (OU) is not empty. Move all accounts to another root or to other OUs, remove all child OUs, and then try the operation again.</p>
newtype OrganizationalUnitNotEmptyException = OrganizationalUnitNotEmptyException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeOrganizationalUnitNotEmptyException :: Newtype OrganizationalUnitNotEmptyException _
derive instance repGenericOrganizationalUnitNotEmptyException :: Generic OrganizationalUnitNotEmptyException _
instance showOrganizationalUnitNotEmptyException :: Show OrganizationalUnitNotEmptyException where
  show = genericShow
instance decodeOrganizationalUnitNotEmptyException :: Decode OrganizationalUnitNotEmptyException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOrganizationalUnitNotEmptyException :: Encode OrganizationalUnitNotEmptyException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OrganizationalUnitNotEmptyException from required parameters
newOrganizationalUnitNotEmptyException :: OrganizationalUnitNotEmptyException
newOrganizationalUnitNotEmptyException  = OrganizationalUnitNotEmptyException { "Message": (NullOrUndefined Nothing) }

-- | Constructs OrganizationalUnitNotEmptyException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganizationalUnitNotEmptyException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> OrganizationalUnitNotEmptyException
newOrganizationalUnitNotEmptyException'  customize = (OrganizationalUnitNotEmptyException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>We can't find an organizational unit (OU) with the OrganizationalUnitId that you specified.</p>
newtype OrganizationalUnitNotFoundException = OrganizationalUnitNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeOrganizationalUnitNotFoundException :: Newtype OrganizationalUnitNotFoundException _
derive instance repGenericOrganizationalUnitNotFoundException :: Generic OrganizationalUnitNotFoundException _
instance showOrganizationalUnitNotFoundException :: Show OrganizationalUnitNotFoundException where
  show = genericShow
instance decodeOrganizationalUnitNotFoundException :: Decode OrganizationalUnitNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOrganizationalUnitNotFoundException :: Encode OrganizationalUnitNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs OrganizationalUnitNotFoundException from required parameters
newOrganizationalUnitNotFoundException :: OrganizationalUnitNotFoundException
newOrganizationalUnitNotFoundException  = OrganizationalUnitNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs OrganizationalUnitNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newOrganizationalUnitNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> OrganizationalUnitNotFoundException
newOrganizationalUnitNotFoundException'  customize = (OrganizationalUnitNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype OrganizationalUnits = OrganizationalUnits (Array OrganizationalUnit)
derive instance newtypeOrganizationalUnits :: Newtype OrganizationalUnits _
derive instance repGenericOrganizationalUnits :: Generic OrganizationalUnits _
instance showOrganizationalUnits :: Show OrganizationalUnits where
  show = genericShow
instance decodeOrganizationalUnits :: Decode OrganizationalUnits where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeOrganizationalUnits :: Encode OrganizationalUnits where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information about either a root or an organizational unit (OU) that can contain OUs or accounts in an organization.</p>
newtype Parent = Parent 
  { "Id" :: NullOrUndefined.NullOrUndefined (ParentId)
  , "Type" :: NullOrUndefined.NullOrUndefined (ParentType)
  }
derive instance newtypeParent :: Newtype Parent _
derive instance repGenericParent :: Generic Parent _
instance showParent :: Show Parent where
  show = genericShow
instance decodeParent :: Decode Parent where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeParent :: Encode Parent where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Parent from required parameters
newParent :: Parent
newParent  = Parent { "Id": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs Parent's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParent' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (ParentId) , "Type" :: NullOrUndefined.NullOrUndefined (ParentType) } -> {"Id" :: NullOrUndefined.NullOrUndefined (ParentId) , "Type" :: NullOrUndefined.NullOrUndefined (ParentType) } ) -> Parent
newParent'  customize = (Parent <<< customize) { "Id": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype ParentId = ParentId String
derive instance newtypeParentId :: Newtype ParentId _
derive instance repGenericParentId :: Generic ParentId _
instance showParentId :: Show ParentId where
  show = genericShow
instance decodeParentId :: Decode ParentId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeParentId :: Encode ParentId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>We can't find a root or organizational unit (OU) with the ParentId that you specified.</p>
newtype ParentNotFoundException = ParentNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeParentNotFoundException :: Newtype ParentNotFoundException _
derive instance repGenericParentNotFoundException :: Generic ParentNotFoundException _
instance showParentNotFoundException :: Show ParentNotFoundException where
  show = genericShow
instance decodeParentNotFoundException :: Decode ParentNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeParentNotFoundException :: Encode ParentNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ParentNotFoundException from required parameters
newParentNotFoundException :: ParentNotFoundException
newParentNotFoundException  = ParentNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ParentNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newParentNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> ParentNotFoundException
newParentNotFoundException'  customize = (ParentNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ParentType = ParentType String
derive instance newtypeParentType :: Newtype ParentType _
derive instance repGenericParentType :: Generic ParentType _
instance showParentType :: Show ParentType where
  show = genericShow
instance decodeParentType :: Decode ParentType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeParentType :: Encode ParentType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Parents = Parents (Array Parent)
derive instance newtypeParents :: Newtype Parents _
derive instance repGenericParents :: Generic Parents _
instance showParents :: Show Parents where
  show = genericShow
instance decodeParents :: Decode Parents where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeParents :: Encode Parents where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype Policies = Policies (Array PolicySummary)
derive instance newtypePolicies :: Newtype Policies _
derive instance repGenericPolicies :: Generic Policies _
instance showPolicies :: Show Policies where
  show = genericShow
instance decodePolicies :: Decode Policies where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicies :: Encode Policies where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains rules to be applied to the affected accounts. Policies can be attached directly to accounts, or to roots and OUs to affect all accounts in those hierarchies.</p>
newtype Policy = Policy 
  { "PolicySummary" :: NullOrUndefined.NullOrUndefined (PolicySummary)
  , "Content" :: NullOrUndefined.NullOrUndefined (PolicyContent)
  }
derive instance newtypePolicy :: Newtype Policy _
derive instance repGenericPolicy :: Generic Policy _
instance showPolicy :: Show Policy where
  show = genericShow
instance decodePolicy :: Decode Policy where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicy :: Encode Policy where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Policy from required parameters
newPolicy :: Policy
newPolicy  = Policy { "Content": (NullOrUndefined Nothing), "PolicySummary": (NullOrUndefined Nothing) }

-- | Constructs Policy's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicy' :: ( { "PolicySummary" :: NullOrUndefined.NullOrUndefined (PolicySummary) , "Content" :: NullOrUndefined.NullOrUndefined (PolicyContent) } -> {"PolicySummary" :: NullOrUndefined.NullOrUndefined (PolicySummary) , "Content" :: NullOrUndefined.NullOrUndefined (PolicyContent) } ) -> Policy
newPolicy'  customize = (Policy <<< customize) { "Content": (NullOrUndefined Nothing), "PolicySummary": (NullOrUndefined Nothing) }



newtype PolicyArn = PolicyArn String
derive instance newtypePolicyArn :: Newtype PolicyArn _
derive instance repGenericPolicyArn :: Generic PolicyArn _
instance showPolicyArn :: Show PolicyArn where
  show = genericShow
instance decodePolicyArn :: Decode PolicyArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyArn :: Encode PolicyArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyContent = PolicyContent String
derive instance newtypePolicyContent :: Newtype PolicyContent _
derive instance repGenericPolicyContent :: Generic PolicyContent _
instance showPolicyContent :: Show PolicyContent where
  show = genericShow
instance decodePolicyContent :: Decode PolicyContent where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyContent :: Encode PolicyContent where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyDescription = PolicyDescription String
derive instance newtypePolicyDescription :: Newtype PolicyDescription _
derive instance repGenericPolicyDescription :: Generic PolicyDescription _
instance showPolicyDescription :: Show PolicyDescription where
  show = genericShow
instance decodePolicyDescription :: Decode PolicyDescription where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyDescription :: Encode PolicyDescription where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyId = PolicyId String
derive instance newtypePolicyId :: Newtype PolicyId _
derive instance repGenericPolicyId :: Generic PolicyId _
instance showPolicyId :: Show PolicyId where
  show = genericShow
instance decodePolicyId :: Decode PolicyId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyId :: Encode PolicyId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The policy is attached to one or more entities. You must detach it from all roots, organizational units (OUs), and accounts before performing this operation.</p>
newtype PolicyInUseException = PolicyInUseException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypePolicyInUseException :: Newtype PolicyInUseException _
derive instance repGenericPolicyInUseException :: Generic PolicyInUseException _
instance showPolicyInUseException :: Show PolicyInUseException where
  show = genericShow
instance decodePolicyInUseException :: Decode PolicyInUseException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyInUseException :: Encode PolicyInUseException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyInUseException from required parameters
newPolicyInUseException :: PolicyInUseException
newPolicyInUseException  = PolicyInUseException { "Message": (NullOrUndefined Nothing) }

-- | Constructs PolicyInUseException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyInUseException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> PolicyInUseException
newPolicyInUseException'  customize = (PolicyInUseException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype PolicyName = PolicyName String
derive instance newtypePolicyName :: Newtype PolicyName _
derive instance repGenericPolicyName :: Generic PolicyName _
instance showPolicyName :: Show PolicyName where
  show = genericShow
instance decodePolicyName :: Decode PolicyName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyName :: Encode PolicyName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The policy isn't attached to the specified target in the specified root.</p>
newtype PolicyNotAttachedException = PolicyNotAttachedException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypePolicyNotAttachedException :: Newtype PolicyNotAttachedException _
derive instance repGenericPolicyNotAttachedException :: Generic PolicyNotAttachedException _
instance showPolicyNotAttachedException :: Show PolicyNotAttachedException where
  show = genericShow
instance decodePolicyNotAttachedException :: Decode PolicyNotAttachedException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyNotAttachedException :: Encode PolicyNotAttachedException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyNotAttachedException from required parameters
newPolicyNotAttachedException :: PolicyNotAttachedException
newPolicyNotAttachedException  = PolicyNotAttachedException { "Message": (NullOrUndefined Nothing) }

-- | Constructs PolicyNotAttachedException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyNotAttachedException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> PolicyNotAttachedException
newPolicyNotAttachedException'  customize = (PolicyNotAttachedException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>We can't find a policy with the PolicyId that you specified.</p>
newtype PolicyNotFoundException = PolicyNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypePolicyNotFoundException :: Newtype PolicyNotFoundException _
derive instance repGenericPolicyNotFoundException :: Generic PolicyNotFoundException _
instance showPolicyNotFoundException :: Show PolicyNotFoundException where
  show = genericShow
instance decodePolicyNotFoundException :: Decode PolicyNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyNotFoundException :: Encode PolicyNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyNotFoundException from required parameters
newPolicyNotFoundException :: PolicyNotFoundException
newPolicyNotFoundException  = PolicyNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs PolicyNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> PolicyNotFoundException
newPolicyNotFoundException'  customize = (PolicyNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>Contains information about a policy, but does not include the content. To see the content of a policy, see <a>DescribePolicy</a>.</p>
newtype PolicySummary = PolicySummary 
  { "Id" :: NullOrUndefined.NullOrUndefined (PolicyId)
  , "Arn" :: NullOrUndefined.NullOrUndefined (PolicyArn)
  , "Name" :: NullOrUndefined.NullOrUndefined (PolicyName)
  , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescription)
  , "Type" :: NullOrUndefined.NullOrUndefined (PolicyType)
  , "AwsManaged" :: NullOrUndefined.NullOrUndefined (AwsManagedPolicy)
  }
derive instance newtypePolicySummary :: Newtype PolicySummary _
derive instance repGenericPolicySummary :: Generic PolicySummary _
instance showPolicySummary :: Show PolicySummary where
  show = genericShow
instance decodePolicySummary :: Decode PolicySummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicySummary :: Encode PolicySummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicySummary from required parameters
newPolicySummary :: PolicySummary
newPolicySummary  = PolicySummary { "Arn": (NullOrUndefined Nothing), "AwsManaged": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs PolicySummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicySummary' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (PolicyId) , "Arn" :: NullOrUndefined.NullOrUndefined (PolicyArn) , "Name" :: NullOrUndefined.NullOrUndefined (PolicyName) , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescription) , "Type" :: NullOrUndefined.NullOrUndefined (PolicyType) , "AwsManaged" :: NullOrUndefined.NullOrUndefined (AwsManagedPolicy) } -> {"Id" :: NullOrUndefined.NullOrUndefined (PolicyId) , "Arn" :: NullOrUndefined.NullOrUndefined (PolicyArn) , "Name" :: NullOrUndefined.NullOrUndefined (PolicyName) , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescription) , "Type" :: NullOrUndefined.NullOrUndefined (PolicyType) , "AwsManaged" :: NullOrUndefined.NullOrUndefined (AwsManagedPolicy) } ) -> PolicySummary
newPolicySummary'  customize = (PolicySummary <<< customize) { "Arn": (NullOrUndefined Nothing), "AwsManaged": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype PolicyTargetId = PolicyTargetId String
derive instance newtypePolicyTargetId :: Newtype PolicyTargetId _
derive instance repGenericPolicyTargetId :: Generic PolicyTargetId _
instance showPolicyTargetId :: Show PolicyTargetId where
  show = genericShow
instance decodePolicyTargetId :: Decode PolicyTargetId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyTargetId :: Encode PolicyTargetId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information about a root, OU, or account that a policy is attached to.</p>
newtype PolicyTargetSummary = PolicyTargetSummary 
  { "TargetId" :: NullOrUndefined.NullOrUndefined (PolicyTargetId)
  , "Arn" :: NullOrUndefined.NullOrUndefined (GenericArn)
  , "Name" :: NullOrUndefined.NullOrUndefined (TargetName)
  , "Type" :: NullOrUndefined.NullOrUndefined (TargetType)
  }
derive instance newtypePolicyTargetSummary :: Newtype PolicyTargetSummary _
derive instance repGenericPolicyTargetSummary :: Generic PolicyTargetSummary _
instance showPolicyTargetSummary :: Show PolicyTargetSummary where
  show = genericShow
instance decodePolicyTargetSummary :: Decode PolicyTargetSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyTargetSummary :: Encode PolicyTargetSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyTargetSummary from required parameters
newPolicyTargetSummary :: PolicyTargetSummary
newPolicyTargetSummary  = PolicyTargetSummary { "Arn": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "TargetId": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs PolicyTargetSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyTargetSummary' :: ( { "TargetId" :: NullOrUndefined.NullOrUndefined (PolicyTargetId) , "Arn" :: NullOrUndefined.NullOrUndefined (GenericArn) , "Name" :: NullOrUndefined.NullOrUndefined (TargetName) , "Type" :: NullOrUndefined.NullOrUndefined (TargetType) } -> {"TargetId" :: NullOrUndefined.NullOrUndefined (PolicyTargetId) , "Arn" :: NullOrUndefined.NullOrUndefined (GenericArn) , "Name" :: NullOrUndefined.NullOrUndefined (TargetName) , "Type" :: NullOrUndefined.NullOrUndefined (TargetType) } ) -> PolicyTargetSummary
newPolicyTargetSummary'  customize = (PolicyTargetSummary <<< customize) { "Arn": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "TargetId": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype PolicyTargets = PolicyTargets (Array PolicyTargetSummary)
derive instance newtypePolicyTargets :: Newtype PolicyTargets _
derive instance repGenericPolicyTargets :: Generic PolicyTargets _
instance showPolicyTargets :: Show PolicyTargets where
  show = genericShow
instance decodePolicyTargets :: Decode PolicyTargets where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyTargets :: Encode PolicyTargets where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype PolicyType = PolicyType String
derive instance newtypePolicyType :: Newtype PolicyType _
derive instance repGenericPolicyType :: Generic PolicyType _
instance showPolicyType :: Show PolicyType where
  show = genericShow
instance decodePolicyType :: Decode PolicyType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyType :: Encode PolicyType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>The specified policy type is already enabled in the specified root.</p>
newtype PolicyTypeAlreadyEnabledException = PolicyTypeAlreadyEnabledException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypePolicyTypeAlreadyEnabledException :: Newtype PolicyTypeAlreadyEnabledException _
derive instance repGenericPolicyTypeAlreadyEnabledException :: Generic PolicyTypeAlreadyEnabledException _
instance showPolicyTypeAlreadyEnabledException :: Show PolicyTypeAlreadyEnabledException where
  show = genericShow
instance decodePolicyTypeAlreadyEnabledException :: Decode PolicyTypeAlreadyEnabledException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyTypeAlreadyEnabledException :: Encode PolicyTypeAlreadyEnabledException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyTypeAlreadyEnabledException from required parameters
newPolicyTypeAlreadyEnabledException :: PolicyTypeAlreadyEnabledException
newPolicyTypeAlreadyEnabledException  = PolicyTypeAlreadyEnabledException { "Message": (NullOrUndefined Nothing) }

-- | Constructs PolicyTypeAlreadyEnabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyTypeAlreadyEnabledException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> PolicyTypeAlreadyEnabledException
newPolicyTypeAlreadyEnabledException'  customize = (PolicyTypeAlreadyEnabledException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>You can't use the specified policy type with the feature set currently enabled for this organization. For example, you can enable service control policies (SCPs) only after you enable all features in the organization. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html#enable_policies_on_root">Enabling and Disabling a Policy Type on a Root</a> in the <i>AWS Organizations User Guide</i>.</p>
newtype PolicyTypeNotAvailableForOrganizationException = PolicyTypeNotAvailableForOrganizationException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypePolicyTypeNotAvailableForOrganizationException :: Newtype PolicyTypeNotAvailableForOrganizationException _
derive instance repGenericPolicyTypeNotAvailableForOrganizationException :: Generic PolicyTypeNotAvailableForOrganizationException _
instance showPolicyTypeNotAvailableForOrganizationException :: Show PolicyTypeNotAvailableForOrganizationException where
  show = genericShow
instance decodePolicyTypeNotAvailableForOrganizationException :: Decode PolicyTypeNotAvailableForOrganizationException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyTypeNotAvailableForOrganizationException :: Encode PolicyTypeNotAvailableForOrganizationException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyTypeNotAvailableForOrganizationException from required parameters
newPolicyTypeNotAvailableForOrganizationException :: PolicyTypeNotAvailableForOrganizationException
newPolicyTypeNotAvailableForOrganizationException  = PolicyTypeNotAvailableForOrganizationException { "Message": (NullOrUndefined Nothing) }

-- | Constructs PolicyTypeNotAvailableForOrganizationException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyTypeNotAvailableForOrganizationException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> PolicyTypeNotAvailableForOrganizationException
newPolicyTypeNotAvailableForOrganizationException'  customize = (PolicyTypeNotAvailableForOrganizationException <<< customize) { "Message": (NullOrUndefined Nothing) }



-- | <p>The specified policy type is not currently enabled in this root. You cannot attach policies of the specified type to entities in a root until you enable that type in the root. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p>
newtype PolicyTypeNotEnabledException = PolicyTypeNotEnabledException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypePolicyTypeNotEnabledException :: Newtype PolicyTypeNotEnabledException _
derive instance repGenericPolicyTypeNotEnabledException :: Generic PolicyTypeNotEnabledException _
instance showPolicyTypeNotEnabledException :: Show PolicyTypeNotEnabledException where
  show = genericShow
instance decodePolicyTypeNotEnabledException :: Decode PolicyTypeNotEnabledException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyTypeNotEnabledException :: Encode PolicyTypeNotEnabledException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyTypeNotEnabledException from required parameters
newPolicyTypeNotEnabledException :: PolicyTypeNotEnabledException
newPolicyTypeNotEnabledException  = PolicyTypeNotEnabledException { "Message": (NullOrUndefined Nothing) }

-- | Constructs PolicyTypeNotEnabledException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyTypeNotEnabledException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> PolicyTypeNotEnabledException
newPolicyTypeNotEnabledException'  customize = (PolicyTypeNotEnabledException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype PolicyTypeStatus = PolicyTypeStatus String
derive instance newtypePolicyTypeStatus :: Newtype PolicyTypeStatus _
derive instance repGenericPolicyTypeStatus :: Generic PolicyTypeStatus _
instance showPolicyTypeStatus :: Show PolicyTypeStatus where
  show = genericShow
instance decodePolicyTypeStatus :: Decode PolicyTypeStatus where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyTypeStatus :: Encode PolicyTypeStatus where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains information about a policy type and its status in the associated root.</p>
newtype PolicyTypeSummary = PolicyTypeSummary 
  { "Type" :: NullOrUndefined.NullOrUndefined (PolicyType)
  , "Status" :: NullOrUndefined.NullOrUndefined (PolicyTypeStatus)
  }
derive instance newtypePolicyTypeSummary :: Newtype PolicyTypeSummary _
derive instance repGenericPolicyTypeSummary :: Generic PolicyTypeSummary _
instance showPolicyTypeSummary :: Show PolicyTypeSummary where
  show = genericShow
instance decodePolicyTypeSummary :: Decode PolicyTypeSummary where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyTypeSummary :: Encode PolicyTypeSummary where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs PolicyTypeSummary from required parameters
newPolicyTypeSummary :: PolicyTypeSummary
newPolicyTypeSummary  = PolicyTypeSummary { "Status": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs PolicyTypeSummary's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newPolicyTypeSummary' :: ( { "Type" :: NullOrUndefined.NullOrUndefined (PolicyType) , "Status" :: NullOrUndefined.NullOrUndefined (PolicyTypeStatus) } -> {"Type" :: NullOrUndefined.NullOrUndefined (PolicyType) , "Status" :: NullOrUndefined.NullOrUndefined (PolicyTypeStatus) } ) -> PolicyTypeSummary
newPolicyTypeSummary'  customize = (PolicyTypeSummary <<< customize) { "Status": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype PolicyTypes = PolicyTypes (Array PolicyTypeSummary)
derive instance newtypePolicyTypes :: Newtype PolicyTypes _
derive instance repGenericPolicyTypes :: Generic PolicyTypes _
instance showPolicyTypes :: Show PolicyTypes where
  show = genericShow
instance decodePolicyTypes :: Decode PolicyTypes where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodePolicyTypes :: Encode PolicyTypes where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RemoveAccountFromOrganizationRequest = RemoveAccountFromOrganizationRequest 
  { "AccountId" :: (AccountId)
  }
derive instance newtypeRemoveAccountFromOrganizationRequest :: Newtype RemoveAccountFromOrganizationRequest _
derive instance repGenericRemoveAccountFromOrganizationRequest :: Generic RemoveAccountFromOrganizationRequest _
instance showRemoveAccountFromOrganizationRequest :: Show RemoveAccountFromOrganizationRequest where
  show = genericShow
instance decodeRemoveAccountFromOrganizationRequest :: Decode RemoveAccountFromOrganizationRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRemoveAccountFromOrganizationRequest :: Encode RemoveAccountFromOrganizationRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

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
instance showRoleName :: Show RoleName where
  show = genericShow
instance decodeRoleName :: Decode RoleName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRoleName :: Encode RoleName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>Contains details about a root. A root is a top-level parent node in the hierarchy of an organization that can contain organizational units (OUs) and accounts. Every root contains every AWS account in the organization. Each root enables the accounts to be organized in a different way and to have different policy types enabled for use in that root.</p>
newtype Root = Root 
  { "Id" :: NullOrUndefined.NullOrUndefined (RootId)
  , "Arn" :: NullOrUndefined.NullOrUndefined (RootArn)
  , "Name" :: NullOrUndefined.NullOrUndefined (RootName)
  , "PolicyTypes" :: NullOrUndefined.NullOrUndefined (PolicyTypes)
  }
derive instance newtypeRoot :: Newtype Root _
derive instance repGenericRoot :: Generic Root _
instance showRoot :: Show Root where
  show = genericShow
instance decodeRoot :: Decode Root where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRoot :: Encode Root where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs Root from required parameters
newRoot :: Root
newRoot  = Root { "Arn": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PolicyTypes": (NullOrUndefined Nothing) }

-- | Constructs Root's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRoot' :: ( { "Id" :: NullOrUndefined.NullOrUndefined (RootId) , "Arn" :: NullOrUndefined.NullOrUndefined (RootArn) , "Name" :: NullOrUndefined.NullOrUndefined (RootName) , "PolicyTypes" :: NullOrUndefined.NullOrUndefined (PolicyTypes) } -> {"Id" :: NullOrUndefined.NullOrUndefined (RootId) , "Arn" :: NullOrUndefined.NullOrUndefined (RootArn) , "Name" :: NullOrUndefined.NullOrUndefined (RootName) , "PolicyTypes" :: NullOrUndefined.NullOrUndefined (PolicyTypes) } ) -> Root
newRoot'  customize = (Root <<< customize) { "Arn": (NullOrUndefined Nothing), "Id": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing), "PolicyTypes": (NullOrUndefined Nothing) }



newtype RootArn = RootArn String
derive instance newtypeRootArn :: Newtype RootArn _
derive instance repGenericRootArn :: Generic RootArn _
instance showRootArn :: Show RootArn where
  show = genericShow
instance decodeRootArn :: Decode RootArn where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRootArn :: Encode RootArn where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RootId = RootId String
derive instance newtypeRootId :: Newtype RootId _
derive instance repGenericRootId :: Generic RootId _
instance showRootId :: Show RootId where
  show = genericShow
instance decodeRootId :: Decode RootId where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRootId :: Encode RootId where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



newtype RootName = RootName String
derive instance newtypeRootName :: Newtype RootName _
derive instance repGenericRootName :: Generic RootName _
instance showRootName :: Show RootName where
  show = genericShow
instance decodeRootName :: Decode RootName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRootName :: Encode RootName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>We can't find a root with the RootId that you specified.</p>
newtype RootNotFoundException = RootNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeRootNotFoundException :: Newtype RootNotFoundException _
derive instance repGenericRootNotFoundException :: Generic RootNotFoundException _
instance showRootNotFoundException :: Show RootNotFoundException where
  show = genericShow
instance decodeRootNotFoundException :: Decode RootNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRootNotFoundException :: Encode RootNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs RootNotFoundException from required parameters
newRootNotFoundException :: RootNotFoundException
newRootNotFoundException  = RootNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs RootNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newRootNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> RootNotFoundException
newRootNotFoundException'  customize = (RootNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype Roots = Roots (Array Root)
derive instance newtypeRoots :: Newtype Roots _
derive instance repGenericRoots :: Generic Roots _
instance showRoots :: Show Roots where
  show = genericShow
instance decodeRoots :: Decode Roots where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeRoots :: Encode Roots where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>AWS Organizations can't complete your request because of an internal service error. Try again later.</p>
newtype ServiceException = ServiceException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeServiceException :: Newtype ServiceException _
derive instance repGenericServiceException :: Generic ServiceException _
instance showServiceException :: Show ServiceException where
  show = genericShow
instance decodeServiceException :: Decode ServiceException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServiceException :: Encode ServiceException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs ServiceException from required parameters
newServiceException :: ServiceException
newServiceException  = ServiceException { "Message": (NullOrUndefined Nothing) }

-- | Constructs ServiceException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newServiceException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> ServiceException
newServiceException'  customize = (ServiceException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype ServicePrincipal = ServicePrincipal String
derive instance newtypeServicePrincipal :: Newtype ServicePrincipal _
derive instance repGenericServicePrincipal :: Generic ServicePrincipal _
instance showServicePrincipal :: Show ServicePrincipal where
  show = genericShow
instance decodeServicePrincipal :: Decode ServicePrincipal where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeServicePrincipal :: Encode ServicePrincipal where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>We can't find a source root or OU with the ParentId that you specified.</p>
newtype SourceParentNotFoundException = SourceParentNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeSourceParentNotFoundException :: Newtype SourceParentNotFoundException _
derive instance repGenericSourceParentNotFoundException :: Generic SourceParentNotFoundException _
instance showSourceParentNotFoundException :: Show SourceParentNotFoundException where
  show = genericShow
instance decodeSourceParentNotFoundException :: Decode SourceParentNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeSourceParentNotFoundException :: Encode SourceParentNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs SourceParentNotFoundException from required parameters
newSourceParentNotFoundException :: SourceParentNotFoundException
newSourceParentNotFoundException  = SourceParentNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs SourceParentNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newSourceParentNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> SourceParentNotFoundException
newSourceParentNotFoundException'  customize = (SourceParentNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype TargetName = TargetName String
derive instance newtypeTargetName :: Newtype TargetName _
derive instance repGenericTargetName :: Generic TargetName _
instance showTargetName :: Show TargetName where
  show = genericShow
instance decodeTargetName :: Decode TargetName where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTargetName :: Encode TargetName where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>We can't find a root, OU, or account with the TargetId that you specified.</p>
newtype TargetNotFoundException = TargetNotFoundException 
  { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeTargetNotFoundException :: Newtype TargetNotFoundException _
derive instance repGenericTargetNotFoundException :: Generic TargetNotFoundException _
instance showTargetNotFoundException :: Show TargetNotFoundException where
  show = genericShow
instance decodeTargetNotFoundException :: Decode TargetNotFoundException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTargetNotFoundException :: Encode TargetNotFoundException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TargetNotFoundException from required parameters
newTargetNotFoundException :: TargetNotFoundException
newTargetNotFoundException  = TargetNotFoundException { "Message": (NullOrUndefined Nothing) }

-- | Constructs TargetNotFoundException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTargetNotFoundException' :: ( { "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> TargetNotFoundException
newTargetNotFoundException'  customize = (TargetNotFoundException <<< customize) { "Message": (NullOrUndefined Nothing) }



newtype TargetType = TargetType String
derive instance newtypeTargetType :: Newtype TargetType _
derive instance repGenericTargetType :: Generic TargetType _
instance showTargetType :: Show TargetType where
  show = genericShow
instance decodeTargetType :: Decode TargetType where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTargetType :: Encode TargetType where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }



-- | <p>You've sent too many requests in too short a period of time. The limit helps protect against denial-of-service attacks. Try again later.</p>
newtype TooManyRequestsException = TooManyRequestsException 
  { "Type" :: NullOrUndefined.NullOrUndefined (ExceptionType)
  , "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage)
  }
derive instance newtypeTooManyRequestsException :: Newtype TooManyRequestsException _
derive instance repGenericTooManyRequestsException :: Generic TooManyRequestsException _
instance showTooManyRequestsException :: Show TooManyRequestsException where
  show = genericShow
instance decodeTooManyRequestsException :: Decode TooManyRequestsException where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeTooManyRequestsException :: Encode TooManyRequestsException where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs TooManyRequestsException from required parameters
newTooManyRequestsException :: TooManyRequestsException
newTooManyRequestsException  = TooManyRequestsException { "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }

-- | Constructs TooManyRequestsException's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newTooManyRequestsException' :: ( { "Type" :: NullOrUndefined.NullOrUndefined (ExceptionType) , "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } -> {"Type" :: NullOrUndefined.NullOrUndefined (ExceptionType) , "Message" :: NullOrUndefined.NullOrUndefined (ExceptionMessage) } ) -> TooManyRequestsException
newTooManyRequestsException'  customize = (TooManyRequestsException <<< customize) { "Message": (NullOrUndefined Nothing), "Type": (NullOrUndefined Nothing) }



newtype UpdateOrganizationalUnitRequest = UpdateOrganizationalUnitRequest 
  { "OrganizationalUnitId" :: (OrganizationalUnitId)
  , "Name" :: NullOrUndefined.NullOrUndefined (OrganizationalUnitName)
  }
derive instance newtypeUpdateOrganizationalUnitRequest :: Newtype UpdateOrganizationalUnitRequest _
derive instance repGenericUpdateOrganizationalUnitRequest :: Generic UpdateOrganizationalUnitRequest _
instance showUpdateOrganizationalUnitRequest :: Show UpdateOrganizationalUnitRequest where
  show = genericShow
instance decodeUpdateOrganizationalUnitRequest :: Decode UpdateOrganizationalUnitRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateOrganizationalUnitRequest :: Encode UpdateOrganizationalUnitRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateOrganizationalUnitRequest from required parameters
newUpdateOrganizationalUnitRequest :: OrganizationalUnitId -> UpdateOrganizationalUnitRequest
newUpdateOrganizationalUnitRequest _OrganizationalUnitId = UpdateOrganizationalUnitRequest { "OrganizationalUnitId": _OrganizationalUnitId, "Name": (NullOrUndefined Nothing) }

-- | Constructs UpdateOrganizationalUnitRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateOrganizationalUnitRequest' :: OrganizationalUnitId -> ( { "OrganizationalUnitId" :: (OrganizationalUnitId) , "Name" :: NullOrUndefined.NullOrUndefined (OrganizationalUnitName) } -> {"OrganizationalUnitId" :: (OrganizationalUnitId) , "Name" :: NullOrUndefined.NullOrUndefined (OrganizationalUnitName) } ) -> UpdateOrganizationalUnitRequest
newUpdateOrganizationalUnitRequest' _OrganizationalUnitId customize = (UpdateOrganizationalUnitRequest <<< customize) { "OrganizationalUnitId": _OrganizationalUnitId, "Name": (NullOrUndefined Nothing) }



newtype UpdateOrganizationalUnitResponse = UpdateOrganizationalUnitResponse 
  { "OrganizationalUnit" :: NullOrUndefined.NullOrUndefined (OrganizationalUnit)
  }
derive instance newtypeUpdateOrganizationalUnitResponse :: Newtype UpdateOrganizationalUnitResponse _
derive instance repGenericUpdateOrganizationalUnitResponse :: Generic UpdateOrganizationalUnitResponse _
instance showUpdateOrganizationalUnitResponse :: Show UpdateOrganizationalUnitResponse where
  show = genericShow
instance decodeUpdateOrganizationalUnitResponse :: Decode UpdateOrganizationalUnitResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdateOrganizationalUnitResponse :: Encode UpdateOrganizationalUnitResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdateOrganizationalUnitResponse from required parameters
newUpdateOrganizationalUnitResponse :: UpdateOrganizationalUnitResponse
newUpdateOrganizationalUnitResponse  = UpdateOrganizationalUnitResponse { "OrganizationalUnit": (NullOrUndefined Nothing) }

-- | Constructs UpdateOrganizationalUnitResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdateOrganizationalUnitResponse' :: ( { "OrganizationalUnit" :: NullOrUndefined.NullOrUndefined (OrganizationalUnit) } -> {"OrganizationalUnit" :: NullOrUndefined.NullOrUndefined (OrganizationalUnit) } ) -> UpdateOrganizationalUnitResponse
newUpdateOrganizationalUnitResponse'  customize = (UpdateOrganizationalUnitResponse <<< customize) { "OrganizationalUnit": (NullOrUndefined Nothing) }



newtype UpdatePolicyRequest = UpdatePolicyRequest 
  { "PolicyId" :: (PolicyId)
  , "Name" :: NullOrUndefined.NullOrUndefined (PolicyName)
  , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescription)
  , "Content" :: NullOrUndefined.NullOrUndefined (PolicyContent)
  }
derive instance newtypeUpdatePolicyRequest :: Newtype UpdatePolicyRequest _
derive instance repGenericUpdatePolicyRequest :: Generic UpdatePolicyRequest _
instance showUpdatePolicyRequest :: Show UpdatePolicyRequest where
  show = genericShow
instance decodeUpdatePolicyRequest :: Decode UpdatePolicyRequest where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdatePolicyRequest :: Encode UpdatePolicyRequest where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdatePolicyRequest from required parameters
newUpdatePolicyRequest :: PolicyId -> UpdatePolicyRequest
newUpdatePolicyRequest _PolicyId = UpdatePolicyRequest { "PolicyId": _PolicyId, "Content": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }

-- | Constructs UpdatePolicyRequest's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdatePolicyRequest' :: PolicyId -> ( { "PolicyId" :: (PolicyId) , "Name" :: NullOrUndefined.NullOrUndefined (PolicyName) , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescription) , "Content" :: NullOrUndefined.NullOrUndefined (PolicyContent) } -> {"PolicyId" :: (PolicyId) , "Name" :: NullOrUndefined.NullOrUndefined (PolicyName) , "Description" :: NullOrUndefined.NullOrUndefined (PolicyDescription) , "Content" :: NullOrUndefined.NullOrUndefined (PolicyContent) } ) -> UpdatePolicyRequest
newUpdatePolicyRequest' _PolicyId customize = (UpdatePolicyRequest <<< customize) { "PolicyId": _PolicyId, "Content": (NullOrUndefined Nothing), "Description": (NullOrUndefined Nothing), "Name": (NullOrUndefined Nothing) }



newtype UpdatePolicyResponse = UpdatePolicyResponse 
  { "Policy" :: NullOrUndefined.NullOrUndefined (Policy)
  }
derive instance newtypeUpdatePolicyResponse :: Newtype UpdatePolicyResponse _
derive instance repGenericUpdatePolicyResponse :: Generic UpdatePolicyResponse _
instance showUpdatePolicyResponse :: Show UpdatePolicyResponse where
  show = genericShow
instance decodeUpdatePolicyResponse :: Decode UpdatePolicyResponse where
  decode = genericDecode $ defaultOptions { unwrapSingleConstructors = true }
instance encodeUpdatePolicyResponse :: Encode UpdatePolicyResponse where
  encode = genericEncode $ defaultOptions { unwrapSingleConstructors = true }

-- | Constructs UpdatePolicyResponse from required parameters
newUpdatePolicyResponse :: UpdatePolicyResponse
newUpdatePolicyResponse  = UpdatePolicyResponse { "Policy": (NullOrUndefined Nothing) }

-- | Constructs UpdatePolicyResponse's fields from required parameters
--   This may be useful if you need to immediately overwrite some of the optional values
newUpdatePolicyResponse' :: ( { "Policy" :: NullOrUndefined.NullOrUndefined (Policy) } -> {"Policy" :: NullOrUndefined.NullOrUndefined (Policy) } ) -> UpdatePolicyResponse
newUpdatePolicyResponse'  customize = (UpdatePolicyResponse <<< customize) { "Policy": (NullOrUndefined Nothing) }

