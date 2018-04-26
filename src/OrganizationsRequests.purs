
module AWS.Organizations.Requests where

import Prelude
import Control.Monad.Aff (Aff)
import Control.Monad.Eff.Exception (EXCEPTION)

import AWS.Request (MethodName(..), request) as AWS
import AWS.Request.Types as Types

import AWS.Organizations as Organizations
import AWS.Organizations.Types as OrganizationsTypes


-- | <p>Sends a response to the originator of a handshake agreeing to the action proposed by the handshake request. </p> <p>This operation can be called only by the following principals when they also have the relevant IAM permissions:</p> <ul> <li> <p> <b>Invitation to join</b> or <b>Approve all features request</b> handshakes: only a principal from the member account. </p> <p>The user who calls the API for an invitation to join must have the <code>organizations:AcceptHandshake</code> permission. If you enabled all features in the organization, then the user must also have the <code>iam:CreateServiceLinkedRole</code> permission so that Organizations can create the required service-linked role named <i>OrgsServiceLinkedRoleName</i>. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles">AWS Organizations and Service-Linked Roles</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p> <b>Enable all features final confirmation</b> handshake: only a principal from the master account.</p> <p>For more information about invitations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html">Inviting an AWS Account to Join Your Organization</a> in the <i>AWS Organizations User Guide</i>. For more information about requests to enable all features in the organization, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul> <p>After you accept a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.</p>
acceptHandshake :: forall eff. Organizations.Service -> OrganizationsTypes.AcceptHandshakeRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.AcceptHandshakeResponse
acceptHandshake (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "acceptHandshake"


-- | <p>Attaches a policy to a root, an organizational unit, or an individual account. How the policy affects accounts depends on the type of policy:</p> <ul> <li> <p> <b>Service control policy (SCP)</b> - An SCP specifies what permissions can be delegated to users in affected member accounts. The scope of influence for a policy depends on what you attach the policy to:</p> <ul> <li> <p>If you attach an SCP to a root, it affects all accounts in the organization.</p> </li> <li> <p>If you attach an SCP to an OU, it affects all accounts in that OU and in any child OUs.</p> </li> <li> <p>If you attach the policy directly to an account, then it affects only that account.</p> </li> </ul> <p>SCPs essentially are permission "filters". When you attach one SCP to a higher level root or OU, and you also attach a different SCP to a child OU or to an account, the child policy can further restrict only the permissions that pass through the parent filter and are available to the child. An SCP that is attached to a child cannot grant a permission that is not already granted by the parent. For example, imagine that the parent SCP allows permissions A, B, C, D, and E. The child SCP allows C, D, E, F, and G. The result is that the accounts affected by the child SCP are allowed to use only C, D, and E. They cannot use A or B because they were filtered out by the child OU. They also cannot use F and G because they were filtered out by the parent OU. They cannot be granted back by the child SCP; child SCPs can only filter the permissions they receive from the parent SCP.</p> <p>AWS Organizations attaches a default SCP named <code>"FullAWSAccess</code> to every root, OU, and account. This default SCP allows all services and actions, enabling any new child OU or account to inherit the permissions of the parent root or OU. If you detach the default policy, you must replace it with a policy that specifies the permissions that you want to allow in that OU or account.</p> <p>For more information about how Organizations policies permissions work, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">Using Service Control Policies</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul> <p>This operation can be called only from the organization's master account.</p>
attachPolicy :: forall eff. Organizations.Service -> OrganizationsTypes.AttachPolicyRequest -> Aff (exception :: EXCEPTION | eff) Unit
attachPolicy (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "attachPolicy"


-- | <p>Cancels a handshake. Canceling a handshake sets the handshake state to <code>CANCELED</code>. </p> <p>This operation can be called only from the account that originated the handshake. The recipient of the handshake can't cancel it, but can use <a>DeclineHandshake</a> instead. After a handshake is canceled, the recipient can no longer respond to that handshake.</p> <p>After you cancel a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.</p>
cancelHandshake :: forall eff. Organizations.Service -> OrganizationsTypes.CancelHandshakeRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.CancelHandshakeResponse
cancelHandshake (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "cancelHandshake"


-- | <p>Creates an AWS account that is automatically a member of the organization whose credentials made the request. This is an asynchronous request that AWS performs in the background. If you want to check the status of the request later, you need the <code>OperationId</code> response element from this operation to provide as a parameter to the <a>DescribeCreateAccountStatus</a> operation.</p> <p>The user who calls the API for an invitation to join must have the <code>organizations:CreateAccount</code> permission. If you enabled all features in the organization, then the user must also have the <code>iam:CreateServiceLinkedRole</code> permission so that Organizations can create the required service-linked role named <i>OrgsServiceLinkedRoleName</i>. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles">AWS Organizations and Service-Linked Roles</a> in the <i>AWS Organizations User Guide</i>.</p> <p>The user in the master account who calls this API must also have the <code>iam:CreateRole</code> permission because AWS Organizations preconfigures the new member account with a role (named <code>OrganizationAccountAccessRole</code> by default) that grants users in the master account administrator permissions in the new member account. Principals in the master account can assume the role. AWS Organizations clones the company name and address information for the new account from the organization's master account.</p> <p>This operation can be called only from the organization's master account.</p> <p>For more information about creating accounts, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html">Creating an AWS Account in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p> <important> <p>When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required for the account to operate as a standalone account, such as a payment method and signing the End User Licence Agreement (EULA) is <i>not</i> automatically collected. If you must remove an account from your organization later, you can do so only after you provide the missing information. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </important> <note> <p>When you create a member account with this operation, you can choose whether to create the account with the <b>IAM User and Role Access to Billing Information</b> switch enabled. If you enable it, IAM users and roles that have appropriate permissions can view billing information for the account. If you disable this, then only the account root user can access billing information. For information about how to disable this for an account, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html">Granting Access to Your Billing Information and Tools</a>.</p> </note> <p>This operation can be called only from the organization's master account.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important>
createAccount :: forall eff. Organizations.Service -> OrganizationsTypes.CreateAccountRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.CreateAccountResponse
createAccount (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createAccount"


-- | <p>Creates an AWS organization. The account whose user is calling the CreateOrganization operation automatically becomes the <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_getting-started_concepts.html#account">master account</a> of the new organization.</p> <p>This operation must be called using credentials from the account that is to become the new organization's master account. The principal must also have the relevant IAM permissions.</p> <p>By default (or if you set the <code>FeatureSet</code> parameter to <code>ALL</code>), the new organization is created with all features enabled and service control policies automatically enabled in the root. If you instead choose to create the organization supporting only the consolidated billing features by setting the <code>FeatureSet</code> parameter to <code>CONSOLIDATED_BILLING"</code>, then no policy types are enabled by default and you cannot use organization policies.</p>
createOrganization :: forall eff. Organizations.Service -> OrganizationsTypes.CreateOrganizationRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.CreateOrganizationResponse
createOrganization (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createOrganization"


-- | <p>Creates an organizational unit (OU) within a root or parent OU. An OU is a container for accounts that enables you to organize your accounts to apply policies according to your business requirements. The number of levels deep that you can nest OUs is dependent upon the policy types enabled for that root. For service control policies, the limit is five. </p> <p>For more information about OUs, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html">Managing Organizational Units</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account.</p>
createOrganizationalUnit :: forall eff. Organizations.Service -> OrganizationsTypes.CreateOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.CreateOrganizationalUnitResponse
createOrganizationalUnit (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createOrganizationalUnit"


-- | <p>Creates a policy of a specified type that you can attach to a root, an organizational unit (OU), or an individual AWS account.</p> <p>For more information about policies and their use, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html">Managing Organization Policies</a>.</p> <p>This operation can be called only from the organization's master account.</p>
createPolicy :: forall eff. Organizations.Service -> OrganizationsTypes.CreatePolicyRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.CreatePolicyResponse
createPolicy (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "createPolicy"


-- | <p>Declines a handshake request. This sets the handshake state to <code>DECLINED</code> and effectively deactivates the request.</p> <p>This operation can be called only from the account that received the handshake. The originator of the handshake can use <a>CancelHandshake</a> instead. The originator can't reactivate a declined request, but can re-initiate the process with a new handshake request.</p> <p>After you decline a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.</p>
declineHandshake :: forall eff. Organizations.Service -> OrganizationsTypes.DeclineHandshakeRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.DeclineHandshakeResponse
declineHandshake (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "declineHandshake"


-- | <p>Deletes the organization. You can delete an organization only by using credentials from the master account. The organization must be empty of member accounts, OUs, and policies.</p>
deleteOrganization :: forall eff. Organizations.Service ->  Aff (exception :: EXCEPTION | eff) Unit
deleteOrganization (Organizations.Service serviceImpl) = AWS.request serviceImpl method unit where
    method = AWS.MethodName "deleteOrganization"


-- | <p>Deletes an organizational unit from a root or another OU. You must first remove all accounts and child OUs from the OU that you want to delete.</p> <p>This operation can be called only from the organization's master account.</p>
deleteOrganizationalUnit :: forall eff. Organizations.Service -> OrganizationsTypes.DeleteOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) Unit
deleteOrganizationalUnit (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deleteOrganizationalUnit"


-- | <p>Deletes the specified policy from your organization. Before you perform this operation, you must first detach the policy from all OUs, roots, and accounts.</p> <p>This operation can be called only from the organization's master account.</p>
deletePolicy :: forall eff. Organizations.Service -> OrganizationsTypes.DeletePolicyRequest -> Aff (exception :: EXCEPTION | eff) Unit
deletePolicy (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "deletePolicy"


-- | <p>Retrieves Organizations-related information about the specified account.</p> <p>This operation can be called only from the organization's master account.</p>
describeAccount :: forall eff. Organizations.Service -> OrganizationsTypes.DescribeAccountRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.DescribeAccountResponse
describeAccount (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeAccount"


-- | <p>Retrieves the current status of an asynchronous request to create an account.</p> <p>This operation can be called only from the organization's master account.</p>
describeCreateAccountStatus :: forall eff. Organizations.Service -> OrganizationsTypes.DescribeCreateAccountStatusRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.DescribeCreateAccountStatusResponse
describeCreateAccountStatus (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeCreateAccountStatus"


-- | <p>Retrieves information about a previously requested handshake. The handshake ID comes from the response to the original <a>InviteAccountToOrganization</a> operation that generated the handshake.</p> <p>You can access handshakes that are ACCEPTED, DECLINED, or CANCELED for only 30 days after they change to that state. They are then deleted and no longer accessible.</p> <p>This operation can be called from any account in the organization.</p>
describeHandshake :: forall eff. Organizations.Service -> OrganizationsTypes.DescribeHandshakeRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.DescribeHandshakeResponse
describeHandshake (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeHandshake"


-- | <p>Retrieves information about the organization that the user's account belongs to.</p> <p>This operation can be called from any account in the organization.</p>
describeOrganization :: forall eff. Organizations.Service ->  Aff (exception :: EXCEPTION | eff) OrganizationsTypes.DescribeOrganizationResponse
describeOrganization (Organizations.Service serviceImpl) = AWS.request serviceImpl method unit where
    method = AWS.MethodName "describeOrganization"


-- | <p>Retrieves information about an organizational unit (OU).</p> <p>This operation can be called only from the organization's master account.</p>
describeOrganizationalUnit :: forall eff. Organizations.Service -> OrganizationsTypes.DescribeOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.DescribeOrganizationalUnitResponse
describeOrganizationalUnit (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describeOrganizationalUnit"


-- | <p>Retrieves information about a policy.</p> <p>This operation can be called only from the organization's master account.</p>
describePolicy :: forall eff. Organizations.Service -> OrganizationsTypes.DescribePolicyRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.DescribePolicyResponse
describePolicy (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "describePolicy"


-- | <p>Detaches a policy from a target root, organizational unit, or account. If the policy being detached is a service control policy (SCP), the changes to permissions for IAM users and roles in affected accounts are immediate.</p> <p> <b>Note:</b> Every root, OU, and account must have at least one SCP attached. If you want to replace the default <code>FullAWSAccess</code> policy with one that limits the permissions that can be delegated, then you must attach the replacement policy before you can remove the default one. This is the authorization strategy of <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_about-scps.html#orgs_policies_whitelist">whitelisting</a>. If you instead attach a second SCP and leave the <code>FullAWSAccess</code> SCP still attached, and specify <code>"Effect": "Deny"</code> in the second SCP to override the <code>"Effect": "Allow"</code> in the <code>FullAWSAccess</code> policy (or any other attached SCP), then you are using the authorization strategy of <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_about-scps.html#orgs_policies_blacklist">blacklisting</a>. </p> <p>This operation can be called only from the organization's master account.</p>
detachPolicy :: forall eff. Organizations.Service -> OrganizationsTypes.DetachPolicyRequest -> Aff (exception :: EXCEPTION | eff) Unit
detachPolicy (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "detachPolicy"


-- | <p>Disables the integration of an AWS service (the service that is specified by <code>ServicePrincipal</code>) with AWS Organizations. When you disable integration, the specified service no longer can create a <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked role</a> in <i>new</i> accounts in your organization. This means the service can't perform operations on your behalf on any new accounts in your organization. The service can still perform operations in older accounts until the service completes its clean-up from AWS Organizations.</p> <p/> <important> <p>We recommend that you disable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the other service is aware that it can clean up any resources that are required only for the integration. How the service cleans up its resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service.</p> </important> <p>After you perform the <code>DisableAWSServiceAccess</code> operation, the specified service can no longer perform operations in your organization's accounts unless the operations are explicitly permitted by the IAM policies that are attached to your roles. </p> <p>For more information about integrating other services with AWS Organizations, including the list of services that work with Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account.</p>
disableAWSServiceAccess :: forall eff. Organizations.Service -> OrganizationsTypes.DisableAWSServiceAccessRequest -> Aff (exception :: EXCEPTION | eff) Unit
disableAWSServiceAccess (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disableAWSServiceAccess"


-- | <p>Disables an organizational control policy type in a root. A policy of a certain type can be attached to entities in a root only if that type is enabled in the root. After you perform this operation, you no longer can attach policies of the specified type to that root or to any OU or account in that root. You can undo this by using the <a>EnablePolicyType</a> operation.</p> <p>This operation can be called only from the organization's master account.</p>
disablePolicyType :: forall eff. Organizations.Service -> OrganizationsTypes.DisablePolicyTypeRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.DisablePolicyTypeResponse
disablePolicyType (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "disablePolicyType"


-- | <p>Enables the integration of an AWS service (the service that is specified by <code>ServicePrincipal</code>) with AWS Organizations. When you enable integration, you allow the specified service to create a <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked role</a> in all the accounts in your organization. This allows the service to perform operations on your behalf in your organization and its accounts.</p> <important> <p>We recommend that you enable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the service is aware that it can create the resources that are required for the integration. How the service creates those resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service.</p> </important> <p>For more information about enabling services to integrate with AWS Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account and only if the organization has <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">enabled all features</a>.</p>
enableAWSServiceAccess :: forall eff. Organizations.Service -> OrganizationsTypes.EnableAWSServiceAccessRequest -> Aff (exception :: EXCEPTION | eff) Unit
enableAWSServiceAccess (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "enableAWSServiceAccess"


-- | <p>Enables all features in an organization. This enables the use of organization policies that can restrict the services and actions that can be called in each account. Until you enable all features, you have access only to consolidated billing, and you can't use any of the advanced account administration features that AWS Organizations supports. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p> <important> <p>This operation is required only for organizations that were created explicitly with only the consolidated billing features enabled, or that were migrated from a Consolidated Billing account family to Organizations. Calling this operation sends a handshake to every invited account in the organization. The feature set change can be finalized and the additional features enabled only after all administrators in the invited accounts approve the change by accepting the handshake.</p> </important> <p>After all invited member accounts accept the handshake, you finalize the feature set change by accepting the handshake that contains <code>"Action": "ENABLE_ALL_FEATURES"</code>. This completes the change.</p> <p>After you enable all features in your organization, the master account in the organization can apply policies on all member accounts. These policies can restrict what users and even administrators in those accounts can do. The master account can apply policies that prevent accounts from leaving the organization. Ensure that your account administrators are aware of this.</p> <p>This operation can be called only from the organization's master account. </p>
enableAllFeatures :: forall eff. Organizations.Service -> OrganizationsTypes.EnableAllFeaturesRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.EnableAllFeaturesResponse
enableAllFeatures (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "enableAllFeatures"


-- | <p>Enables a policy type in a root. After you enable a policy type in a root, you can attach policies of that type to the root, any OU, or account in that root. You can undo this by using the <a>DisablePolicyType</a> operation.</p> <p>This operation can be called only from the organization's master account.</p>
enablePolicyType :: forall eff. Organizations.Service -> OrganizationsTypes.EnablePolicyTypeRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.EnablePolicyTypeResponse
enablePolicyType (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "enablePolicyType"


-- | <p>Sends an invitation to another account to join your organization as a member account. Organizations sends email on your behalf to the email address that is associated with the other account's owner. The invitation is implemented as a <a>Handshake</a> whose details are in the response.</p> <important> <p>You can invite AWS accounts only from the same seller as the master account. For example, if your organization's master account was created by Amazon Internet Services Pvt. Ltd (AISPL), an AWS seller in India, then you can only invite other AISPL accounts to your organization. You can't combine accounts from AISPL and AWS, or any other AWS seller. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilliing-India.html">Consolidated Billing in India</a>.</p> </important> <p>This operation can be called only from the organization's master account.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important>
inviteAccountToOrganization :: forall eff. Organizations.Service -> OrganizationsTypes.InviteAccountToOrganizationRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.InviteAccountToOrganizationResponse
inviteAccountToOrganization (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "inviteAccountToOrganization"


-- | <p>Removes a member account from its parent organization. This version of the operation is performed by the account that wants to leave. To remove a member account as a user in the master account, use <a>RemoveAccountFromOrganization</a> instead.</p> <p>This operation can be called only from a member account in the organization.</p> <important> <ul> <li> <p>The master account in an organization with all features enabled can set service control policies (SCPs) that can restrict what administrators of member accounts can do, including preventing them from successfully calling <code>LeaveOrganization</code> and leaving the organization. </p> </li> <li> <p>You can leave an organization as a member account only if the account is configured with the information required to operate as a standalone account. When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required of standalone accounts is <i>not</i> automatically collected. For each account that you want to make standalone, you must accept the End User License Agreement (EULA), choose a support plan, provide and verify the required contact information, and provide a current payment method. AWS uses the payment method to charge for any billable (not free tier) AWS activity that occurs while the account is not attached to an organization. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>You can leave an organization only after you enable IAM user access to billing in your account. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> </li> </ul> </important>
leaveOrganization :: forall eff. Organizations.Service ->  Aff (exception :: EXCEPTION | eff) Unit
leaveOrganization (Organizations.Service serviceImpl) = AWS.request serviceImpl method unit where
    method = AWS.MethodName "leaveOrganization"


-- | <p>Returns a list of the AWS services that you enabled to integrate with your organization. After a service on this list creates the resources that it requires for the integration, it can perform operations on your organization and its accounts.</p> <p>For more information about integrating other services with AWS Organizations, including the list of services that currently work with Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account.</p>
listAWSServiceAccessForOrganization :: forall eff. Organizations.Service -> OrganizationsTypes.ListAWSServiceAccessForOrganizationRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.ListAWSServiceAccessForOrganizationResponse
listAWSServiceAccessForOrganization (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listAWSServiceAccessForOrganization"


-- | <p>Lists all the accounts in the organization. To request only the accounts in a root or OU, use the <a>ListAccountsForParent</a> operation instead.</p> <p>This operation can be called only from the organization's master account.</p>
listAccounts :: forall eff. Organizations.Service -> OrganizationsTypes.ListAccountsRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.ListAccountsResponse
listAccounts (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listAccounts"


-- | <p>Lists the accounts in an organization that are contained by the specified target root or organizational unit (OU). If you specify the root, you get a list of all the accounts that are not in any OU. If you specify an OU, you get a list of all the accounts in only that OU, and not in any child OUs. To get a list of all accounts in the organization, use the <a>ListAccounts</a> operation.</p> <p>This operation can be called only from the organization's master account.</p>
listAccountsForParent :: forall eff. Organizations.Service -> OrganizationsTypes.ListAccountsForParentRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.ListAccountsForParentResponse
listAccountsForParent (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listAccountsForParent"


-- | <p>Lists all of the OUs or accounts that are contained in the specified parent OU or root. This operation, along with <a>ListParents</a> enables you to traverse the tree structure that makes up this root.</p> <p>This operation can be called only from the organization's master account.</p>
listChildren :: forall eff. Organizations.Service -> OrganizationsTypes.ListChildrenRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.ListChildrenResponse
listChildren (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listChildren"


-- | <p>Lists the account creation requests that match the specified status that is currently being tracked for the organization.</p> <p>This operation can be called only from the organization's master account.</p>
listCreateAccountStatus :: forall eff. Organizations.Service -> OrganizationsTypes.ListCreateAccountStatusRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.ListCreateAccountStatusResponse
listCreateAccountStatus (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listCreateAccountStatus"


-- | <p>Lists the current handshakes that are associated with the account of the requesting user.</p> <p>Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that they are deleted and no longer accessible.</p> <p>This operation can be called from any account in the organization.</p>
listHandshakesForAccount :: forall eff. Organizations.Service -> OrganizationsTypes.ListHandshakesForAccountRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.ListHandshakesForAccountResponse
listHandshakesForAccount (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listHandshakesForAccount"


-- | <p>Lists the handshakes that are associated with the organization that the requesting user is part of. The <code>ListHandshakesForOrganization</code> operation returns a list of handshake structures. Each structure contains details and status about a handshake.</p> <p>Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that they are deleted and no longer accessible.</p> <p>This operation can be called only from the organization's master account.</p>
listHandshakesForOrganization :: forall eff. Organizations.Service -> OrganizationsTypes.ListHandshakesForOrganizationRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.ListHandshakesForOrganizationResponse
listHandshakesForOrganization (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listHandshakesForOrganization"


-- | <p>Lists the organizational units (OUs) in a parent organizational unit or root.</p> <p>This operation can be called only from the organization's master account.</p>
listOrganizationalUnitsForParent :: forall eff. Organizations.Service -> OrganizationsTypes.ListOrganizationalUnitsForParentRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.ListOrganizationalUnitsForParentResponse
listOrganizationalUnitsForParent (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listOrganizationalUnitsForParent"


-- | <p>Lists the root or organizational units (OUs) that serve as the immediate parent of the specified child OU or account. This operation, along with <a>ListChildren</a> enables you to traverse the tree structure that makes up this root.</p> <p>This operation can be called only from the organization's master account.</p> <note> <p>In the current release, a child can have only a single parent. </p> </note>
listParents :: forall eff. Organizations.Service -> OrganizationsTypes.ListParentsRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.ListParentsResponse
listParents (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listParents"


-- | <p>Retrieves the list of all policies in an organization of a specified type.</p> <p>This operation can be called only from the organization's master account.</p>
listPolicies :: forall eff. Organizations.Service -> OrganizationsTypes.ListPoliciesRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.ListPoliciesResponse
listPolicies (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPolicies"


-- | <p>Lists the policies that are directly attached to the specified target root, organizational unit (OU), or account. You must specify the policy type that you want included in the returned list.</p> <p>This operation can be called only from the organization's master account.</p>
listPoliciesForTarget :: forall eff. Organizations.Service -> OrganizationsTypes.ListPoliciesForTargetRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.ListPoliciesForTargetResponse
listPoliciesForTarget (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listPoliciesForTarget"


-- | <p>Lists the roots that are defined in the current organization.</p> <p>This operation can be called only from the organization's master account.</p>
listRoots :: forall eff. Organizations.Service -> OrganizationsTypes.ListRootsRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.ListRootsResponse
listRoots (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listRoots"


-- | <p>Lists all the roots, OUs, and accounts to which the specified policy is attached.</p> <p>This operation can be called only from the organization's master account.</p>
listTargetsForPolicy :: forall eff. Organizations.Service -> OrganizationsTypes.ListTargetsForPolicyRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.ListTargetsForPolicyResponse
listTargetsForPolicy (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "listTargetsForPolicy"


-- | <p>Moves an account from its current source parent root or OU to the specified destination parent root or OU.</p> <p>This operation can be called only from the organization's master account.</p>
moveAccount :: forall eff. Organizations.Service -> OrganizationsTypes.MoveAccountRequest -> Aff (exception :: EXCEPTION | eff) Unit
moveAccount (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "moveAccount"


-- | <p>Removes the specified account from the organization.</p> <p>The removed account becomes a stand-alone account that is not a member of any organization. It is no longer subject to any policies and is responsible for its own bill payments. The organization's master account is no longer charged for any expenses accrued by the member account after it is removed from the organization.</p> <p>This operation can be called only from the organization's master account. Member accounts can remove themselves with <a>LeaveOrganization</a> instead.</p> <important> <ul> <li> <p>You can remove an account from your organization only if the account is configured with the information required to operate as a standalone account. When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required of standalone accounts is <i>not</i> automatically collected. For an account that you want to make standalone, you must accept the End User License Agreement (EULA), choose a support plan, provide and verify the required contact information, and provide a current payment method. AWS uses the payment method to charge for any billable (not free tier) AWS activity that occurs while the account is not attached to an organization. To remove an account that does not yet have this information, you must sign in as the member account and follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>You can remove a member account only after you enable IAM user access to billing in the member account. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> </li> </ul> </important>
removeAccountFromOrganization :: forall eff. Organizations.Service -> OrganizationsTypes.RemoveAccountFromOrganizationRequest -> Aff (exception :: EXCEPTION | eff) Unit
removeAccountFromOrganization (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "removeAccountFromOrganization"


-- | <p>Renames the specified organizational unit (OU). The ID and ARN do not change. The child OUs and accounts remain in place, and any attached policies of the OU remain attached. </p> <p>This operation can be called only from the organization's master account.</p>
updateOrganizationalUnit :: forall eff. Organizations.Service -> OrganizationsTypes.UpdateOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.UpdateOrganizationalUnitResponse
updateOrganizationalUnit (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updateOrganizationalUnit"


-- | <p>Updates an existing policy with a new name, description, or content. If any parameter is not supplied, that value remains unchanged. Note that you cannot change a policy's type.</p> <p>This operation can be called only from the organization's master account.</p>
updatePolicy :: forall eff. Organizations.Service -> OrganizationsTypes.UpdatePolicyRequest -> Aff (exception :: EXCEPTION | eff) OrganizationsTypes.UpdatePolicyResponse
updatePolicy (Organizations.Service serviceImpl) = AWS.request serviceImpl method  where
    method = AWS.MethodName "updatePolicy"
