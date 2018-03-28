## Module AWS.Organizations.Requests

#### `acceptHandshake`

``` purescript
acceptHandshake :: forall eff. Service -> AcceptHandshakeRequest -> Aff (exception :: EXCEPTION | eff) AcceptHandshakeResponse
```

<p>Sends a response to the originator of a handshake agreeing to the action proposed by the handshake request. </p> <p>This operation can be called only by the following principals when they also have the relevant IAM permissions:</p> <ul> <li> <p> <b>Invitation to join</b> or <b>Approve all features request</b> handshakes: only a principal from the member account. </p> <p>The user who calls the API for an invitation to join must have the <code>organizations:AcceptHandshake</code> permission. If you enabled all features in the organization, then the user must also have the <code>iam:CreateServiceLinkedRole</code> permission so that Organizations can create the required service-linked role named <i>OrgsServiceLinkedRoleName</i>. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles">AWS Organizations and Service-Linked Roles</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p> <b>Enable all features final confirmation</b> handshake: only a principal from the master account.</p> <p>For more information about invitations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html">Inviting an AWS Account to Join Your Organization</a> in the <i>AWS Organizations User Guide</i>. For more information about requests to enable all features in the organization, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul> <p>After you accept a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.</p>

#### `attachPolicy`

``` purescript
attachPolicy :: forall eff. Service -> AttachPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Attaches a policy to a root, an organizational unit, or an individual account. How the policy affects accounts depends on the type of policy:</p> <ul> <li> <p> <b>Service control policy (SCP)</b> - An SCP specifies what permissions can be delegated to users in affected member accounts. The scope of influence for a policy depends on what you attach the policy to:</p> <ul> <li> <p>If you attach an SCP to a root, it affects all accounts in the organization.</p> </li> <li> <p>If you attach an SCP to an OU, it affects all accounts in that OU and in any child OUs.</p> </li> <li> <p>If you attach the policy directly to an account, then it affects only that account.</p> </li> </ul> <p>SCPs essentially are permission "filters". When you attach one SCP to a higher level root or OU, and you also attach a different SCP to a child OU or to an account, the child policy can further restrict only the permissions that pass through the parent filter and are available to the child. An SCP that is attached to a child cannot grant a permission that is not already granted by the parent. For example, imagine that the parent SCP allows permissions A, B, C, D, and E. The child SCP allows C, D, E, F, and G. The result is that the accounts affected by the child SCP are allowed to use only C, D, and E. They cannot use A or B because they were filtered out by the child OU. They also cannot use F and G because they were filtered out by the parent OU. They cannot be granted back by the child SCP; child SCPs can only filter the permissions they receive from the parent SCP.</p> <p>AWS Organizations attaches a default SCP named <code>"FullAWSAccess</code> to every root, OU, and account. This default SCP allows all services and actions, enabling any new child OU or account to inherit the permissions of the parent root or OU. If you detach the default policy, you must replace it with a policy that specifies the permissions that you want to allow in that OU or account.</p> <p>For more information about how Organizations policies permissions work, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">Using Service Control Policies</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul> <p>This operation can be called only from the organization's master account.</p>

#### `cancelHandshake`

``` purescript
cancelHandshake :: forall eff. Service -> CancelHandshakeRequest -> Aff (exception :: EXCEPTION | eff) CancelHandshakeResponse
```

<p>Cancels a handshake. Canceling a handshake sets the handshake state to <code>CANCELED</code>. </p> <p>This operation can be called only from the account that originated the handshake. The recipient of the handshake can't cancel it, but can use <a>DeclineHandshake</a> instead. After a handshake is canceled, the recipient can no longer respond to that handshake.</p> <p>After you cancel a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.</p>

#### `createAccount`

``` purescript
createAccount :: forall eff. Service -> CreateAccountRequest -> Aff (exception :: EXCEPTION | eff) CreateAccountResponse
```

<p>Creates an AWS account that is automatically a member of the organization whose credentials made the request. This is an asynchronous request that AWS performs in the background. If you want to check the status of the request later, you need the <code>OperationId</code> response element from this operation to provide as a parameter to the <a>DescribeCreateAccountStatus</a> operation.</p> <p>The user who calls the API for an invitation to join must have the <code>organizations:CreateAccount</code> permission. If you enabled all features in the organization, then the user must also have the <code>iam:CreateServiceLinkedRole</code> permission so that Organizations can create the required service-linked role named <i>OrgsServiceLinkedRoleName</i>. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles">AWS Organizations and Service-Linked Roles</a> in the <i>AWS Organizations User Guide</i>.</p> <p>The user in the master account who calls this API must also have the <code>iam:CreateRole</code> permission because AWS Organizations preconfigures the new member account with a role (named <code>OrganizationAccountAccessRole</code> by default) that grants users in the master account administrator permissions in the new member account. Principals in the master account can assume the role. AWS Organizations clones the company name and address information for the new account from the organization's master account.</p> <p>This operation can be called only from the organization's master account.</p> <p>For more information about creating accounts, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html">Creating an AWS Account in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p> <important> <p>When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required for the account to operate as a standalone account, such as a payment method and signing the End User Licence Agreement (EULA) is <i>not</i> automatically collected. If you must remove an account from your organization later, you can do so only after you provide the missing information. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </important> <note> <p>When you create a member account with this operation, you can choose whether to create the account with the <b>IAM User and Role Access to Billing Information</b> switch enabled. If you enable it, IAM users and roles that have appropriate permissions can view billing information for the account. If you disable this, then only the account root user can access billing information. For information about how to disable this for an account, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html">Granting Access to Your Billing Information and Tools</a>.</p> </note> <p>This operation can be called only from the organization's master account.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important>

#### `createOrganization`

``` purescript
createOrganization :: forall eff. Service -> CreateOrganizationRequest -> Aff (exception :: EXCEPTION | eff) CreateOrganizationResponse
```

<p>Creates an AWS organization. The account whose user is calling the CreateOrganization operation automatically becomes the <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_getting-started_concepts.html#account">master account</a> of the new organization.</p> <p>This operation must be called using credentials from the account that is to become the new organization's master account. The principal must also have the relevant IAM permissions.</p> <p>By default (or if you set the <code>FeatureSet</code> parameter to <code>ALL</code>), the new organization is created with all features enabled and service control policies automatically enabled in the root. If you instead choose to create the organization supporting only the consolidated billing features by setting the <code>FeatureSet</code> parameter to <code>CONSOLIDATED_BILLING"</code>, then no policy types are enabled by default and you cannot use organization policies.</p>

#### `createOrganizationalUnit`

``` purescript
createOrganizationalUnit :: forall eff. Service -> CreateOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) CreateOrganizationalUnitResponse
```

<p>Creates an organizational unit (OU) within a root or parent OU. An OU is a container for accounts that enables you to organize your accounts to apply policies according to your business requirements. The number of levels deep that you can nest OUs is dependent upon the policy types enabled for that root. For service control policies, the limit is five. </p> <p>For more information about OUs, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html">Managing Organizational Units</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account.</p>

#### `createPolicy`

``` purescript
createPolicy :: forall eff. Service -> CreatePolicyRequest -> Aff (exception :: EXCEPTION | eff) CreatePolicyResponse
```

<p>Creates a policy of a specified type that you can attach to a root, an organizational unit (OU), or an individual AWS account.</p> <p>For more information about policies and their use, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html">Managing Organization Policies</a>.</p> <p>This operation can be called only from the organization's master account.</p>

#### `declineHandshake`

``` purescript
declineHandshake :: forall eff. Service -> DeclineHandshakeRequest -> Aff (exception :: EXCEPTION | eff) DeclineHandshakeResponse
```

<p>Declines a handshake request. This sets the handshake state to <code>DECLINED</code> and effectively deactivates the request.</p> <p>This operation can be called only from the account that received the handshake. The originator of the handshake can use <a>CancelHandshake</a> instead. The originator can't reactivate a declined request, but can re-initiate the process with a new handshake request.</p> <p>After you decline a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.</p>

#### `deleteOrganization`

``` purescript
deleteOrganization :: forall eff. Service -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the organization. You can delete an organization only by using credentials from the master account. The organization must be empty of member accounts, OUs, and policies.</p>

#### `deleteOrganizationalUnit`

``` purescript
deleteOrganizationalUnit :: forall eff. Service -> DeleteOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes an organizational unit from a root or another OU. You must first remove all accounts and child OUs from the OU that you want to delete.</p> <p>This operation can be called only from the organization's master account.</p>

#### `deletePolicy`

``` purescript
deletePolicy :: forall eff. Service -> DeletePolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified policy from your organization. Before you perform this operation, you must first detach the policy from all OUs, roots, and accounts.</p> <p>This operation can be called only from the organization's master account.</p>

#### `describeAccount`

``` purescript
describeAccount :: forall eff. Service -> DescribeAccountRequest -> Aff (exception :: EXCEPTION | eff) DescribeAccountResponse
```

<p>Retrieves Organizations-related information about the specified account.</p> <p>This operation can be called only from the organization's master account.</p>

#### `describeCreateAccountStatus`

``` purescript
describeCreateAccountStatus :: forall eff. Service -> DescribeCreateAccountStatusRequest -> Aff (exception :: EXCEPTION | eff) DescribeCreateAccountStatusResponse
```

<p>Retrieves the current status of an asynchronous request to create an account.</p> <p>This operation can be called only from the organization's master account.</p>

#### `describeHandshake`

``` purescript
describeHandshake :: forall eff. Service -> DescribeHandshakeRequest -> Aff (exception :: EXCEPTION | eff) DescribeHandshakeResponse
```

<p>Retrieves information about a previously requested handshake. The handshake ID comes from the response to the original <a>InviteAccountToOrganization</a> operation that generated the handshake.</p> <p>You can access handshakes that are ACCEPTED, DECLINED, or CANCELED for only 30 days after they change to that state. They are then deleted and no longer accessible.</p> <p>This operation can be called from any account in the organization.</p>

#### `describeOrganization`

``` purescript
describeOrganization :: forall eff. Service -> Aff (exception :: EXCEPTION | eff) DescribeOrganizationResponse
```

<p>Retrieves information about the organization that the user's account belongs to.</p> <p>This operation can be called from any account in the organization.</p>

#### `describeOrganizationalUnit`

``` purescript
describeOrganizationalUnit :: forall eff. Service -> DescribeOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) DescribeOrganizationalUnitResponse
```

<p>Retrieves information about an organizational unit (OU).</p> <p>This operation can be called only from the organization's master account.</p>

#### `describePolicy`

``` purescript
describePolicy :: forall eff. Service -> DescribePolicyRequest -> Aff (exception :: EXCEPTION | eff) DescribePolicyResponse
```

<p>Retrieves information about a policy.</p> <p>This operation can be called only from the organization's master account.</p>

#### `detachPolicy`

``` purescript
detachPolicy :: forall eff. Service -> DetachPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Detaches a policy from a target root, organizational unit, or account. If the policy being detached is a service control policy (SCP), the changes to permissions for IAM users and roles in affected accounts are immediate.</p> <p> <b>Note:</b> Every root, OU, and account must have at least one SCP attached. If you want to replace the default <code>FullAWSAccess</code> policy with one that limits the permissions that can be delegated, then you must attach the replacement policy before you can remove the default one. This is the authorization strategy of <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_about-scps.html#orgs_policies_whitelist">whitelisting</a>. If you instead attach a second SCP and leave the <code>FullAWSAccess</code> SCP still attached, and specify <code>"Effect": "Deny"</code> in the second SCP to override the <code>"Effect": "Allow"</code> in the <code>FullAWSAccess</code> policy (or any other attached SCP), then you are using the authorization strategy of <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_about-scps.html#orgs_policies_blacklist">blacklisting</a>. </p> <p>This operation can be called only from the organization's master account.</p>

#### `disableAWSServiceAccess`

``` purescript
disableAWSServiceAccess :: forall eff. Service -> DisableAWSServiceAccessRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Disables the integration of an AWS service (the service that is specified by <code>ServicePrincipal</code>) with AWS Organizations. When you disable integration, the specified service no longer can create a <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked role</a> in <i>new</i> accounts in your organization. This means the service can't perform operations on your behalf on any new accounts in your organization. The service can still perform operations in older accounts until the service completes its clean-up from AWS Organizations.</p> <p/> <important> <p>We recommend that you disable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the other service is aware that it can clean up any resources that are required only for the integration. How the service cleans up its resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service.</p> </important> <p>After you perform the <code>DisableAWSServiceAccess</code> operation, the specified service can no longer perform operations in your organization's accounts unless the operations are explicitly permitted by the IAM policies that are attached to your roles. </p> <p>For more information about integrating other services with AWS Organizations, including the list of services that work with Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account.</p>

#### `disablePolicyType`

``` purescript
disablePolicyType :: forall eff. Service -> DisablePolicyTypeRequest -> Aff (exception :: EXCEPTION | eff) DisablePolicyTypeResponse
```

<p>Disables an organizational control policy type in a root. A policy of a certain type can be attached to entities in a root only if that type is enabled in the root. After you perform this operation, you no longer can attach policies of the specified type to that root or to any OU or account in that root. You can undo this by using the <a>EnablePolicyType</a> operation.</p> <p>This operation can be called only from the organization's master account.</p>

#### `enableAWSServiceAccess`

``` purescript
enableAWSServiceAccess :: forall eff. Service -> EnableAWSServiceAccessRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Enables the integration of an AWS service (the service that is specified by <code>ServicePrincipal</code>) with AWS Organizations. When you enable integration, you allow the specified service to create a <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked role</a> in all the accounts in your organization. This allows the service to perform operations on your behalf in your organization and its accounts.</p> <important> <p>We recommend that you enable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the service is aware that it can create the resources that are required for the integration. How the service creates those resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service.</p> </important> <p>For more information about enabling services to integrate with AWS Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account and only if the organization has <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">enabled all features</a>.</p>

#### `enableAllFeatures`

``` purescript
enableAllFeatures :: forall eff. Service -> EnableAllFeaturesRequest -> Aff (exception :: EXCEPTION | eff) EnableAllFeaturesResponse
```

<p>Enables all features in an organization. This enables the use of organization policies that can restrict the services and actions that can be called in each account. Until you enable all features, you have access only to consolidated billing, and you can't use any of the advanced account administration features that AWS Organizations supports. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p> <important> <p>This operation is required only for organizations that were created explicitly with only the consolidated billing features enabled, or that were migrated from a Consolidated Billing account family to Organizations. Calling this operation sends a handshake to every invited account in the organization. The feature set change can be finalized and the additional features enabled only after all administrators in the invited accounts approve the change by accepting the handshake.</p> </important> <p>After all invited member accounts accept the handshake, you finalize the feature set change by accepting the handshake that contains <code>"Action": "ENABLE_ALL_FEATURES"</code>. This completes the change.</p> <p>After you enable all features in your organization, the master account in the organization can apply policies on all member accounts. These policies can restrict what users and even administrators in those accounts can do. The master account can apply policies that prevent accounts from leaving the organization. Ensure that your account administrators are aware of this.</p> <p>This operation can be called only from the organization's master account. </p>

#### `enablePolicyType`

``` purescript
enablePolicyType :: forall eff. Service -> EnablePolicyTypeRequest -> Aff (exception :: EXCEPTION | eff) EnablePolicyTypeResponse
```

<p>Enables a policy type in a root. After you enable a policy type in a root, you can attach policies of that type to the root, any OU, or account in that root. You can undo this by using the <a>DisablePolicyType</a> operation.</p> <p>This operation can be called only from the organization's master account.</p>

#### `inviteAccountToOrganization`

``` purescript
inviteAccountToOrganization :: forall eff. Service -> InviteAccountToOrganizationRequest -> Aff (exception :: EXCEPTION | eff) InviteAccountToOrganizationResponse
```

<p>Sends an invitation to another account to join your organization as a member account. Organizations sends email on your behalf to the email address that is associated with the other account's owner. The invitation is implemented as a <a>Handshake</a> whose details are in the response.</p> <important> <p>You can invite AWS accounts only from the same seller as the master account. For example, if your organization's master account was created by Amazon Internet Services Pvt. Ltd (AISPL), an AWS seller in India, then you can only invite other AISPL accounts to your organization. You can't combine accounts from AISPL and AWS, or any other AWS seller. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilliing-India.html">Consolidated Billing in India</a>.</p> </important> <p>This operation can be called only from the organization's master account.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important>

#### `leaveOrganization`

``` purescript
leaveOrganization :: forall eff. Service -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Removes a member account from its parent organization. This version of the operation is performed by the account that wants to leave. To remove a member account as a user in the master account, use <a>RemoveAccountFromOrganization</a> instead.</p> <p>This operation can be called only from a member account in the organization.</p> <important> <ul> <li> <p>The master account in an organization with all features enabled can set service control policies (SCPs) that can restrict what administrators of member accounts can do, including preventing them from successfully calling <code>LeaveOrganization</code> and leaving the organization. </p> </li> <li> <p>You can leave an organization as a member account only if the account is configured with the information required to operate as a standalone account. When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required of standalone accounts is <i>not</i> automatically collected. For each account that you want to make standalone, you must accept the End User License Agreement (EULA), choose a support plan, provide and verify the required contact information, and provide a current payment method. AWS uses the payment method to charge for any billable (not free tier) AWS activity that occurs while the account is not attached to an organization. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>You can leave an organization only after you enable IAM user access to billing in your account. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> </li> </ul> </important>

#### `listAWSServiceAccessForOrganization`

``` purescript
listAWSServiceAccessForOrganization :: forall eff. Service -> ListAWSServiceAccessForOrganizationRequest -> Aff (exception :: EXCEPTION | eff) ListAWSServiceAccessForOrganizationResponse
```

<p>Returns a list of the AWS services that you enabled to integrate with your organization. After a service on this list creates the resources that it requires for the integration, it can perform operations on your organization and its accounts.</p> <p>For more information about integrating other services with AWS Organizations, including the list of services that currently work with Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listAccounts`

``` purescript
listAccounts :: forall eff. Service -> ListAccountsRequest -> Aff (exception :: EXCEPTION | eff) ListAccountsResponse
```

<p>Lists all the accounts in the organization. To request only the accounts in a root or OU, use the <a>ListAccountsForParent</a> operation instead.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listAccountsForParent`

``` purescript
listAccountsForParent :: forall eff. Service -> ListAccountsForParentRequest -> Aff (exception :: EXCEPTION | eff) ListAccountsForParentResponse
```

<p>Lists the accounts in an organization that are contained by the specified target root or organizational unit (OU). If you specify the root, you get a list of all the accounts that are not in any OU. If you specify an OU, you get a list of all the accounts in only that OU, and not in any child OUs. To get a list of all accounts in the organization, use the <a>ListAccounts</a> operation.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listChildren`

``` purescript
listChildren :: forall eff. Service -> ListChildrenRequest -> Aff (exception :: EXCEPTION | eff) ListChildrenResponse
```

<p>Lists all of the OUs or accounts that are contained in the specified parent OU or root. This operation, along with <a>ListParents</a> enables you to traverse the tree structure that makes up this root.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listCreateAccountStatus`

``` purescript
listCreateAccountStatus :: forall eff. Service -> ListCreateAccountStatusRequest -> Aff (exception :: EXCEPTION | eff) ListCreateAccountStatusResponse
```

<p>Lists the account creation requests that match the specified status that is currently being tracked for the organization.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listHandshakesForAccount`

``` purescript
listHandshakesForAccount :: forall eff. Service -> ListHandshakesForAccountRequest -> Aff (exception :: EXCEPTION | eff) ListHandshakesForAccountResponse
```

<p>Lists the current handshakes that are associated with the account of the requesting user.</p> <p>Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that they are deleted and no longer accessible.</p> <p>This operation can be called from any account in the organization.</p>

#### `listHandshakesForOrganization`

``` purescript
listHandshakesForOrganization :: forall eff. Service -> ListHandshakesForOrganizationRequest -> Aff (exception :: EXCEPTION | eff) ListHandshakesForOrganizationResponse
```

<p>Lists the handshakes that are associated with the organization that the requesting user is part of. The <code>ListHandshakesForOrganization</code> operation returns a list of handshake structures. Each structure contains details and status about a handshake.</p> <p>Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that they are deleted and no longer accessible.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listOrganizationalUnitsForParent`

``` purescript
listOrganizationalUnitsForParent :: forall eff. Service -> ListOrganizationalUnitsForParentRequest -> Aff (exception :: EXCEPTION | eff) ListOrganizationalUnitsForParentResponse
```

<p>Lists the organizational units (OUs) in a parent organizational unit or root.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listParents`

``` purescript
listParents :: forall eff. Service -> ListParentsRequest -> Aff (exception :: EXCEPTION | eff) ListParentsResponse
```

<p>Lists the root or organizational units (OUs) that serve as the immediate parent of the specified child OU or account. This operation, along with <a>ListChildren</a> enables you to traverse the tree structure that makes up this root.</p> <p>This operation can be called only from the organization's master account.</p> <note> <p>In the current release, a child can have only a single parent. </p> </note>

#### `listPolicies`

``` purescript
listPolicies :: forall eff. Service -> ListPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListPoliciesResponse
```

<p>Retrieves the list of all policies in an organization of a specified type.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listPoliciesForTarget`

``` purescript
listPoliciesForTarget :: forall eff. Service -> ListPoliciesForTargetRequest -> Aff (exception :: EXCEPTION | eff) ListPoliciesForTargetResponse
```

<p>Lists the policies that are directly attached to the specified target root, organizational unit (OU), or account. You must specify the policy type that you want included in the returned list.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listRoots`

``` purescript
listRoots :: forall eff. Service -> ListRootsRequest -> Aff (exception :: EXCEPTION | eff) ListRootsResponse
```

<p>Lists the roots that are defined in the current organization.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listTargetsForPolicy`

``` purescript
listTargetsForPolicy :: forall eff. Service -> ListTargetsForPolicyRequest -> Aff (exception :: EXCEPTION | eff) ListTargetsForPolicyResponse
```

<p>Lists all the roots, OUs, and accounts to which the specified policy is attached.</p> <p>This operation can be called only from the organization's master account.</p>

#### `moveAccount`

``` purescript
moveAccount :: forall eff. Service -> MoveAccountRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Moves an account from its current source parent root or OU to the specified destination parent root or OU.</p> <p>This operation can be called only from the organization's master account.</p>

#### `removeAccountFromOrganization`

``` purescript
removeAccountFromOrganization :: forall eff. Service -> RemoveAccountFromOrganizationRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Removes the specified account from the organization.</p> <p>The removed account becomes a stand-alone account that is not a member of any organization. It is no longer subject to any policies and is responsible for its own bill payments. The organization's master account is no longer charged for any expenses accrued by the member account after it is removed from the organization.</p> <p>This operation can be called only from the organization's master account. Member accounts can remove themselves with <a>LeaveOrganization</a> instead.</p> <important> <ul> <li> <p>You can remove an account from your organization only if the account is configured with the information required to operate as a standalone account. When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required of standalone accounts is <i>not</i> automatically collected. For an account that you want to make standalone, you must accept the End User License Agreement (EULA), choose a support plan, provide and verify the required contact information, and provide a current payment method. AWS uses the payment method to charge for any billable (not free tier) AWS activity that occurs while the account is not attached to an organization. To remove an account that does not yet have this information, you must sign in as the member account and follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>You can remove a member account only after you enable IAM user access to billing in the member account. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> </li> </ul> </important>

#### `updateOrganizationalUnit`

``` purescript
updateOrganizationalUnit :: forall eff. Service -> UpdateOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) UpdateOrganizationalUnitResponse
```

<p>Renames the specified organizational unit (OU). The ID and ARN do not change. The child OUs and accounts remain in place, and any attached policies of the OU remain attached. </p> <p>This operation can be called only from the organization's master account.</p>

#### `updatePolicy`

``` purescript
updatePolicy :: forall eff. Service -> UpdatePolicyRequest -> Aff (exception :: EXCEPTION | eff) UpdatePolicyResponse
```

<p>Updates an existing policy with a new name, description, or content. If any parameter is not supplied, that value remains unchanged. Note that you cannot change a policy's type.</p> <p>This operation can be called only from the organization's master account.</p>


