## Module AWS.Organizations

<fullname>AWS Organizations API Reference</fullname> <p>AWS Organizations is a web service that enables you to consolidate your multiple AWS accounts into an <i>organization</i> and centrally manage your accounts and their resources.</p> <p>This guide provides descriptions of the Organizations API. For more information about using this service, see the <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_introduction.html">AWS Organizations User Guide</a>.</p> <p> <b>API Version</b> </p> <p>This version of the Organizations API Reference documents the Organizations API version 2016-11-28.</p> <note> <p>As an alternative to using the API directly, you can use one of the AWS SDKs, which consist of libraries and sample code for various programming languages and platforms (Java, Ruby, .NET, iOS, Android, and more). The SDKs provide a convenient way to create programmatic access to AWS Organizations. For example, the SDKs take care of cryptographically signing requests, managing errors, and retrying requests automatically. For more information about the AWS SDKs, including how to download and install them, see <a href="http://aws.amazon.com/tools/">Tools for Amazon Web Services</a>.</p> </note> <p>We recommend that you use the AWS SDKs to make programmatic API calls to Organizations. However, you also can use the Organizations Query API to make direct calls to the Organizations web service. To learn more about the Organizations Query API, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_query-requests.html">Making Query Requests</a> in the <i>AWS Organizations User Guide</i>. Organizations supports GET and POST requests for all actions. That is, the API does not require you to use GET for some actions and POST for others. However, GET requests are subject to the limitation size of a URL. Therefore, for operations that require larger sizes, use a POST request.</p> <p> <b>Signing Requests</b> </p> <p>When you send HTTP requests to AWS, you must sign the requests so that AWS can identify who sent them. You sign requests with your AWS access key, which consists of an access key ID and a secret access key. We strongly recommend that you do not create an access key for your root account. Anyone who has the access key for your root account has unrestricted access to all the resources in your account. Instead, create an access key for an IAM user account that has administrative privileges. As another option, use AWS Security Token Service to generate temporary security credentials, and use those credentials to sign requests. </p> <p>To sign requests, we recommend that you use <a href="http://docs.aws.amazon.com/general/latest/gr/signature-version-4.html">Signature Version 4</a>. If you have an existing application that uses Signature Version 2, you do not have to update it to use Signature Version 4. However, some operations now require Signature Version 4. The documentation for operations that require version 4 indicate this requirement. </p> <p>When you use the AWS Command Line Interface (AWS CLI) or one of the AWS SDKs to make requests to AWS, these tools automatically sign the requests for you with the access key that you specify when you configure the tools.</p> <p>In this release, each organization can have only one root. In a future release, a single organization will support multiple roots.</p> <p> <b>Support and Feedback for AWS Organizations</b> </p> <p>We welcome your feedback. Send your comments to <a href="mailto:feedback-awsorganizations@amazon.com">feedback-awsorganizations@amazon.com</a> or post your feedback and questions in the <a href="http://forums.aws.amazon.com/forum.jspa?forumID=219">AWS Organizations support forum</a>. For more information about the AWS support forums, see <a href="http://forums.aws.amazon.com/help.jspa">Forums Help</a>.</p> <p> <b>Endpoint to Call When Using the CLI or the AWS API</b> </p> <p>For the current release of Organizations, you must specify the <code>us-east-1</code> region for all AWS API and CLI calls. You can do this in the CLI by using these parameters and commands:</p> <ul> <li> <p>Use the following parameter with each command to specify both the endpoint and its region:</p> <p> <code>--endpoint-url https://organizations.us-east-1.amazonaws.com</code> </p> </li> <li> <p>Use the default endpoint, but configure your default region with this command:</p> <p> <code>aws configure set default.region us-east-1</code> </p> </li> <li> <p>Use the following parameter with each command to specify the endpoint:</p> <p> <code>--region us-east-1</code> </p> </li> </ul> <p>For the various SDKs used to call the APIs, see the documentation for the SDK of interest to learn how to direct the requests to a specific endpoint. For more information, see <a href="http://docs.aws.amazon.com/general/latest/gr/rande.html#sts_region">Regions and Endpoints</a> in the <i>AWS General Reference</i>. </p> <p> <b>How examples are presented</b> </p> <p>The JSON returned by the AWS Organizations service as response to your requests is returned as a single long string without line breaks or formatting whitespace. Both line breaks and whitespace are included in the examples in this guide to improve readability. When example input parameters also would result in long strings that would extend beyond the screen, we insert line breaks to enhance readability. You should always submit the input as a single JSON text string.</p> <p> <b>Recording API Requests</b> </p> <p>AWS Organizations supports AWS CloudTrail, a service that records AWS API calls for your AWS account and delivers log files to an Amazon S3 bucket. By using information collected by AWS CloudTrail, you can determine which requests were successfully made to Organizations, who made the request, when it was made, and so on. For more about AWS Organizations and its support for AWS CloudTrail, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_cloudtrail-integration.html">Logging AWS Organizations Events with AWS CloudTrail</a> in the <i>AWS Organizations User Guide</i>. To learn more about CloudTrail, including how to turn it on and find your log files, see the <a href="http://docs.aws.amazon.com/awscloudtrail/latest/userguide/what_is_cloud_trail_top_level.html">AWS CloudTrail User Guide</a>.</p>

#### `acceptHandshake`

``` purescript
acceptHandshake :: forall eff. AcceptHandshakeRequest -> Aff (exception :: EXCEPTION | eff) AcceptHandshakeResponse
```

<p>Sends a response to the originator of a handshake agreeing to the action proposed by the handshake request. </p> <p>This operation can be called only by the following principals when they also have the relevant IAM permissions:</p> <ul> <li> <p> <b>Invitation to join</b> or <b>Approve all features request</b> handshakes: only a principal from the member account. </p> <p>The user who calls the API for an invitation to join must have the <code>organizations:AcceptHandshake</code> permission. If you enabled all features in the organization, then the user must also have the <code>iam:CreateServiceLinkedRole</code> permission so that Organizations can create the required service-linked role named <i>OrgsServiceLinkedRoleName</i>. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles">AWS Organizations and Service-Linked Roles</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p> <b>Enable all features final confirmation</b> handshake: only a principal from the master account.</p> <p>For more information about invitations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_invites.html">Inviting an AWS Account to Join Your Organization</a> in the <i>AWS Organizations User Guide</i>. For more information about requests to enable all features in the organization, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul> <p>After you accept a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.</p>

#### `attachPolicy`

``` purescript
attachPolicy :: forall eff. AttachPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Attaches a policy to a root, an organizational unit, or an individual account. How the policy affects accounts depends on the type of policy:</p> <ul> <li> <p> <b>Service control policy (SCP)</b> - An SCP specifies what permissions can be delegated to users in affected member accounts. The scope of influence for a policy depends on what you attach the policy to:</p> <ul> <li> <p>If you attach an SCP to a root, it affects all accounts in the organization.</p> </li> <li> <p>If you attach an SCP to an OU, it affects all accounts in that OU and in any child OUs.</p> </li> <li> <p>If you attach the policy directly to an account, then it affects only that account.</p> </li> </ul> <p>SCPs essentially are permission "filters". When you attach one SCP to a higher level root or OU, and you also attach a different SCP to a child OU or to an account, the child policy can further restrict only the permissions that pass through the parent filter and are available to the child. An SCP that is attached to a child cannot grant a permission that is not already granted by the parent. For example, imagine that the parent SCP allows permissions A, B, C, D, and E. The child SCP allows C, D, E, F, and G. The result is that the accounts affected by the child SCP are allowed to use only C, D, and E. They cannot use A or B because they were filtered out by the child OU. They also cannot use F and G because they were filtered out by the parent OU. They cannot be granted back by the child SCP; child SCPs can only filter the permissions they receive from the parent SCP.</p> <p>AWS Organizations attaches a default SCP named <code>"FullAWSAccess</code> to every root, OU, and account. This default SCP allows all services and actions, enabling any new child OU or account to inherit the permissions of the parent root or OU. If you detach the default policy, you must replace it with a policy that specifies the permissions that you want to allow in that OU or account.</p> <p>For more information about how Organizations policies permissions work, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html">Using Service Control Policies</a> in the <i>AWS Organizations User Guide</i>.</p> </li> </ul> <p>This operation can be called only from the organization's master account.</p>

#### `cancelHandshake`

``` purescript
cancelHandshake :: forall eff. CancelHandshakeRequest -> Aff (exception :: EXCEPTION | eff) CancelHandshakeResponse
```

<p>Cancels a handshake. Canceling a handshake sets the handshake state to <code>CANCELED</code>. </p> <p>This operation can be called only from the account that originated the handshake. The recipient of the handshake can't cancel it, but can use <a>DeclineHandshake</a> instead. After a handshake is canceled, the recipient can no longer respond to that handshake.</p> <p>After you cancel a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.</p>

#### `createAccount`

``` purescript
createAccount :: forall eff. CreateAccountRequest -> Aff (exception :: EXCEPTION | eff) CreateAccountResponse
```

<p>Creates an AWS account that is automatically a member of the organization whose credentials made the request. This is an asynchronous request that AWS performs in the background. If you want to check the status of the request later, you need the <code>OperationId</code> response element from this operation to provide as a parameter to the <a>DescribeCreateAccountStatus</a> operation.</p> <p>The user who calls the API for an invitation to join must have the <code>organizations:CreateAccount</code> permission. If you enabled all features in the organization, then the user must also have the <code>iam:CreateServiceLinkedRole</code> permission so that Organizations can create the required service-linked role named <i>OrgsServiceLinkedRoleName</i>. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integration_services.html#orgs_integration_service-linked-roles">AWS Organizations and Service-Linked Roles</a> in the <i>AWS Organizations User Guide</i>.</p> <p>The user in the master account who calls this API must also have the <code>iam:CreateRole</code> permission because AWS Organizations preconfigures the new member account with a role (named <code>OrganizationAccountAccessRole</code> by default) that grants users in the master account administrator permissions in the new member account. Principals in the master account can assume the role. AWS Organizations clones the company name and address information for the new account from the organization's master account.</p> <p>This operation can be called only from the organization's master account.</p> <p>For more information about creating accounts, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html">Creating an AWS Account in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p> <important> <p>When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required for the account to operate as a standalone account, such as a payment method and signing the End User Licence Agreement (EULA) is <i>not</i> automatically collected. If you must remove an account from your organization later, you can do so only after you provide the missing information. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </important> <note> <p>When you create a member account with this operation, you can choose whether to create the account with the <b>IAM User and Role Access to Billing Information</b> switch enabled. If you enable it, IAM users and roles that have appropriate permissions can view billing information for the account. If you disable this, then only the account root user can access billing information. For information about how to disable this for an account, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html">Granting Access to Your Billing Information and Tools</a>.</p> </note> <p>This operation can be called only from the organization's master account.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important>

#### `createOrganization`

``` purescript
createOrganization :: forall eff. CreateOrganizationRequest -> Aff (exception :: EXCEPTION | eff) CreateOrganizationResponse
```

<p>Creates an AWS organization. The account whose user is calling the CreateOrganization operation automatically becomes the <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/orgs_getting-started_concepts.html#account">master account</a> of the new organization.</p> <p>This operation must be called using credentials from the account that is to become the new organization's master account. The principal must also have the relevant IAM permissions.</p> <p>By default (or if you set the <code>FeatureSet</code> parameter to <code>ALL</code>), the new organization is created with all features enabled and service control policies automatically enabled in the root. If you instead choose to create the organization supporting only the consolidated billing features by setting the <code>FeatureSet</code> parameter to <code>CONSOLIDATED_BILLING"</code>, then no policy types are enabled by default and you cannot use organization policies.</p>

#### `createOrganizationalUnit`

``` purescript
createOrganizationalUnit :: forall eff. CreateOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) CreateOrganizationalUnitResponse
```

<p>Creates an organizational unit (OU) within a root or parent OU. An OU is a container for accounts that enables you to organize your accounts to apply policies according to your business requirements. The number of levels deep that you can nest OUs is dependent upon the policy types enabled for that root. For service control policies, the limit is five. </p> <p>For more information about OUs, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_ous.html">Managing Organizational Units</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account.</p>

#### `createPolicy`

``` purescript
createPolicy :: forall eff. CreatePolicyRequest -> Aff (exception :: EXCEPTION | eff) CreatePolicyResponse
```

<p>Creates a policy of a specified type that you can attach to a root, an organizational unit (OU), or an individual AWS account.</p> <p>For more information about policies and their use, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies.html">Managing Organization Policies</a>.</p> <p>This operation can be called only from the organization's master account.</p>

#### `declineHandshake`

``` purescript
declineHandshake :: forall eff. DeclineHandshakeRequest -> Aff (exception :: EXCEPTION | eff) DeclineHandshakeResponse
```

<p>Declines a handshake request. This sets the handshake state to <code>DECLINED</code> and effectively deactivates the request.</p> <p>This operation can be called only from the account that received the handshake. The originator of the handshake can use <a>CancelHandshake</a> instead. The originator can't reactivate a declined request, but can re-initiate the process with a new handshake request.</p> <p>After you decline a handshake, it continues to appear in the results of relevant APIs for only 30 days. After that it is deleted.</p>

#### `deleteOrganization`

``` purescript
deleteOrganization :: forall eff. Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the organization. You can delete an organization only by using credentials from the master account. The organization must be empty of member accounts, OUs, and policies.</p>

#### `deleteOrganizationalUnit`

``` purescript
deleteOrganizationalUnit :: forall eff. DeleteOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes an organizational unit from a root or another OU. You must first remove all accounts and child OUs from the OU that you want to delete.</p> <p>This operation can be called only from the organization's master account.</p>

#### `deletePolicy`

``` purescript
deletePolicy :: forall eff. DeletePolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Deletes the specified policy from your organization. Before you perform this operation, you must first detach the policy from all OUs, roots, and accounts.</p> <p>This operation can be called only from the organization's master account.</p>

#### `describeAccount`

``` purescript
describeAccount :: forall eff. DescribeAccountRequest -> Aff (exception :: EXCEPTION | eff) DescribeAccountResponse
```

<p>Retrieves Organizations-related information about the specified account.</p> <p>This operation can be called only from the organization's master account.</p>

#### `describeCreateAccountStatus`

``` purescript
describeCreateAccountStatus :: forall eff. DescribeCreateAccountStatusRequest -> Aff (exception :: EXCEPTION | eff) DescribeCreateAccountStatusResponse
```

<p>Retrieves the current status of an asynchronous request to create an account.</p> <p>This operation can be called only from the organization's master account.</p>

#### `describeHandshake`

``` purescript
describeHandshake :: forall eff. DescribeHandshakeRequest -> Aff (exception :: EXCEPTION | eff) DescribeHandshakeResponse
```

<p>Retrieves information about a previously requested handshake. The handshake ID comes from the response to the original <a>InviteAccountToOrganization</a> operation that generated the handshake.</p> <p>You can access handshakes that are ACCEPTED, DECLINED, or CANCELED for only 30 days after they change to that state. They are then deleted and no longer accessible.</p> <p>This operation can be called from any account in the organization.</p>

#### `describeOrganization`

``` purescript
describeOrganization :: forall eff. Aff (exception :: EXCEPTION | eff) DescribeOrganizationResponse
```

<p>Retrieves information about the organization that the user's account belongs to.</p> <p>This operation can be called from any account in the organization.</p>

#### `describeOrganizationalUnit`

``` purescript
describeOrganizationalUnit :: forall eff. DescribeOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) DescribeOrganizationalUnitResponse
```

<p>Retrieves information about an organizational unit (OU).</p> <p>This operation can be called only from the organization's master account.</p>

#### `describePolicy`

``` purescript
describePolicy :: forall eff. DescribePolicyRequest -> Aff (exception :: EXCEPTION | eff) DescribePolicyResponse
```

<p>Retrieves information about a policy.</p> <p>This operation can be called only from the organization's master account.</p>

#### `detachPolicy`

``` purescript
detachPolicy :: forall eff. DetachPolicyRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Detaches a policy from a target root, organizational unit, or account. If the policy being detached is a service control policy (SCP), the changes to permissions for IAM users and roles in affected accounts are immediate.</p> <p> <b>Note:</b> Every root, OU, and account must have at least one SCP attached. If you want to replace the default <code>FullAWSAccess</code> policy with one that limits the permissions that can be delegated, then you must attach the replacement policy before you can remove the default one. This is the authorization strategy of <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_about-scps.html#orgs_policies_whitelist">whitelisting</a>. If you instead attach a second SCP and leave the <code>FullAWSAccess</code> SCP still attached, and specify <code>"Effect": "Deny"</code> in the second SCP to override the <code>"Effect": "Allow"</code> in the <code>FullAWSAccess</code> policy (or any other attached SCP), then you are using the authorization strategy of <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_about-scps.html#orgs_policies_blacklist">blacklisting</a>. </p> <p>This operation can be called only from the organization's master account.</p>

#### `disableAWSServiceAccess`

``` purescript
disableAWSServiceAccess :: forall eff. DisableAWSServiceAccessRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Disables the integration of an AWS service (the service that is specified by <code>ServicePrincipal</code>) with AWS Organizations. When you disable integration, the specified service no longer can create a <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked role</a> in <i>new</i> accounts in your organization. This means the service can't perform operations on your behalf on any new accounts in your organization. The service can still perform operations in older accounts until the service completes its clean-up from AWS Organizations.</p> <p/> <important> <p>We recommend that you disable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the other service is aware that it can clean up any resources that are required only for the integration. How the service cleans up its resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service.</p> </important> <p>After you perform the <code>DisableAWSServiceAccess</code> operation, the specified service can no longer perform operations in your organization's accounts unless the operations are explicitly permitted by the IAM policies that are attached to your roles. </p> <p>For more information about integrating other services with AWS Organizations, including the list of services that work with Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account.</p>

#### `disablePolicyType`

``` purescript
disablePolicyType :: forall eff. DisablePolicyTypeRequest -> Aff (exception :: EXCEPTION | eff) DisablePolicyTypeResponse
```

<p>Disables an organizational control policy type in a root. A policy of a certain type can be attached to entities in a root only if that type is enabled in the root. After you perform this operation, you no longer can attach policies of the specified type to that root or to any OU or account in that root. You can undo this by using the <a>EnablePolicyType</a> operation.</p> <p>This operation can be called only from the organization's master account.</p>

#### `enableAWSServiceAccess`

``` purescript
enableAWSServiceAccess :: forall eff. EnableAWSServiceAccessRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Enables the integration of an AWS service (the service that is specified by <code>ServicePrincipal</code>) with AWS Organizations. When you enable integration, you allow the specified service to create a <a href="http://docs.aws.amazon.com/IAM/latest/UserGuide/using-service-linked-roles.html">service-linked role</a> in all the accounts in your organization. This allows the service to perform operations on your behalf in your organization and its accounts.</p> <important> <p>We recommend that you enable integration between AWS Organizations and the specified AWS service by using the console or commands that are provided by the specified service. Doing so ensures that the service is aware that it can create the resources that are required for the integration. How the service creates those resources in the organization's accounts depends on that service. For more information, see the documentation for the other AWS service.</p> </important> <p>For more information about enabling services to integrate with AWS Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account and only if the organization has <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">enabled all features</a>.</p>

#### `enableAllFeatures`

``` purescript
enableAllFeatures :: forall eff. EnableAllFeaturesRequest -> Aff (exception :: EXCEPTION | eff) EnableAllFeaturesResponse
```

<p>Enables all features in an organization. This enables the use of organization policies that can restrict the services and actions that can be called in each account. Until you enable all features, you have access only to consolidated billing, and you can't use any of the advanced account administration features that AWS Organizations supports. For more information, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html">Enabling All Features in Your Organization</a> in the <i>AWS Organizations User Guide</i>.</p> <important> <p>This operation is required only for organizations that were created explicitly with only the consolidated billing features enabled, or that were migrated from a Consolidated Billing account family to Organizations. Calling this operation sends a handshake to every invited account in the organization. The feature set change can be finalized and the additional features enabled only after all administrators in the invited accounts approve the change by accepting the handshake.</p> </important> <p>After all invited member accounts accept the handshake, you finalize the feature set change by accepting the handshake that contains <code>"Action": "ENABLE_ALL_FEATURES"</code>. This completes the change.</p> <p>After you enable all features in your organization, the master account in the organization can apply policies on all member accounts. These policies can restrict what users and even administrators in those accounts can do. The master account can apply policies that prevent accounts from leaving the organization. Ensure that your account administrators are aware of this.</p> <p>This operation can be called only from the organization's master account. </p>

#### `enablePolicyType`

``` purescript
enablePolicyType :: forall eff. EnablePolicyTypeRequest -> Aff (exception :: EXCEPTION | eff) EnablePolicyTypeResponse
```

<p>Enables a policy type in a root. After you enable a policy type in a root, you can attach policies of that type to the root, any OU, or account in that root. You can undo this by using the <a>DisablePolicyType</a> operation.</p> <p>This operation can be called only from the organization's master account.</p>

#### `inviteAccountToOrganization`

``` purescript
inviteAccountToOrganization :: forall eff. InviteAccountToOrganizationRequest -> Aff (exception :: EXCEPTION | eff) InviteAccountToOrganizationResponse
```

<p>Sends an invitation to another account to join your organization as a member account. Organizations sends email on your behalf to the email address that is associated with the other account's owner. The invitation is implemented as a <a>Handshake</a> whose details are in the response.</p> <important> <p>You can invite AWS accounts only from the same seller as the master account. For example, if your organization's master account was created by Amazon Internet Services Pvt. Ltd (AISPL), an AWS seller in India, then you can only invite other AISPL accounts to your organization. You can't combine accounts from AISPL and AWS, or any other AWS seller. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/useconsolidatedbilliing-India.html">Consolidated Billing in India</a>.</p> </important> <p>This operation can be called only from the organization's master account.</p> <important> <p>If you get an exception that indicates that you exceeded your account limits for the organization or that you can"t add an account because your organization is still initializing, please contact <a href="https://console.aws.amazon.com/support/home#/"> AWS Customer Support</a>.</p> </important>

#### `leaveOrganization`

``` purescript
leaveOrganization :: forall eff. Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Removes a member account from its parent organization. This version of the operation is performed by the account that wants to leave. To remove a member account as a user in the master account, use <a>RemoveAccountFromOrganization</a> instead.</p> <p>This operation can be called only from a member account in the organization.</p> <important> <ul> <li> <p>The master account in an organization with all features enabled can set service control policies (SCPs) that can restrict what administrators of member accounts can do, including preventing them from successfully calling <code>LeaveOrganization</code> and leaving the organization. </p> </li> <li> <p>You can leave an organization as a member account only if the account is configured with the information required to operate as a standalone account. When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required of standalone accounts is <i>not</i> automatically collected. For each account that you want to make standalone, you must accept the End User License Agreement (EULA), choose a support plan, provide and verify the required contact information, and provide a current payment method. AWS uses the payment method to charge for any billable (not free tier) AWS activity that occurs while the account is not attached to an organization. Follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>You can leave an organization only after you enable IAM user access to billing in your account. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> </li> </ul> </important>

#### `listAWSServiceAccessForOrganization`

``` purescript
listAWSServiceAccessForOrganization :: forall eff. ListAWSServiceAccessForOrganizationRequest -> Aff (exception :: EXCEPTION | eff) ListAWSServiceAccessForOrganizationResponse
```

<p>Returns a list of the AWS services that you enabled to integrate with your organization. After a service on this list creates the resources that it requires for the integration, it can perform operations on your organization and its accounts.</p> <p>For more information about integrating other services with AWS Organizations, including the list of services that currently work with Organizations, see <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html">Integrating AWS Organizations with Other AWS Services</a> in the <i>AWS Organizations User Guide</i>.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listAccounts`

``` purescript
listAccounts :: forall eff. ListAccountsRequest -> Aff (exception :: EXCEPTION | eff) ListAccountsResponse
```

<p>Lists all the accounts in the organization. To request only the accounts in a root or OU, use the <a>ListAccountsForParent</a> operation instead.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listAccountsForParent`

``` purescript
listAccountsForParent :: forall eff. ListAccountsForParentRequest -> Aff (exception :: EXCEPTION | eff) ListAccountsForParentResponse
```

<p>Lists the accounts in an organization that are contained by the specified target root or organizational unit (OU). If you specify the root, you get a list of all the accounts that are not in any OU. If you specify an OU, you get a list of all the accounts in only that OU, and not in any child OUs. To get a list of all accounts in the organization, use the <a>ListAccounts</a> operation.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listChildren`

``` purescript
listChildren :: forall eff. ListChildrenRequest -> Aff (exception :: EXCEPTION | eff) ListChildrenResponse
```

<p>Lists all of the OUs or accounts that are contained in the specified parent OU or root. This operation, along with <a>ListParents</a> enables you to traverse the tree structure that makes up this root.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listCreateAccountStatus`

``` purescript
listCreateAccountStatus :: forall eff. ListCreateAccountStatusRequest -> Aff (exception :: EXCEPTION | eff) ListCreateAccountStatusResponse
```

<p>Lists the account creation requests that match the specified status that is currently being tracked for the organization.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listHandshakesForAccount`

``` purescript
listHandshakesForAccount :: forall eff. ListHandshakesForAccountRequest -> Aff (exception :: EXCEPTION | eff) ListHandshakesForAccountResponse
```

<p>Lists the current handshakes that are associated with the account of the requesting user.</p> <p>Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that they are deleted and no longer accessible.</p> <p>This operation can be called from any account in the organization.</p>

#### `listHandshakesForOrganization`

``` purescript
listHandshakesForOrganization :: forall eff. ListHandshakesForOrganizationRequest -> Aff (exception :: EXCEPTION | eff) ListHandshakesForOrganizationResponse
```

<p>Lists the handshakes that are associated with the organization that the requesting user is part of. The <code>ListHandshakesForOrganization</code> operation returns a list of handshake structures. Each structure contains details and status about a handshake.</p> <p>Handshakes that are ACCEPTED, DECLINED, or CANCELED appear in the results of this API for only 30 days after changing to that state. After that they are deleted and no longer accessible.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listOrganizationalUnitsForParent`

``` purescript
listOrganizationalUnitsForParent :: forall eff. ListOrganizationalUnitsForParentRequest -> Aff (exception :: EXCEPTION | eff) ListOrganizationalUnitsForParentResponse
```

<p>Lists the organizational units (OUs) in a parent organizational unit or root.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listParents`

``` purescript
listParents :: forall eff. ListParentsRequest -> Aff (exception :: EXCEPTION | eff) ListParentsResponse
```

<p>Lists the root or organizational units (OUs) that serve as the immediate parent of the specified child OU or account. This operation, along with <a>ListChildren</a> enables you to traverse the tree structure that makes up this root.</p> <p>This operation can be called only from the organization's master account.</p> <note> <p>In the current release, a child can have only a single parent. </p> </note>

#### `listPolicies`

``` purescript
listPolicies :: forall eff. ListPoliciesRequest -> Aff (exception :: EXCEPTION | eff) ListPoliciesResponse
```

<p>Retrieves the list of all policies in an organization of a specified type.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listPoliciesForTarget`

``` purescript
listPoliciesForTarget :: forall eff. ListPoliciesForTargetRequest -> Aff (exception :: EXCEPTION | eff) ListPoliciesForTargetResponse
```

<p>Lists the policies that are directly attached to the specified target root, organizational unit (OU), or account. You must specify the policy type that you want included in the returned list.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listRoots`

``` purescript
listRoots :: forall eff. ListRootsRequest -> Aff (exception :: EXCEPTION | eff) ListRootsResponse
```

<p>Lists the roots that are defined in the current organization.</p> <p>This operation can be called only from the organization's master account.</p>

#### `listTargetsForPolicy`

``` purescript
listTargetsForPolicy :: forall eff. ListTargetsForPolicyRequest -> Aff (exception :: EXCEPTION | eff) ListTargetsForPolicyResponse
```

<p>Lists all the roots, OUs, and accounts to which the specified policy is attached.</p> <p>This operation can be called only from the organization's master account.</p>

#### `moveAccount`

``` purescript
moveAccount :: forall eff. MoveAccountRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Moves an account from its current source parent root or OU to the specified destination parent root or OU.</p> <p>This operation can be called only from the organization's master account.</p>

#### `removeAccountFromOrganization`

``` purescript
removeAccountFromOrganization :: forall eff. RemoveAccountFromOrganizationRequest -> Aff (exception :: EXCEPTION | eff) NoOutput
```

<p>Removes the specified account from the organization.</p> <p>The removed account becomes a stand-alone account that is not a member of any organization. It is no longer subject to any policies and is responsible for its own bill payments. The organization's master account is no longer charged for any expenses accrued by the member account after it is removed from the organization.</p> <p>This operation can be called only from the organization's master account. Member accounts can remove themselves with <a>LeaveOrganization</a> instead.</p> <important> <ul> <li> <p>You can remove an account from your organization only if the account is configured with the information required to operate as a standalone account. When you create an account in an organization using the AWS Organizations console, API, or CLI commands, the information required of standalone accounts is <i>not</i> automatically collected. For an account that you want to make standalone, you must accept the End User License Agreement (EULA), choose a support plan, provide and verify the required contact information, and provide a current payment method. AWS uses the payment method to charge for any billable (not free tier) AWS activity that occurs while the account is not attached to an organization. To remove an account that does not yet have this information, you must sign in as the member account and follow the steps at <a href="http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info"> To leave an organization when all required account information has not yet been provided</a> in the <i>AWS Organizations User Guide</i>.</p> </li> <li> <p>You can remove a member account only after you enable IAM user access to billing in the member account. For more information, see <a href="http://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate">Activating Access to the Billing and Cost Management Console</a> in the <i>AWS Billing and Cost Management User Guide</i>.</p> </li> </ul> </important>

#### `updateOrganizationalUnit`

``` purescript
updateOrganizationalUnit :: forall eff. UpdateOrganizationalUnitRequest -> Aff (exception :: EXCEPTION | eff) UpdateOrganizationalUnitResponse
```

<p>Renames the specified organizational unit (OU). The ID and ARN do not change. The child OUs and accounts remain in place, and any attached policies of the OU remain attached. </p> <p>This operation can be called only from the organization's master account.</p>

#### `updatePolicy`

``` purescript
updatePolicy :: forall eff. UpdatePolicyRequest -> Aff (exception :: EXCEPTION | eff) UpdatePolicyResponse
```

<p>Updates an existing policy with a new name, description, or content. If any parameter is not supplied, that value remains unchanged. Note that you cannot change a policy's type.</p> <p>This operation can be called only from the organization's master account.</p>

#### `AWSOrganizationsNotInUseException`

``` purescript
newtype AWSOrganizationsNotInUseException
  = AWSOrganizationsNotInUseException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newAWSOrganizationsNotInUseException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> AWSOrganizationsNotInUseException
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
  = AcceptHandshakeResponse { "Handshake" :: NullOrUndefined (Handshake) }
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
newAcceptHandshakeResponse' :: ({ "Handshake" :: NullOrUndefined (Handshake) } -> { "Handshake" :: NullOrUndefined (Handshake) }) -> AcceptHandshakeResponse
```

Constructs AcceptHandshakeResponse's fields from required parameters

#### `AccessDeniedException`

``` purescript
newtype AccessDeniedException
  = AccessDeniedException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newAccessDeniedException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> AccessDeniedException
```

Constructs AccessDeniedException's fields from required parameters

#### `AccessDeniedForDependencyException`

``` purescript
newtype AccessDeniedForDependencyException
  = AccessDeniedForDependencyException { "Message" :: NullOrUndefined (ExceptionMessage), "Reason" :: NullOrUndefined (AccessDeniedForDependencyExceptionReason) }
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
newAccessDeniedForDependencyException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage), "Reason" :: NullOrUndefined (AccessDeniedForDependencyExceptionReason) } -> { "Message" :: NullOrUndefined (ExceptionMessage), "Reason" :: NullOrUndefined (AccessDeniedForDependencyExceptionReason) }) -> AccessDeniedForDependencyException
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
  = Account { "Id" :: NullOrUndefined (AccountId), "Arn" :: NullOrUndefined (AccountArn), "Email" :: NullOrUndefined (Email), "Name" :: NullOrUndefined (AccountName), "Status" :: NullOrUndefined (AccountStatus), "JoinedMethod" :: NullOrUndefined (AccountJoinedMethod), "JoinedTimestamp" :: NullOrUndefined (Timestamp) }
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
newAccount' :: ({ "Id" :: NullOrUndefined (AccountId), "Arn" :: NullOrUndefined (AccountArn), "Email" :: NullOrUndefined (Email), "Name" :: NullOrUndefined (AccountName), "Status" :: NullOrUndefined (AccountStatus), "JoinedMethod" :: NullOrUndefined (AccountJoinedMethod), "JoinedTimestamp" :: NullOrUndefined (Timestamp) } -> { "Id" :: NullOrUndefined (AccountId), "Arn" :: NullOrUndefined (AccountArn), "Email" :: NullOrUndefined (Email), "Name" :: NullOrUndefined (AccountName), "Status" :: NullOrUndefined (AccountStatus), "JoinedMethod" :: NullOrUndefined (AccountJoinedMethod), "JoinedTimestamp" :: NullOrUndefined (Timestamp) }) -> Account
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
  = AccountNotFoundException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newAccountNotFoundException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> AccountNotFoundException
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
  = AlreadyInOrganizationException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newAlreadyInOrganizationException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> AlreadyInOrganizationException
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
  = CancelHandshakeResponse { "Handshake" :: NullOrUndefined (Handshake) }
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
newCancelHandshakeResponse' :: ({ "Handshake" :: NullOrUndefined (Handshake) } -> { "Handshake" :: NullOrUndefined (Handshake) }) -> CancelHandshakeResponse
```

Constructs CancelHandshakeResponse's fields from required parameters

#### `Child`

``` purescript
newtype Child
  = Child { "Id" :: NullOrUndefined (ChildId), "Type" :: NullOrUndefined (ChildType) }
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
newChild' :: ({ "Id" :: NullOrUndefined (ChildId), "Type" :: NullOrUndefined (ChildType) } -> { "Id" :: NullOrUndefined (ChildId), "Type" :: NullOrUndefined (ChildType) }) -> Child
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
  = ChildNotFoundException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newChildNotFoundException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> ChildNotFoundException
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
  = ConcurrentModificationException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newConcurrentModificationException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> ConcurrentModificationException
```

Constructs ConcurrentModificationException's fields from required parameters

#### `ConstraintViolationException`

``` purescript
newtype ConstraintViolationException
  = ConstraintViolationException { "Message" :: NullOrUndefined (ExceptionMessage), "Reason" :: NullOrUndefined (ConstraintViolationExceptionReason) }
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
newConstraintViolationException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage), "Reason" :: NullOrUndefined (ConstraintViolationExceptionReason) } -> { "Message" :: NullOrUndefined (ExceptionMessage), "Reason" :: NullOrUndefined (ConstraintViolationExceptionReason) }) -> ConstraintViolationException
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
  = CreateAccountRequest { "Email" :: Email, "AccountName" :: AccountName, "RoleName" :: NullOrUndefined (RoleName), "IamUserAccessToBilling" :: NullOrUndefined (IAMUserAccessToBilling) }
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
newCreateAccountRequest' :: AccountName -> Email -> ({ "Email" :: Email, "AccountName" :: AccountName, "RoleName" :: NullOrUndefined (RoleName), "IamUserAccessToBilling" :: NullOrUndefined (IAMUserAccessToBilling) } -> { "Email" :: Email, "AccountName" :: AccountName, "RoleName" :: NullOrUndefined (RoleName), "IamUserAccessToBilling" :: NullOrUndefined (IAMUserAccessToBilling) }) -> CreateAccountRequest
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
  = CreateAccountResponse { "CreateAccountStatus" :: NullOrUndefined (CreateAccountStatus) }
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
newCreateAccountResponse' :: ({ "CreateAccountStatus" :: NullOrUndefined (CreateAccountStatus) } -> { "CreateAccountStatus" :: NullOrUndefined (CreateAccountStatus) }) -> CreateAccountResponse
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
  = CreateAccountStatus { "Id" :: NullOrUndefined (CreateAccountRequestId), "AccountName" :: NullOrUndefined (AccountName), "State" :: NullOrUndefined (CreateAccountState), "RequestedTimestamp" :: NullOrUndefined (Timestamp), "CompletedTimestamp" :: NullOrUndefined (Timestamp), "AccountId" :: NullOrUndefined (AccountId), "FailureReason" :: NullOrUndefined (CreateAccountFailureReason) }
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
newCreateAccountStatus' :: ({ "Id" :: NullOrUndefined (CreateAccountRequestId), "AccountName" :: NullOrUndefined (AccountName), "State" :: NullOrUndefined (CreateAccountState), "RequestedTimestamp" :: NullOrUndefined (Timestamp), "CompletedTimestamp" :: NullOrUndefined (Timestamp), "AccountId" :: NullOrUndefined (AccountId), "FailureReason" :: NullOrUndefined (CreateAccountFailureReason) } -> { "Id" :: NullOrUndefined (CreateAccountRequestId), "AccountName" :: NullOrUndefined (AccountName), "State" :: NullOrUndefined (CreateAccountState), "RequestedTimestamp" :: NullOrUndefined (Timestamp), "CompletedTimestamp" :: NullOrUndefined (Timestamp), "AccountId" :: NullOrUndefined (AccountId), "FailureReason" :: NullOrUndefined (CreateAccountFailureReason) }) -> CreateAccountStatus
```

Constructs CreateAccountStatus's fields from required parameters

#### `CreateAccountStatusNotFoundException`

``` purescript
newtype CreateAccountStatusNotFoundException
  = CreateAccountStatusNotFoundException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newCreateAccountStatusNotFoundException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> CreateAccountStatusNotFoundException
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
  = CreateOrganizationRequest { "FeatureSet" :: NullOrUndefined (OrganizationFeatureSet) }
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
newCreateOrganizationRequest' :: ({ "FeatureSet" :: NullOrUndefined (OrganizationFeatureSet) } -> { "FeatureSet" :: NullOrUndefined (OrganizationFeatureSet) }) -> CreateOrganizationRequest
```

Constructs CreateOrganizationRequest's fields from required parameters

#### `CreateOrganizationResponse`

``` purescript
newtype CreateOrganizationResponse
  = CreateOrganizationResponse { "Organization" :: NullOrUndefined (Organization) }
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
newCreateOrganizationResponse' :: ({ "Organization" :: NullOrUndefined (Organization) } -> { "Organization" :: NullOrUndefined (Organization) }) -> CreateOrganizationResponse
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
  = CreateOrganizationalUnitResponse { "OrganizationalUnit" :: NullOrUndefined (OrganizationalUnit) }
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
newCreateOrganizationalUnitResponse' :: ({ "OrganizationalUnit" :: NullOrUndefined (OrganizationalUnit) } -> { "OrganizationalUnit" :: NullOrUndefined (OrganizationalUnit) }) -> CreateOrganizationalUnitResponse
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
  = CreatePolicyResponse { "Policy" :: NullOrUndefined (Policy) }
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
newCreatePolicyResponse' :: ({ "Policy" :: NullOrUndefined (Policy) } -> { "Policy" :: NullOrUndefined (Policy) }) -> CreatePolicyResponse
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
  = DeclineHandshakeResponse { "Handshake" :: NullOrUndefined (Handshake) }
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
newDeclineHandshakeResponse' :: ({ "Handshake" :: NullOrUndefined (Handshake) } -> { "Handshake" :: NullOrUndefined (Handshake) }) -> DeclineHandshakeResponse
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
  = DescribeAccountResponse { "Account" :: NullOrUndefined (Account) }
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
newDescribeAccountResponse' :: ({ "Account" :: NullOrUndefined (Account) } -> { "Account" :: NullOrUndefined (Account) }) -> DescribeAccountResponse
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
  = DescribeCreateAccountStatusResponse { "CreateAccountStatus" :: NullOrUndefined (CreateAccountStatus) }
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
newDescribeCreateAccountStatusResponse' :: ({ "CreateAccountStatus" :: NullOrUndefined (CreateAccountStatus) } -> { "CreateAccountStatus" :: NullOrUndefined (CreateAccountStatus) }) -> DescribeCreateAccountStatusResponse
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
  = DescribeHandshakeResponse { "Handshake" :: NullOrUndefined (Handshake) }
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
newDescribeHandshakeResponse' :: ({ "Handshake" :: NullOrUndefined (Handshake) } -> { "Handshake" :: NullOrUndefined (Handshake) }) -> DescribeHandshakeResponse
```

Constructs DescribeHandshakeResponse's fields from required parameters

#### `DescribeOrganizationResponse`

``` purescript
newtype DescribeOrganizationResponse
  = DescribeOrganizationResponse { "Organization" :: NullOrUndefined (Organization) }
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
newDescribeOrganizationResponse' :: ({ "Organization" :: NullOrUndefined (Organization) } -> { "Organization" :: NullOrUndefined (Organization) }) -> DescribeOrganizationResponse
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
  = DescribeOrganizationalUnitResponse { "OrganizationalUnit" :: NullOrUndefined (OrganizationalUnit) }
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
newDescribeOrganizationalUnitResponse' :: ({ "OrganizationalUnit" :: NullOrUndefined (OrganizationalUnit) } -> { "OrganizationalUnit" :: NullOrUndefined (OrganizationalUnit) }) -> DescribeOrganizationalUnitResponse
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
  = DescribePolicyResponse { "Policy" :: NullOrUndefined (Policy) }
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
newDescribePolicyResponse' :: ({ "Policy" :: NullOrUndefined (Policy) } -> { "Policy" :: NullOrUndefined (Policy) }) -> DescribePolicyResponse
```

Constructs DescribePolicyResponse's fields from required parameters

#### `DestinationParentNotFoundException`

``` purescript
newtype DestinationParentNotFoundException
  = DestinationParentNotFoundException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newDestinationParentNotFoundException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> DestinationParentNotFoundException
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
  = DisablePolicyTypeResponse { "Root" :: NullOrUndefined (Root) }
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
newDisablePolicyTypeResponse' :: ({ "Root" :: NullOrUndefined (Root) } -> { "Root" :: NullOrUndefined (Root) }) -> DisablePolicyTypeResponse
```

Constructs DisablePolicyTypeResponse's fields from required parameters

#### `DuplicateAccountException`

``` purescript
newtype DuplicateAccountException
  = DuplicateAccountException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newDuplicateAccountException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> DuplicateAccountException
```

Constructs DuplicateAccountException's fields from required parameters

#### `DuplicateHandshakeException`

``` purescript
newtype DuplicateHandshakeException
  = DuplicateHandshakeException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newDuplicateHandshakeException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> DuplicateHandshakeException
```

Constructs DuplicateHandshakeException's fields from required parameters

#### `DuplicateOrganizationalUnitException`

``` purescript
newtype DuplicateOrganizationalUnitException
  = DuplicateOrganizationalUnitException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newDuplicateOrganizationalUnitException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> DuplicateOrganizationalUnitException
```

Constructs DuplicateOrganizationalUnitException's fields from required parameters

#### `DuplicatePolicyAttachmentException`

``` purescript
newtype DuplicatePolicyAttachmentException
  = DuplicatePolicyAttachmentException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newDuplicatePolicyAttachmentException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> DuplicatePolicyAttachmentException
```

Constructs DuplicatePolicyAttachmentException's fields from required parameters

#### `DuplicatePolicyException`

``` purescript
newtype DuplicatePolicyException
  = DuplicatePolicyException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newDuplicatePolicyException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> DuplicatePolicyException
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
  = EnableAllFeaturesResponse { "Handshake" :: NullOrUndefined (Handshake) }
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
newEnableAllFeaturesResponse' :: ({ "Handshake" :: NullOrUndefined (Handshake) } -> { "Handshake" :: NullOrUndefined (Handshake) }) -> EnableAllFeaturesResponse
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
  = EnablePolicyTypeResponse { "Root" :: NullOrUndefined (Root) }
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
newEnablePolicyTypeResponse' :: ({ "Root" :: NullOrUndefined (Root) } -> { "Root" :: NullOrUndefined (Root) }) -> EnablePolicyTypeResponse
```

Constructs EnablePolicyTypeResponse's fields from required parameters

#### `EnabledServicePrincipal`

``` purescript
newtype EnabledServicePrincipal
  = EnabledServicePrincipal { "ServicePrincipal" :: NullOrUndefined (ServicePrincipal), "DateEnabled" :: NullOrUndefined (Timestamp) }
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
newEnabledServicePrincipal' :: ({ "ServicePrincipal" :: NullOrUndefined (ServicePrincipal), "DateEnabled" :: NullOrUndefined (Timestamp) } -> { "ServicePrincipal" :: NullOrUndefined (ServicePrincipal), "DateEnabled" :: NullOrUndefined (Timestamp) }) -> EnabledServicePrincipal
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
  = FinalizingOrganizationException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newFinalizingOrganizationException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> FinalizingOrganizationException
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
  = Handshake { "Id" :: NullOrUndefined (HandshakeId), "Arn" :: NullOrUndefined (HandshakeArn), "Parties" :: NullOrUndefined (HandshakeParties), "State" :: NullOrUndefined (HandshakeState), "RequestedTimestamp" :: NullOrUndefined (Timestamp), "ExpirationTimestamp" :: NullOrUndefined (Timestamp), "Action" :: NullOrUndefined (ActionType), "Resources" :: NullOrUndefined (HandshakeResources) }
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
newHandshake' :: ({ "Id" :: NullOrUndefined (HandshakeId), "Arn" :: NullOrUndefined (HandshakeArn), "Parties" :: NullOrUndefined (HandshakeParties), "State" :: NullOrUndefined (HandshakeState), "RequestedTimestamp" :: NullOrUndefined (Timestamp), "ExpirationTimestamp" :: NullOrUndefined (Timestamp), "Action" :: NullOrUndefined (ActionType), "Resources" :: NullOrUndefined (HandshakeResources) } -> { "Id" :: NullOrUndefined (HandshakeId), "Arn" :: NullOrUndefined (HandshakeArn), "Parties" :: NullOrUndefined (HandshakeParties), "State" :: NullOrUndefined (HandshakeState), "RequestedTimestamp" :: NullOrUndefined (Timestamp), "ExpirationTimestamp" :: NullOrUndefined (Timestamp), "Action" :: NullOrUndefined (ActionType), "Resources" :: NullOrUndefined (HandshakeResources) }) -> Handshake
```

Constructs Handshake's fields from required parameters

#### `HandshakeAlreadyInStateException`

``` purescript
newtype HandshakeAlreadyInStateException
  = HandshakeAlreadyInStateException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newHandshakeAlreadyInStateException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> HandshakeAlreadyInStateException
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
  = HandshakeConstraintViolationException { "Message" :: NullOrUndefined (ExceptionMessage), "Reason" :: NullOrUndefined (HandshakeConstraintViolationExceptionReason) }
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
newHandshakeConstraintViolationException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage), "Reason" :: NullOrUndefined (HandshakeConstraintViolationExceptionReason) } -> { "Message" :: NullOrUndefined (ExceptionMessage), "Reason" :: NullOrUndefined (HandshakeConstraintViolationExceptionReason) }) -> HandshakeConstraintViolationException
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
  = HandshakeFilter { "ActionType" :: NullOrUndefined (ActionType), "ParentHandshakeId" :: NullOrUndefined (HandshakeId) }
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
newHandshakeFilter' :: ({ "ActionType" :: NullOrUndefined (ActionType), "ParentHandshakeId" :: NullOrUndefined (HandshakeId) } -> { "ActionType" :: NullOrUndefined (ActionType), "ParentHandshakeId" :: NullOrUndefined (HandshakeId) }) -> HandshakeFilter
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
  = HandshakeNotFoundException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newHandshakeNotFoundException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> HandshakeNotFoundException
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
  = HandshakeResource { "Value" :: NullOrUndefined (HandshakeResourceValue), "Type" :: NullOrUndefined (HandshakeResourceType) }
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
newHandshakeResource' :: ({ "Value" :: NullOrUndefined (HandshakeResourceValue), "Type" :: NullOrUndefined (HandshakeResourceType) } -> { "Value" :: NullOrUndefined (HandshakeResourceValue), "Type" :: NullOrUndefined (HandshakeResourceType) }) -> HandshakeResource
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
  = InvalidHandshakeTransitionException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newInvalidHandshakeTransitionException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> InvalidHandshakeTransitionException
```

Constructs InvalidHandshakeTransitionException's fields from required parameters

#### `InvalidInputException`

``` purescript
newtype InvalidInputException
  = InvalidInputException { "Message" :: NullOrUndefined (ExceptionMessage), "Reason" :: NullOrUndefined (InvalidInputExceptionReason) }
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
newInvalidInputException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage), "Reason" :: NullOrUndefined (InvalidInputExceptionReason) } -> { "Message" :: NullOrUndefined (ExceptionMessage), "Reason" :: NullOrUndefined (InvalidInputExceptionReason) }) -> InvalidInputException
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
  = InviteAccountToOrganizationRequest { "Target" :: HandshakeParty, "Notes" :: NullOrUndefined (HandshakeNotes) }
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
newInviteAccountToOrganizationRequest' :: HandshakeParty -> ({ "Target" :: HandshakeParty, "Notes" :: NullOrUndefined (HandshakeNotes) } -> { "Target" :: HandshakeParty, "Notes" :: NullOrUndefined (HandshakeNotes) }) -> InviteAccountToOrganizationRequest
```

Constructs InviteAccountToOrganizationRequest's fields from required parameters

#### `InviteAccountToOrganizationResponse`

``` purescript
newtype InviteAccountToOrganizationResponse
  = InviteAccountToOrganizationResponse { "Handshake" :: NullOrUndefined (Handshake) }
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
newInviteAccountToOrganizationResponse' :: ({ "Handshake" :: NullOrUndefined (Handshake) } -> { "Handshake" :: NullOrUndefined (Handshake) }) -> InviteAccountToOrganizationResponse
```

Constructs InviteAccountToOrganizationResponse's fields from required parameters

#### `ListAWSServiceAccessForOrganizationRequest`

``` purescript
newtype ListAWSServiceAccessForOrganizationRequest
  = ListAWSServiceAccessForOrganizationRequest { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListAWSServiceAccessForOrganizationRequest' :: ({ "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListAWSServiceAccessForOrganizationRequest
```

Constructs ListAWSServiceAccessForOrganizationRequest's fields from required parameters

#### `ListAWSServiceAccessForOrganizationResponse`

``` purescript
newtype ListAWSServiceAccessForOrganizationResponse
  = ListAWSServiceAccessForOrganizationResponse { "EnabledServicePrincipals" :: NullOrUndefined (EnabledServicePrincipals), "NextToken" :: NullOrUndefined (NextToken) }
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
newListAWSServiceAccessForOrganizationResponse' :: ({ "EnabledServicePrincipals" :: NullOrUndefined (EnabledServicePrincipals), "NextToken" :: NullOrUndefined (NextToken) } -> { "EnabledServicePrincipals" :: NullOrUndefined (EnabledServicePrincipals), "NextToken" :: NullOrUndefined (NextToken) }) -> ListAWSServiceAccessForOrganizationResponse
```

Constructs ListAWSServiceAccessForOrganizationResponse's fields from required parameters

#### `ListAccountsForParentRequest`

``` purescript
newtype ListAccountsForParentRequest
  = ListAccountsForParentRequest { "ParentId" :: ParentId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListAccountsForParentRequest' :: ParentId -> ({ "ParentId" :: ParentId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "ParentId" :: ParentId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListAccountsForParentRequest
```

Constructs ListAccountsForParentRequest's fields from required parameters

#### `ListAccountsForParentResponse`

``` purescript
newtype ListAccountsForParentResponse
  = ListAccountsForParentResponse { "Accounts" :: NullOrUndefined (Accounts), "NextToken" :: NullOrUndefined (NextToken) }
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
newListAccountsForParentResponse' :: ({ "Accounts" :: NullOrUndefined (Accounts), "NextToken" :: NullOrUndefined (NextToken) } -> { "Accounts" :: NullOrUndefined (Accounts), "NextToken" :: NullOrUndefined (NextToken) }) -> ListAccountsForParentResponse
```

Constructs ListAccountsForParentResponse's fields from required parameters

#### `ListAccountsRequest`

``` purescript
newtype ListAccountsRequest
  = ListAccountsRequest { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListAccountsRequest' :: ({ "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListAccountsRequest
```

Constructs ListAccountsRequest's fields from required parameters

#### `ListAccountsResponse`

``` purescript
newtype ListAccountsResponse
  = ListAccountsResponse { "Accounts" :: NullOrUndefined (Accounts), "NextToken" :: NullOrUndefined (NextToken) }
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
newListAccountsResponse' :: ({ "Accounts" :: NullOrUndefined (Accounts), "NextToken" :: NullOrUndefined (NextToken) } -> { "Accounts" :: NullOrUndefined (Accounts), "NextToken" :: NullOrUndefined (NextToken) }) -> ListAccountsResponse
```

Constructs ListAccountsResponse's fields from required parameters

#### `ListChildrenRequest`

``` purescript
newtype ListChildrenRequest
  = ListChildrenRequest { "ParentId" :: ParentId, "ChildType" :: ChildType, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListChildrenRequest' :: ChildType -> ParentId -> ({ "ParentId" :: ParentId, "ChildType" :: ChildType, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "ParentId" :: ParentId, "ChildType" :: ChildType, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListChildrenRequest
```

Constructs ListChildrenRequest's fields from required parameters

#### `ListChildrenResponse`

``` purescript
newtype ListChildrenResponse
  = ListChildrenResponse { "Children" :: NullOrUndefined (Children), "NextToken" :: NullOrUndefined (NextToken) }
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
newListChildrenResponse' :: ({ "Children" :: NullOrUndefined (Children), "NextToken" :: NullOrUndefined (NextToken) } -> { "Children" :: NullOrUndefined (Children), "NextToken" :: NullOrUndefined (NextToken) }) -> ListChildrenResponse
```

Constructs ListChildrenResponse's fields from required parameters

#### `ListCreateAccountStatusRequest`

``` purescript
newtype ListCreateAccountStatusRequest
  = ListCreateAccountStatusRequest { "States" :: NullOrUndefined (CreateAccountStates), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListCreateAccountStatusRequest' :: ({ "States" :: NullOrUndefined (CreateAccountStates), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "States" :: NullOrUndefined (CreateAccountStates), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListCreateAccountStatusRequest
```

Constructs ListCreateAccountStatusRequest's fields from required parameters

#### `ListCreateAccountStatusResponse`

``` purescript
newtype ListCreateAccountStatusResponse
  = ListCreateAccountStatusResponse { "CreateAccountStatuses" :: NullOrUndefined (CreateAccountStatuses), "NextToken" :: NullOrUndefined (NextToken) }
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
newListCreateAccountStatusResponse' :: ({ "CreateAccountStatuses" :: NullOrUndefined (CreateAccountStatuses), "NextToken" :: NullOrUndefined (NextToken) } -> { "CreateAccountStatuses" :: NullOrUndefined (CreateAccountStatuses), "NextToken" :: NullOrUndefined (NextToken) }) -> ListCreateAccountStatusResponse
```

Constructs ListCreateAccountStatusResponse's fields from required parameters

#### `ListHandshakesForAccountRequest`

``` purescript
newtype ListHandshakesForAccountRequest
  = ListHandshakesForAccountRequest { "Filter" :: NullOrUndefined (HandshakeFilter), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListHandshakesForAccountRequest' :: ({ "Filter" :: NullOrUndefined (HandshakeFilter), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "Filter" :: NullOrUndefined (HandshakeFilter), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListHandshakesForAccountRequest
```

Constructs ListHandshakesForAccountRequest's fields from required parameters

#### `ListHandshakesForAccountResponse`

``` purescript
newtype ListHandshakesForAccountResponse
  = ListHandshakesForAccountResponse { "Handshakes" :: NullOrUndefined (Handshakes), "NextToken" :: NullOrUndefined (NextToken) }
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
newListHandshakesForAccountResponse' :: ({ "Handshakes" :: NullOrUndefined (Handshakes), "NextToken" :: NullOrUndefined (NextToken) } -> { "Handshakes" :: NullOrUndefined (Handshakes), "NextToken" :: NullOrUndefined (NextToken) }) -> ListHandshakesForAccountResponse
```

Constructs ListHandshakesForAccountResponse's fields from required parameters

#### `ListHandshakesForOrganizationRequest`

``` purescript
newtype ListHandshakesForOrganizationRequest
  = ListHandshakesForOrganizationRequest { "Filter" :: NullOrUndefined (HandshakeFilter), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListHandshakesForOrganizationRequest' :: ({ "Filter" :: NullOrUndefined (HandshakeFilter), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "Filter" :: NullOrUndefined (HandshakeFilter), "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListHandshakesForOrganizationRequest
```

Constructs ListHandshakesForOrganizationRequest's fields from required parameters

#### `ListHandshakesForOrganizationResponse`

``` purescript
newtype ListHandshakesForOrganizationResponse
  = ListHandshakesForOrganizationResponse { "Handshakes" :: NullOrUndefined (Handshakes), "NextToken" :: NullOrUndefined (NextToken) }
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
newListHandshakesForOrganizationResponse' :: ({ "Handshakes" :: NullOrUndefined (Handshakes), "NextToken" :: NullOrUndefined (NextToken) } -> { "Handshakes" :: NullOrUndefined (Handshakes), "NextToken" :: NullOrUndefined (NextToken) }) -> ListHandshakesForOrganizationResponse
```

Constructs ListHandshakesForOrganizationResponse's fields from required parameters

#### `ListOrganizationalUnitsForParentRequest`

``` purescript
newtype ListOrganizationalUnitsForParentRequest
  = ListOrganizationalUnitsForParentRequest { "ParentId" :: ParentId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListOrganizationalUnitsForParentRequest' :: ParentId -> ({ "ParentId" :: ParentId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "ParentId" :: ParentId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListOrganizationalUnitsForParentRequest
```

Constructs ListOrganizationalUnitsForParentRequest's fields from required parameters

#### `ListOrganizationalUnitsForParentResponse`

``` purescript
newtype ListOrganizationalUnitsForParentResponse
  = ListOrganizationalUnitsForParentResponse { "OrganizationalUnits" :: NullOrUndefined (OrganizationalUnits), "NextToken" :: NullOrUndefined (NextToken) }
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
newListOrganizationalUnitsForParentResponse' :: ({ "OrganizationalUnits" :: NullOrUndefined (OrganizationalUnits), "NextToken" :: NullOrUndefined (NextToken) } -> { "OrganizationalUnits" :: NullOrUndefined (OrganizationalUnits), "NextToken" :: NullOrUndefined (NextToken) }) -> ListOrganizationalUnitsForParentResponse
```

Constructs ListOrganizationalUnitsForParentResponse's fields from required parameters

#### `ListParentsRequest`

``` purescript
newtype ListParentsRequest
  = ListParentsRequest { "ChildId" :: ChildId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListParentsRequest' :: ChildId -> ({ "ChildId" :: ChildId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "ChildId" :: ChildId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListParentsRequest
```

Constructs ListParentsRequest's fields from required parameters

#### `ListParentsResponse`

``` purescript
newtype ListParentsResponse
  = ListParentsResponse { "Parents" :: NullOrUndefined (Parents), "NextToken" :: NullOrUndefined (NextToken) }
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
newListParentsResponse' :: ({ "Parents" :: NullOrUndefined (Parents), "NextToken" :: NullOrUndefined (NextToken) } -> { "Parents" :: NullOrUndefined (Parents), "NextToken" :: NullOrUndefined (NextToken) }) -> ListParentsResponse
```

Constructs ListParentsResponse's fields from required parameters

#### `ListPoliciesForTargetRequest`

``` purescript
newtype ListPoliciesForTargetRequest
  = ListPoliciesForTargetRequest { "TargetId" :: PolicyTargetId, "Filter" :: PolicyType, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListPoliciesForTargetRequest' :: PolicyType -> PolicyTargetId -> ({ "TargetId" :: PolicyTargetId, "Filter" :: PolicyType, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "TargetId" :: PolicyTargetId, "Filter" :: PolicyType, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListPoliciesForTargetRequest
```

Constructs ListPoliciesForTargetRequest's fields from required parameters

#### `ListPoliciesForTargetResponse`

``` purescript
newtype ListPoliciesForTargetResponse
  = ListPoliciesForTargetResponse { "Policies" :: NullOrUndefined (Policies), "NextToken" :: NullOrUndefined (NextToken) }
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
newListPoliciesForTargetResponse' :: ({ "Policies" :: NullOrUndefined (Policies), "NextToken" :: NullOrUndefined (NextToken) } -> { "Policies" :: NullOrUndefined (Policies), "NextToken" :: NullOrUndefined (NextToken) }) -> ListPoliciesForTargetResponse
```

Constructs ListPoliciesForTargetResponse's fields from required parameters

#### `ListPoliciesRequest`

``` purescript
newtype ListPoliciesRequest
  = ListPoliciesRequest { "Filter" :: PolicyType, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListPoliciesRequest' :: PolicyType -> ({ "Filter" :: PolicyType, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "Filter" :: PolicyType, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListPoliciesRequest
```

Constructs ListPoliciesRequest's fields from required parameters

#### `ListPoliciesResponse`

``` purescript
newtype ListPoliciesResponse
  = ListPoliciesResponse { "Policies" :: NullOrUndefined (Policies), "NextToken" :: NullOrUndefined (NextToken) }
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
newListPoliciesResponse' :: ({ "Policies" :: NullOrUndefined (Policies), "NextToken" :: NullOrUndefined (NextToken) } -> { "Policies" :: NullOrUndefined (Policies), "NextToken" :: NullOrUndefined (NextToken) }) -> ListPoliciesResponse
```

Constructs ListPoliciesResponse's fields from required parameters

#### `ListRootsRequest`

``` purescript
newtype ListRootsRequest
  = ListRootsRequest { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListRootsRequest' :: ({ "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListRootsRequest
```

Constructs ListRootsRequest's fields from required parameters

#### `ListRootsResponse`

``` purescript
newtype ListRootsResponse
  = ListRootsResponse { "Roots" :: NullOrUndefined (Roots), "NextToken" :: NullOrUndefined (NextToken) }
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
newListRootsResponse' :: ({ "Roots" :: NullOrUndefined (Roots), "NextToken" :: NullOrUndefined (NextToken) } -> { "Roots" :: NullOrUndefined (Roots), "NextToken" :: NullOrUndefined (NextToken) }) -> ListRootsResponse
```

Constructs ListRootsResponse's fields from required parameters

#### `ListTargetsForPolicyRequest`

``` purescript
newtype ListTargetsForPolicyRequest
  = ListTargetsForPolicyRequest { "PolicyId" :: PolicyId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }
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
newListTargetsForPolicyRequest' :: PolicyId -> ({ "PolicyId" :: PolicyId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) } -> { "PolicyId" :: PolicyId, "NextToken" :: NullOrUndefined (NextToken), "MaxResults" :: NullOrUndefined (MaxResults) }) -> ListTargetsForPolicyRequest
```

Constructs ListTargetsForPolicyRequest's fields from required parameters

#### `ListTargetsForPolicyResponse`

``` purescript
newtype ListTargetsForPolicyResponse
  = ListTargetsForPolicyResponse { "Targets" :: NullOrUndefined (PolicyTargets), "NextToken" :: NullOrUndefined (NextToken) }
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
newListTargetsForPolicyResponse' :: ({ "Targets" :: NullOrUndefined (PolicyTargets), "NextToken" :: NullOrUndefined (NextToken) } -> { "Targets" :: NullOrUndefined (PolicyTargets), "NextToken" :: NullOrUndefined (NextToken) }) -> ListTargetsForPolicyResponse
```

Constructs ListTargetsForPolicyResponse's fields from required parameters

#### `MalformedPolicyDocumentException`

``` purescript
newtype MalformedPolicyDocumentException
  = MalformedPolicyDocumentException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newMalformedPolicyDocumentException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> MalformedPolicyDocumentException
```

Constructs MalformedPolicyDocumentException's fields from required parameters

#### `MasterCannotLeaveOrganizationException`

``` purescript
newtype MasterCannotLeaveOrganizationException
  = MasterCannotLeaveOrganizationException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newMasterCannotLeaveOrganizationException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> MasterCannotLeaveOrganizationException
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
  = Organization { "Id" :: NullOrUndefined (OrganizationId), "Arn" :: NullOrUndefined (OrganizationArn), "FeatureSet" :: NullOrUndefined (OrganizationFeatureSet), "MasterAccountArn" :: NullOrUndefined (AccountArn), "MasterAccountId" :: NullOrUndefined (AccountId), "MasterAccountEmail" :: NullOrUndefined (Email), "AvailablePolicyTypes" :: NullOrUndefined (PolicyTypes) }
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
newOrganization' :: ({ "Id" :: NullOrUndefined (OrganizationId), "Arn" :: NullOrUndefined (OrganizationArn), "FeatureSet" :: NullOrUndefined (OrganizationFeatureSet), "MasterAccountArn" :: NullOrUndefined (AccountArn), "MasterAccountId" :: NullOrUndefined (AccountId), "MasterAccountEmail" :: NullOrUndefined (Email), "AvailablePolicyTypes" :: NullOrUndefined (PolicyTypes) } -> { "Id" :: NullOrUndefined (OrganizationId), "Arn" :: NullOrUndefined (OrganizationArn), "FeatureSet" :: NullOrUndefined (OrganizationFeatureSet), "MasterAccountArn" :: NullOrUndefined (AccountArn), "MasterAccountId" :: NullOrUndefined (AccountId), "MasterAccountEmail" :: NullOrUndefined (Email), "AvailablePolicyTypes" :: NullOrUndefined (PolicyTypes) }) -> Organization
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
  = OrganizationNotEmptyException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newOrganizationNotEmptyException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> OrganizationNotEmptyException
```

Constructs OrganizationNotEmptyException's fields from required parameters

#### `OrganizationalUnit`

``` purescript
newtype OrganizationalUnit
  = OrganizationalUnit { "Id" :: NullOrUndefined (OrganizationalUnitId), "Arn" :: NullOrUndefined (OrganizationalUnitArn), "Name" :: NullOrUndefined (OrganizationalUnitName) }
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
newOrganizationalUnit' :: ({ "Id" :: NullOrUndefined (OrganizationalUnitId), "Arn" :: NullOrUndefined (OrganizationalUnitArn), "Name" :: NullOrUndefined (OrganizationalUnitName) } -> { "Id" :: NullOrUndefined (OrganizationalUnitId), "Arn" :: NullOrUndefined (OrganizationalUnitArn), "Name" :: NullOrUndefined (OrganizationalUnitName) }) -> OrganizationalUnit
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
  = OrganizationalUnitNotEmptyException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newOrganizationalUnitNotEmptyException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> OrganizationalUnitNotEmptyException
```

Constructs OrganizationalUnitNotEmptyException's fields from required parameters

#### `OrganizationalUnitNotFoundException`

``` purescript
newtype OrganizationalUnitNotFoundException
  = OrganizationalUnitNotFoundException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newOrganizationalUnitNotFoundException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> OrganizationalUnitNotFoundException
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
  = Parent { "Id" :: NullOrUndefined (ParentId), "Type" :: NullOrUndefined (ParentType) }
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
newParent' :: ({ "Id" :: NullOrUndefined (ParentId), "Type" :: NullOrUndefined (ParentType) } -> { "Id" :: NullOrUndefined (ParentId), "Type" :: NullOrUndefined (ParentType) }) -> Parent
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
  = ParentNotFoundException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newParentNotFoundException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> ParentNotFoundException
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
  = Policy { "PolicySummary" :: NullOrUndefined (PolicySummary), "Content" :: NullOrUndefined (PolicyContent) }
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
newPolicy' :: ({ "PolicySummary" :: NullOrUndefined (PolicySummary), "Content" :: NullOrUndefined (PolicyContent) } -> { "PolicySummary" :: NullOrUndefined (PolicySummary), "Content" :: NullOrUndefined (PolicyContent) }) -> Policy
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
  = PolicyInUseException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newPolicyInUseException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> PolicyInUseException
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
  = PolicyNotAttachedException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newPolicyNotAttachedException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> PolicyNotAttachedException
```

Constructs PolicyNotAttachedException's fields from required parameters

#### `PolicyNotFoundException`

``` purescript
newtype PolicyNotFoundException
  = PolicyNotFoundException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newPolicyNotFoundException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> PolicyNotFoundException
```

Constructs PolicyNotFoundException's fields from required parameters

#### `PolicySummary`

``` purescript
newtype PolicySummary
  = PolicySummary { "Id" :: NullOrUndefined (PolicyId), "Arn" :: NullOrUndefined (PolicyArn), "Name" :: NullOrUndefined (PolicyName), "Description" :: NullOrUndefined (PolicyDescription), "Type" :: NullOrUndefined (PolicyType), "AwsManaged" :: NullOrUndefined (AwsManagedPolicy) }
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
newPolicySummary' :: ({ "Id" :: NullOrUndefined (PolicyId), "Arn" :: NullOrUndefined (PolicyArn), "Name" :: NullOrUndefined (PolicyName), "Description" :: NullOrUndefined (PolicyDescription), "Type" :: NullOrUndefined (PolicyType), "AwsManaged" :: NullOrUndefined (AwsManagedPolicy) } -> { "Id" :: NullOrUndefined (PolicyId), "Arn" :: NullOrUndefined (PolicyArn), "Name" :: NullOrUndefined (PolicyName), "Description" :: NullOrUndefined (PolicyDescription), "Type" :: NullOrUndefined (PolicyType), "AwsManaged" :: NullOrUndefined (AwsManagedPolicy) }) -> PolicySummary
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
  = PolicyTargetSummary { "TargetId" :: NullOrUndefined (PolicyTargetId), "Arn" :: NullOrUndefined (GenericArn), "Name" :: NullOrUndefined (TargetName), "Type" :: NullOrUndefined (TargetType) }
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
newPolicyTargetSummary' :: ({ "TargetId" :: NullOrUndefined (PolicyTargetId), "Arn" :: NullOrUndefined (GenericArn), "Name" :: NullOrUndefined (TargetName), "Type" :: NullOrUndefined (TargetType) } -> { "TargetId" :: NullOrUndefined (PolicyTargetId), "Arn" :: NullOrUndefined (GenericArn), "Name" :: NullOrUndefined (TargetName), "Type" :: NullOrUndefined (TargetType) }) -> PolicyTargetSummary
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
  = PolicyTypeAlreadyEnabledException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newPolicyTypeAlreadyEnabledException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> PolicyTypeAlreadyEnabledException
```

Constructs PolicyTypeAlreadyEnabledException's fields from required parameters

#### `PolicyTypeNotAvailableForOrganizationException`

``` purescript
newtype PolicyTypeNotAvailableForOrganizationException
  = PolicyTypeNotAvailableForOrganizationException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newPolicyTypeNotAvailableForOrganizationException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> PolicyTypeNotAvailableForOrganizationException
```

Constructs PolicyTypeNotAvailableForOrganizationException's fields from required parameters

#### `PolicyTypeNotEnabledException`

``` purescript
newtype PolicyTypeNotEnabledException
  = PolicyTypeNotEnabledException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newPolicyTypeNotEnabledException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> PolicyTypeNotEnabledException
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
  = PolicyTypeSummary { "Type" :: NullOrUndefined (PolicyType), "Status" :: NullOrUndefined (PolicyTypeStatus) }
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
newPolicyTypeSummary' :: ({ "Type" :: NullOrUndefined (PolicyType), "Status" :: NullOrUndefined (PolicyTypeStatus) } -> { "Type" :: NullOrUndefined (PolicyType), "Status" :: NullOrUndefined (PolicyTypeStatus) }) -> PolicyTypeSummary
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
  = Root { "Id" :: NullOrUndefined (RootId), "Arn" :: NullOrUndefined (RootArn), "Name" :: NullOrUndefined (RootName), "PolicyTypes" :: NullOrUndefined (PolicyTypes) }
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
newRoot' :: ({ "Id" :: NullOrUndefined (RootId), "Arn" :: NullOrUndefined (RootArn), "Name" :: NullOrUndefined (RootName), "PolicyTypes" :: NullOrUndefined (PolicyTypes) } -> { "Id" :: NullOrUndefined (RootId), "Arn" :: NullOrUndefined (RootArn), "Name" :: NullOrUndefined (RootName), "PolicyTypes" :: NullOrUndefined (PolicyTypes) }) -> Root
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
  = RootNotFoundException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newRootNotFoundException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> RootNotFoundException
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
  = ServiceException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newServiceException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> ServiceException
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
  = SourceParentNotFoundException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newSourceParentNotFoundException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> SourceParentNotFoundException
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
  = TargetNotFoundException { "Message" :: NullOrUndefined (ExceptionMessage) }
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
newTargetNotFoundException' :: ({ "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Message" :: NullOrUndefined (ExceptionMessage) }) -> TargetNotFoundException
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
  = TooManyRequestsException { "Type" :: NullOrUndefined (ExceptionType), "Message" :: NullOrUndefined (ExceptionMessage) }
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
newTooManyRequestsException' :: ({ "Type" :: NullOrUndefined (ExceptionType), "Message" :: NullOrUndefined (ExceptionMessage) } -> { "Type" :: NullOrUndefined (ExceptionType), "Message" :: NullOrUndefined (ExceptionMessage) }) -> TooManyRequestsException
```

Constructs TooManyRequestsException's fields from required parameters

#### `UpdateOrganizationalUnitRequest`

``` purescript
newtype UpdateOrganizationalUnitRequest
  = UpdateOrganizationalUnitRequest { "OrganizationalUnitId" :: OrganizationalUnitId, "Name" :: NullOrUndefined (OrganizationalUnitName) }
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
newUpdateOrganizationalUnitRequest' :: OrganizationalUnitId -> ({ "OrganizationalUnitId" :: OrganizationalUnitId, "Name" :: NullOrUndefined (OrganizationalUnitName) } -> { "OrganizationalUnitId" :: OrganizationalUnitId, "Name" :: NullOrUndefined (OrganizationalUnitName) }) -> UpdateOrganizationalUnitRequest
```

Constructs UpdateOrganizationalUnitRequest's fields from required parameters

#### `UpdateOrganizationalUnitResponse`

``` purescript
newtype UpdateOrganizationalUnitResponse
  = UpdateOrganizationalUnitResponse { "OrganizationalUnit" :: NullOrUndefined (OrganizationalUnit) }
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
newUpdateOrganizationalUnitResponse' :: ({ "OrganizationalUnit" :: NullOrUndefined (OrganizationalUnit) } -> { "OrganizationalUnit" :: NullOrUndefined (OrganizationalUnit) }) -> UpdateOrganizationalUnitResponse
```

Constructs UpdateOrganizationalUnitResponse's fields from required parameters

#### `UpdatePolicyRequest`

``` purescript
newtype UpdatePolicyRequest
  = UpdatePolicyRequest { "PolicyId" :: PolicyId, "Name" :: NullOrUndefined (PolicyName), "Description" :: NullOrUndefined (PolicyDescription), "Content" :: NullOrUndefined (PolicyContent) }
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
newUpdatePolicyRequest' :: PolicyId -> ({ "PolicyId" :: PolicyId, "Name" :: NullOrUndefined (PolicyName), "Description" :: NullOrUndefined (PolicyDescription), "Content" :: NullOrUndefined (PolicyContent) } -> { "PolicyId" :: PolicyId, "Name" :: NullOrUndefined (PolicyName), "Description" :: NullOrUndefined (PolicyDescription), "Content" :: NullOrUndefined (PolicyContent) }) -> UpdatePolicyRequest
```

Constructs UpdatePolicyRequest's fields from required parameters

#### `UpdatePolicyResponse`

``` purescript
newtype UpdatePolicyResponse
  = UpdatePolicyResponse { "Policy" :: NullOrUndefined (Policy) }
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
newUpdatePolicyResponse' :: ({ "Policy" :: NullOrUndefined (Policy) } -> { "Policy" :: NullOrUndefined (Policy) }) -> UpdatePolicyResponse
```

Constructs UpdatePolicyResponse's fields from required parameters


