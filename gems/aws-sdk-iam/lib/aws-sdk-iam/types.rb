# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IAM
  module Types

    # Contains information about an AWS access key.
    #
    # This data type is used as a response element in the CreateAccessKey
    # and ListAccessKeys actions.
    #
    # <note markdown="1"> The `SecretAccessKey` value is returned only in response to
    # CreateAccessKey. You can get a secret access key only when you first
    # create an access key; you cannot recover the secret access key later.
    # If you lose a secret access key, you must create a new access key.
    #
    #  </note>
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user that the access key is associated with.
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The ID for this access key.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the access key. `Active` means the key is valid for
    #   API calls, while `Inactive` means it is not.
    #   @return [String]
    #
    # @!attribute [rw] secret_access_key
    #   The secret key used to sign requests.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date when the access key was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AccessKey AWS API Documentation
    #
    class AccessKey < Struct.new(
      :user_name,
      :access_key_id,
      :status,
      :secret_access_key,
      :create_date)
      include Aws::Structure
    end

    # Contains information about the last time an AWS access key was used.
    #
    # This data type is used as a response element in the
    # GetAccessKeyLastUsed action.
    #
    # @!attribute [rw] last_used_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   access key was most recently used. This field is null when:
    #
    #   * The user does not have an access key.
    #
    #   * An access key exists but has never been used, at least not since
    #     IAM started tracking this information on April 22nd, 2015.
    #
    #   * There is no sign-in data associated with the user
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] service_name
    #   The name of the AWS service with which this access key was most
    #   recently used. This field displays "N/A" when:
    #
    #   * The user does not have an access key.
    #
    #   * An access key exists but has never been used, at least not since
    #     IAM started tracking this information on April 22nd, 2015.
    #
    #   * There is no sign-in data associated with the user
    #   @return [String]
    #
    # @!attribute [rw] region
    #   The AWS region where this access key was most recently used. This
    #   field is displays "N/A" when:
    #
    #   * The user does not have an access key.
    #
    #   * An access key exists but has never been used, at least not since
    #     IAM started tracking this information on April 22nd, 2015.
    #
    #   * There is no sign-in data associated with the user
    #
    #   For more information about AWS regions, see [Regions and
    #   Endpoints][1] in the Amazon Web Services General Reference.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AccessKeyLastUsed AWS API Documentation
    #
    class AccessKeyLastUsed < Struct.new(
      :last_used_date,
      :service_name,
      :region)
      include Aws::Structure
    end

    # Contains information about an AWS access key, without its secret key.
    #
    # This data type is used as a response element in the ListAccessKeys
    # action.
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user that the key is associated with.
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The ID for this access key.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the access key. `Active` means the key is valid for
    #   API calls; `Inactive` means it is not.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date when the access key was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AccessKeyMetadata AWS API Documentation
    #
    class AccessKeyMetadata < Struct.new(
      :user_name,
      :access_key_id,
      :status,
      :create_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddClientIDToOpenIDConnectProviderRequest
    #   data as a hash:
    #
    #       {
    #         open_id_connect_provider_arn: "arnType", # required
    #         client_id: "clientIDType", # required
    #       }
    #
    # @!attribute [rw] open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the IAM OpenID Connect (OIDC)
    #   provider resource to add the client ID to. You can get a list of
    #   OIDC provider ARNs by using the ListOpenIDConnectProviders action.
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client ID (also known as audience) to add to the IAM OpenID
    #   Connect provider resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AddClientIDToOpenIDConnectProviderRequest AWS API Documentation
    #
    class AddClientIDToOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn,
      :client_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddRoleToInstanceProfileRequest
    #   data as a hash:
    #
    #       {
    #         instance_profile_name: "instanceProfileNameType", # required
    #         role_name: "roleNameType", # required
    #       }
    #
    # @!attribute [rw] instance_profile_name
    #   The name of the instance profile to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The name of the role to add.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AddRoleToInstanceProfileRequest AWS API Documentation
    #
    class AddRoleToInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      :role_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AddUserToGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "groupNameType", # required
    #         user_name: "existingUserNameType", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user to add.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AddUserToGroupRequest AWS API Documentation
    #
    class AddUserToGroupRequest < Struct.new(
      :group_name,
      :user_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachGroupPolicyRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "groupNameType", # required
    #         policy_arn: "arnType", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name (friendly name, not ARN) of the group to attach the policy
    #   to.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to attach.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachGroupPolicyRequest AWS API Documentation
    #
    class AttachGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachRolePolicyRequest
    #   data as a hash:
    #
    #       {
    #         role_name: "roleNameType", # required
    #         policy_arn: "arnType", # required
    #       }
    #
    # @!attribute [rw] role_name
    #   The name (friendly name, not ARN) of the role to attach the policy
    #   to.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to attach.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachRolePolicyRequest AWS API Documentation
    #
    class AttachRolePolicyRequest < Struct.new(
      :role_name,
      :policy_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AttachUserPolicyRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType", # required
    #         policy_arn: "arnType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name (friendly name, not ARN) of the IAM user to attach the
    #   policy to.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to attach.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachUserPolicyRequest AWS API Documentation
    #
    class AttachUserPolicyRequest < Struct.new(
      :user_name,
      :policy_arn)
      include Aws::Structure
    end

    # Contains information about an attached policy.
    #
    # An attached policy is a managed policy that has been attached to a
    # user, group, or role. This data type is used as a response element in
    # the ListAttachedGroupPolicies, ListAttachedRolePolicies,
    # ListAttachedUserPolicies, and GetAccountAuthorizationDetails actions.
    #
    # For more information about managed policies, refer to [Managed
    # Policies and Inline Policies][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] policy_name
    #   The friendly name of the attached policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
    #   resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/AttachedPolicy AWS API Documentation
    #
    class AttachedPolicy < Struct.new(
      :policy_name,
      :policy_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ChangePasswordRequest
    #   data as a hash:
    #
    #       {
    #         old_password: "passwordType", # required
    #         new_password: "passwordType", # required
    #       }
    #
    # @!attribute [rw] old_password
    #   The IAM user's current password.
    #   @return [String]
    #
    # @!attribute [rw] new_password
    #   The new password. The new password must conform to the AWS
    #   account's password policy, if one exists.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of almost any printable ASCII character
    #   from the space (\\u0020) through the end of the ASCII character
    #   range (\\u00FF). You can also include the tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D) characters. Although any of
    #   these characters are valid in a password, note that many tools, such
    #   as the AWS Management Console, might restrict the ability to enter
    #   certain characters because they have special meaning within that
    #   tool.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ChangePasswordRequest AWS API Documentation
    #
    class ChangePasswordRequest < Struct.new(
      :old_password,
      :new_password)
      include Aws::Structure
    end

    # Contains information about a condition context key. It includes the
    # name of the key and specifies the value (or values, if the context key
    # supports multiple values) to use in the simulation. This information
    # is used when evaluating the `Condition` elements of the input
    # policies.
    #
    # This data type is used as an input parameter to ` SimulateCustomPolicy
    # ` and ` SimulateCustomPolicy `.
    #
    # @note When making an API call, you may pass ContextEntry
    #   data as a hash:
    #
    #       {
    #         context_key_name: "ContextKeyNameType",
    #         context_key_values: ["ContextKeyValueType"],
    #         context_key_type: "string", # accepts string, stringList, numeric, numericList, boolean, booleanList, ip, ipList, binary, binaryList, date, dateList
    #       }
    #
    # @!attribute [rw] context_key_name
    #   The full name of a condition context key, including the service
    #   prefix. For example, `aws:SourceIp` or `s3:VersionId`.
    #   @return [String]
    #
    # @!attribute [rw] context_key_values
    #   The value (or values, if the condition context key supports multiple
    #   values) to provide to the simulation for use when the key is
    #   referenced by a `Condition` element in an input policy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] context_key_type
    #   The data type of the value (or values) specified in the
    #   `ContextKeyValues` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ContextEntry AWS API Documentation
    #
    class ContextEntry < Struct.new(
      :context_key_name,
      :context_key_values,
      :context_key_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAccessKeyRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType",
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user that the new key will belong to.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateAccessKeyRequest AWS API Documentation
    #
    class CreateAccessKeyRequest < Struct.new(
      :user_name)
      include Aws::Structure
    end

    # Contains the response to a successful CreateAccessKey request.
    #
    # @!attribute [rw] access_key
    #   A structure with details about the access key.
    #   @return [Types::AccessKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateAccessKeyResponse AWS API Documentation
    #
    class CreateAccessKeyResponse < Struct.new(
      :access_key)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateAccountAliasRequest
    #   data as a hash:
    #
    #       {
    #         account_alias: "accountAliasType", # required
    #       }
    #
    # @!attribute [rw] account_alias
    #   The account alias to create.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of lowercase letters, digits, and dashes. You
    #   cannot start or finish with a dash, nor can you have two dashes in a
    #   row.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateAccountAliasRequest AWS API Documentation
    #
    class CreateAccountAliasRequest < Struct.new(
      :account_alias)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateGroupRequest
    #   data as a hash:
    #
    #       {
    #         path: "pathType",
    #         group_name: "groupNameType", # required
    #       }
    #
    # @!attribute [rw] path
    #   The path to the group. For more information about paths, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This paramater allows (per its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character
    #   (\\u007F), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The name of the group to create. Do not include the path in this
    #   value.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-. The group name must be unique within the account.
    #   Group names are not distinguished by case. For example, you cannot
    #   create groups named both "ADMINS" and "admins".
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateGroupRequest AWS API Documentation
    #
    class CreateGroupRequest < Struct.new(
      :path,
      :group_name)
      include Aws::Structure
    end

    # Contains the response to a successful CreateGroup request.
    #
    # @!attribute [rw] group
    #   A structure containing details about the new group.
    #   @return [Types::Group]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateGroupResponse AWS API Documentation
    #
    class CreateGroupResponse < Struct.new(
      :group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateInstanceProfileRequest
    #   data as a hash:
    #
    #       {
    #         instance_profile_name: "instanceProfileNameType", # required
    #         path: "pathType",
    #       }
    #
    # @!attribute [rw] instance_profile_name
    #   The name of the instance profile to create.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the instance profile. For more information about paths,
    #   see [IAM Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This paramater allows (per its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character
    #   (\\u007F), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateInstanceProfileRequest AWS API Documentation
    #
    class CreateInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      :path)
      include Aws::Structure
    end

    # Contains the response to a successful CreateInstanceProfile request.
    #
    # @!attribute [rw] instance_profile
    #   A structure containing details about the new instance profile.
    #   @return [Types::InstanceProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateInstanceProfileResponse AWS API Documentation
    #
    class CreateInstanceProfileResponse < Struct.new(
      :instance_profile)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateLoginProfileRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType", # required
    #         password: "passwordType", # required
    #         password_reset_required: false,
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user to create a password for. The user must
    #   already exist.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The new password for the user.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of almost any printable ASCII character
    #   from the space (\\u0020) through the end of the ASCII character
    #   range (\\u00FF). You can also include the tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D) characters. Although any of
    #   these characters are valid in a password, note that many tools, such
    #   as the AWS Management Console, might restrict the ability to enter
    #   certain characters because they have special meaning within that
    #   tool.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] password_reset_required
    #   Specifies whether the user is required to set a new password on next
    #   sign-in.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateLoginProfileRequest AWS API Documentation
    #
    class CreateLoginProfileRequest < Struct.new(
      :user_name,
      :password,
      :password_reset_required)
      include Aws::Structure
    end

    # Contains the response to a successful CreateLoginProfile request.
    #
    # @!attribute [rw] login_profile
    #   A structure containing the user name and password create date.
    #   @return [Types::LoginProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateLoginProfileResponse AWS API Documentation
    #
    class CreateLoginProfileResponse < Struct.new(
      :login_profile)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateOpenIDConnectProviderRequest
    #   data as a hash:
    #
    #       {
    #         url: "OpenIDConnectProviderUrlType", # required
    #         client_id_list: ["clientIDType"],
    #         thumbprint_list: ["thumbprintType"], # required
    #       }
    #
    # @!attribute [rw] url
    #   The URL of the identity provider. The URL must begin with
    #   "https://" and should correspond to the `iss` claim in the
    #   provider's OpenID Connect ID tokens. Per the OIDC standard, path
    #   components are allowed but query parameters are not. Typically the
    #   URL consists of only a host name, like
    #   "https://server.example.org" or "https://example.com".
    #
    #   You cannot register the same provider multiple times in a single AWS
    #   account. If you try to submit a URL that has already been used for
    #   an OpenID Connect provider in the AWS account, you will get an
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] client_id_list
    #   A list of client IDs (also known as audiences). When a mobile or web
    #   app registers with an OpenID Connect provider, they establish a
    #   value that identifies the application. (This is the value that's
    #   sent as the `client_id` parameter on OAuth requests.)
    #
    #   You can register multiple client IDs with the same provider. For
    #   example, you might have multiple applications that use the same OIDC
    #   provider. You cannot register more than 100 client IDs with a single
    #   IAM OIDC provider.
    #
    #   There is no defined format for a client ID. The
    #   `CreateOpenIDConnectProviderRequest` action accepts client IDs up to
    #   255 characters long.
    #   @return [Array<String>]
    #
    # @!attribute [rw] thumbprint_list
    #   A list of server certificate thumbprints for the OpenID Connect
    #   (OIDC) identity provider's server certificate(s). Typically this
    #   list includes only one entry. However, IAM lets you have up to five
    #   thumbprints for an OIDC provider. This lets you maintain multiple
    #   thumbprints if the identity provider is rotating certificates.
    #
    #   The server certificate thumbprint is the hex-encoded SHA-1 hash
    #   value of the X.509 certificate used by the domain where the OpenID
    #   Connect provider makes its keys available. It is always a
    #   40-character string.
    #
    #   You must provide at least one thumbprint when creating an IAM OIDC
    #   provider. For example, if the OIDC provider is `server.example.com`
    #   and the provider stores its keys at
    #   "https://keys.server.example.com/openid-connect", the thumbprint
    #   string would be the hex-encoded SHA-1 hash value of the certificate
    #   used by https://keys.server.example.com.
    #
    #   For more information about obtaining the OIDC provider's
    #   thumbprint, see [Obtaining the Thumbprint for an OpenID Connect
    #   Provider][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/identity-providers-oidc-obtain-thumbprint.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateOpenIDConnectProviderRequest AWS API Documentation
    #
    class CreateOpenIDConnectProviderRequest < Struct.new(
      :url,
      :client_id_list,
      :thumbprint_list)
      include Aws::Structure
    end

    # Contains the response to a successful CreateOpenIDConnectProvider
    # request.
    #
    # @!attribute [rw] open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the new IAM OpenID Connect
    #   provider that is created. For more information, see
    #   OpenIDConnectProviderListEntry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateOpenIDConnectProviderResponse AWS API Documentation
    #
    class CreateOpenIDConnectProviderResponse < Struct.new(
      :open_id_connect_provider_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_name: "policyNameType", # required
    #         path: "policyPathType",
    #         policy_document: "policyDocumentType", # required
    #         description: "policyDescriptionType",
    #       }
    #
    # @!attribute [rw] policy_name
    #   The friendly name of the policy.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path for the policy.
    #
    #   For more information about paths, see [IAM Identifiers][1] in the
    #   *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This paramater allows (per its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character
    #   (\\u007F), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The JSON policy document that you want to use as the content for the
    #   new policy.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A friendly description of the policy.
    #
    #   Typically used to store information about the permissions defined in
    #   the policy. For example, "Grants access to production DynamoDB
    #   tables."
    #
    #   The policy description is immutable. After a value is assigned, it
    #   cannot be changed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreatePolicyRequest AWS API Documentation
    #
    class CreatePolicyRequest < Struct.new(
      :policy_name,
      :path,
      :policy_document,
      :description)
      include Aws::Structure
    end

    # Contains the response to a successful CreatePolicy request.
    #
    # @!attribute [rw] policy
    #   A structure containing details about the new policy.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreatePolicyResponse AWS API Documentation
    #
    class CreatePolicyResponse < Struct.new(
      :policy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreatePolicyVersionRequest
    #   data as a hash:
    #
    #       {
    #         policy_arn: "arnType", # required
    #         policy_document: "policyDocumentType", # required
    #         set_as_default: false,
    #       }
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy to which you want
    #   to add a new version.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The JSON policy document that you want to use as the content for
    #   this new version of the policy.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] set_as_default
    #   Specifies whether to set this version as the policy's default
    #   version.
    #
    #   When this parameter is `true`, the new policy version becomes the
    #   operative version; that is, the version that is in effect for the
    #   IAM users, groups, and roles that the policy is attached to.
    #
    #   For more information about managed policy versions, see [Versioning
    #   for Managed Policies][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreatePolicyVersionRequest AWS API Documentation
    #
    class CreatePolicyVersionRequest < Struct.new(
      :policy_arn,
      :policy_document,
      :set_as_default)
      include Aws::Structure
    end

    # Contains the response to a successful CreatePolicyVersion request.
    #
    # @!attribute [rw] policy_version
    #   A structure containing details about the new policy version.
    #   @return [Types::PolicyVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreatePolicyVersionResponse AWS API Documentation
    #
    class CreatePolicyVersionResponse < Struct.new(
      :policy_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRoleRequest
    #   data as a hash:
    #
    #       {
    #         path: "pathType",
    #         role_name: "roleNameType", # required
    #         assume_role_policy_document: "policyDocumentType", # required
    #         description: "roleDescriptionType",
    #       }
    #
    # @!attribute [rw] path
    #   The path to the role. For more information about paths, see [IAM
    #   Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This paramater allows (per its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character
    #   (\\u007F), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The name of the role to create.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #   Role names are not distinguished by case. For example, you cannot
    #   create roles named both "PRODROLE" and "prodrole".
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] assume_role_policy_document
    #   The trust relationship policy document that grants an entity
    #   permission to assume the role.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A customer-provided description of the role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateRoleRequest AWS API Documentation
    #
    class CreateRoleRequest < Struct.new(
      :path,
      :role_name,
      :assume_role_policy_document,
      :description)
      include Aws::Structure
    end

    # Contains the response to a successful CreateRole request.
    #
    # @!attribute [rw] role
    #   A structure containing details about the new role.
    #   @return [Types::Role]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateRoleResponse AWS API Documentation
    #
    class CreateRoleResponse < Struct.new(
      :role)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSAMLProviderRequest
    #   data as a hash:
    #
    #       {
    #         saml_metadata_document: "SAMLMetadataDocumentType", # required
    #         name: "SAMLProviderNameType", # required
    #       }
    #
    # @!attribute [rw] saml_metadata_document
    #   An XML document generated by an identity provider (IdP) that
    #   supports SAML 2.0. The document includes the issuer's name,
    #   expiration information, and keys that can be used to validate the
    #   SAML authentication response (assertions) that are received from the
    #   IdP. You must generate the metadata document using the identity
    #   management software that is used as your organization's IdP.
    #
    #   For more information, see [About SAML 2.0-based Federation][1] in
    #   the *IAM User Guide*
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_providers_saml.html
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the provider to create.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateSAMLProviderRequest AWS API Documentation
    #
    class CreateSAMLProviderRequest < Struct.new(
      :saml_metadata_document,
      :name)
      include Aws::Structure
    end

    # Contains the response to a successful CreateSAMLProvider request.
    #
    # @!attribute [rw] saml_provider_arn
    #   The Amazon Resource Name (ARN) of the new SAML provider resource in
    #   IAM.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateSAMLProviderResponse AWS API Documentation
    #
    class CreateSAMLProviderResponse < Struct.new(
      :saml_provider_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateServiceLinkedRoleRequest
    #   data as a hash:
    #
    #       {
    #         aws_service_name: "groupNameType", # required
    #         description: "roleDescriptionType",
    #         custom_suffix: "customSuffixType",
    #       }
    #
    # @!attribute [rw] aws_service_name
    #   The AWS service to which this role is attached. You use a string
    #   similar to a URL but without the http:// in front. For example:
    #   `elasticbeanstalk.amazonaws.com`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the role.
    #   @return [String]
    #
    # @!attribute [rw] custom_suffix
    #   A string that you provide, which is combined with the service name
    #   to form the complete role name. If you make multiple requests for
    #   the same service, then you must supply a different `CustomSuffix`
    #   for each request. Otherwise the request fails with a duplicate role
    #   name error. For example, you could add `-1` or `-debug` to the
    #   suffix.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateServiceLinkedRoleRequest AWS API Documentation
    #
    class CreateServiceLinkedRoleRequest < Struct.new(
      :aws_service_name,
      :description,
      :custom_suffix)
      include Aws::Structure
    end

    # @!attribute [rw] role
    #   A Role object that contains details about the newly created role.
    #   @return [Types::Role]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateServiceLinkedRoleResponse AWS API Documentation
    #
    class CreateServiceLinkedRoleResponse < Struct.new(
      :role)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateServiceSpecificCredentialRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType", # required
    #         service_name: "serviceName", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user that is to be associated with the
    #   credentials. The new service-specific credentials have the same
    #   permissions as the associated user except that they can be used only
    #   to access the specified service.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the AWS service that is to be associated with the
    #   credentials. The service you specify here is the only service that
    #   can be accessed using these credentials.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateServiceSpecificCredentialRequest AWS API Documentation
    #
    class CreateServiceSpecificCredentialRequest < Struct.new(
      :user_name,
      :service_name)
      include Aws::Structure
    end

    # @!attribute [rw] service_specific_credential
    #   A structure that contains information about the newly created
    #   service-specific credential.
    #
    #   This is the only time that the password for this credential set is
    #   available. It cannot be recovered later. Instead, you will have to
    #   reset the password with ResetServiceSpecificCredential.
    #   @return [Types::ServiceSpecificCredential]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateServiceSpecificCredentialResponse AWS API Documentation
    #
    class CreateServiceSpecificCredentialResponse < Struct.new(
      :service_specific_credential)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateUserRequest
    #   data as a hash:
    #
    #       {
    #         path: "pathType",
    #         user_name: "userNameType", # required
    #       }
    #
    # @!attribute [rw] path
    #   The path for the user name. For more information about paths, see
    #   [IAM Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This paramater allows (per its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character
    #   (\\u007F), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user to create.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-. User names are not distinguished by case. For
    #   example, you cannot create users named both "TESTUSER" and
    #   "testuser".
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateUserRequest AWS API Documentation
    #
    class CreateUserRequest < Struct.new(
      :path,
      :user_name)
      include Aws::Structure
    end

    # Contains the response to a successful CreateUser request.
    #
    # @!attribute [rw] user
    #   A structure with details about the new IAM user.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateUserResponse AWS API Documentation
    #
    class CreateUserResponse < Struct.new(
      :user)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVirtualMFADeviceRequest
    #   data as a hash:
    #
    #       {
    #         path: "pathType",
    #         virtual_mfa_device_name: "virtualMFADeviceName", # required
    #       }
    #
    # @!attribute [rw] path
    #   The path for the virtual MFA device. For more information about
    #   paths, see [IAM Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/).
    #
    #   This paramater allows (per its [regex pattern][2]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character
    #   (\\u007F), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] virtual_mfa_device_name
    #   The name of the virtual MFA device. Use with path to uniquely
    #   identify a virtual MFA device.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateVirtualMFADeviceRequest AWS API Documentation
    #
    class CreateVirtualMFADeviceRequest < Struct.new(
      :path,
      :virtual_mfa_device_name)
      include Aws::Structure
    end

    # Contains the response to a successful CreateVirtualMFADevice request.
    #
    # @!attribute [rw] virtual_mfa_device
    #   A structure containing details about the new virtual MFA device.
    #   @return [Types::VirtualMFADevice]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/CreateVirtualMFADeviceResponse AWS API Documentation
    #
    class CreateVirtualMFADeviceResponse < Struct.new(
      :virtual_mfa_device)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeactivateMFADeviceRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType", # required
    #         serial_number: "serialNumberType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user whose MFA device you want to deactivate.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number that uniquely identifies the MFA device. For
    #   virtual MFA devices, the serial number is the device ARN.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@:/-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeactivateMFADeviceRequest AWS API Documentation
    #
    class DeactivateMFADeviceRequest < Struct.new(
      :user_name,
      :serial_number)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccessKeyRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType",
    #         access_key_id: "accessKeyIdType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user whose access key pair you want to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The access key ID for the access key ID and secret access key you
    #   want to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteAccessKeyRequest AWS API Documentation
    #
    class DeleteAccessKeyRequest < Struct.new(
      :user_name,
      :access_key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteAccountAliasRequest
    #   data as a hash:
    #
    #       {
    #         account_alias: "accountAliasType", # required
    #       }
    #
    # @!attribute [rw] account_alias
    #   The name of the account alias to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of lowercase letters, digits, and dashes. You
    #   cannot start or finish with a dash, nor can you have two dashes in a
    #   row.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteAccountAliasRequest AWS API Documentation
    #
    class DeleteAccountAliasRequest < Struct.new(
      :account_alias)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGroupPolicyRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "groupNameType", # required
    #         policy_name: "policyNameType", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name (friendly name, not ARN) identifying the group that the
    #   policy is embedded in.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name identifying the policy document to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteGroupPolicyRequest AWS API Documentation
    #
    class DeleteGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "groupNameType", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the IAM group to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteGroupRequest AWS API Documentation
    #
    class DeleteGroupRequest < Struct.new(
      :group_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteInstanceProfileRequest
    #   data as a hash:
    #
    #       {
    #         instance_profile_name: "instanceProfileNameType", # required
    #       }
    #
    # @!attribute [rw] instance_profile_name
    #   The name of the instance profile to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteInstanceProfileRequest AWS API Documentation
    #
    class DeleteInstanceProfileRequest < Struct.new(
      :instance_profile_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteLoginProfileRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user whose password you want to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteLoginProfileRequest AWS API Documentation
    #
    class DeleteLoginProfileRequest < Struct.new(
      :user_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteOpenIDConnectProviderRequest
    #   data as a hash:
    #
    #       {
    #         open_id_connect_provider_arn: "arnType", # required
    #       }
    #
    # @!attribute [rw] open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the IAM OpenID Connect provider
    #   resource object to delete. You can get a list of OpenID Connect
    #   provider resource ARNs by using the ListOpenIDConnectProviders
    #   action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteOpenIDConnectProviderRequest AWS API Documentation
    #
    class DeleteOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_arn: "arnType", # required
    #       }
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to delete.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeletePolicyRequest AWS API Documentation
    #
    class DeletePolicyRequest < Struct.new(
      :policy_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeletePolicyVersionRequest
    #   data as a hash:
    #
    #       {
    #         policy_arn: "arnType", # required
    #         version_id: "policyVersionIdType", # required
    #       }
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy from which you want
    #   to delete a version.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The policy version to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that consists of the lowercase letter 'v' followed by
    #   one or two digits, and optionally followed by a period '.' and a
    #   string of letters and digits.
    #
    #   For more information about managed policy versions, see [Versioning
    #   for Managed Policies][2] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeletePolicyVersionRequest AWS API Documentation
    #
    class DeletePolicyVersionRequest < Struct.new(
      :policy_arn,
      :version_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRolePolicyRequest
    #   data as a hash:
    #
    #       {
    #         role_name: "roleNameType", # required
    #         policy_name: "policyNameType", # required
    #       }
    #
    # @!attribute [rw] role_name
    #   The name (friendly name, not ARN) identifying the role that the
    #   policy is embedded in.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the inline policy to delete from the specified IAM role.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteRolePolicyRequest AWS API Documentation
    #
    class DeleteRolePolicyRequest < Struct.new(
      :role_name,
      :policy_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteRoleRequest
    #   data as a hash:
    #
    #       {
    #         role_name: "roleNameType", # required
    #       }
    #
    # @!attribute [rw] role_name
    #   The name of the role to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteRoleRequest AWS API Documentation
    #
    class DeleteRoleRequest < Struct.new(
      :role_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSAMLProviderRequest
    #   data as a hash:
    #
    #       {
    #         saml_provider_arn: "arnType", # required
    #       }
    #
    # @!attribute [rw] saml_provider_arn
    #   The Amazon Resource Name (ARN) of the SAML provider to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteSAMLProviderRequest AWS API Documentation
    #
    class DeleteSAMLProviderRequest < Struct.new(
      :saml_provider_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSSHPublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType", # required
    #         ssh_public_key_id: "publicKeyIdType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the SSH public key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   The unique identifier for the SSH public key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteSSHPublicKeyRequest AWS API Documentation
    #
    class DeleteSSHPublicKeyRequest < Struct.new(
      :user_name,
      :ssh_public_key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteServerCertificateRequest
    #   data as a hash:
    #
    #       {
    #         server_certificate_name: "serverCertificateNameType", # required
    #       }
    #
    # @!attribute [rw] server_certificate_name
    #   The name of the server certificate you want to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteServerCertificateRequest AWS API Documentation
    #
    class DeleteServerCertificateRequest < Struct.new(
      :server_certificate_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteServiceSpecificCredentialRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType",
    #         service_specific_credential_id: "serviceSpecificCredentialId", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the service-specific
    #   credential. If this value is not specified, then the operation
    #   assumes the user whose credentials are used to call the operation.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] service_specific_credential_id
    #   The unique identifier of the service-specific credential. You can
    #   get this value by calling ListServiceSpecificCredentials.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteServiceSpecificCredentialRequest AWS API Documentation
    #
    class DeleteServiceSpecificCredentialRequest < Struct.new(
      :user_name,
      :service_specific_credential_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSigningCertificateRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType",
    #         certificate_id: "certificateIdType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user the signing certificate belongs to.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The ID of the signing certificate to delete.
    #
    #   The format of this parameter, as described by its [regex][1]
    #   pattern, is a string of characters that can be upper- or lower-cased
    #   letters or digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteSigningCertificateRequest AWS API Documentation
    #
    class DeleteSigningCertificateRequest < Struct.new(
      :user_name,
      :certificate_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserPolicyRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType", # required
    #         policy_name: "policyNameType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name (friendly name, not ARN) identifying the user that the
    #   policy is embedded in.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name identifying the policy document to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteUserPolicyRequest AWS API Documentation
    #
    class DeleteUserPolicyRequest < Struct.new(
      :user_name,
      :policy_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user to delete.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteUserRequest AWS API Documentation
    #
    class DeleteUserRequest < Struct.new(
      :user_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteVirtualMFADeviceRequest
    #   data as a hash:
    #
    #       {
    #         serial_number: "serialNumberType", # required
    #       }
    #
    # @!attribute [rw] serial_number
    #   The serial number that uniquely identifies the MFA device. For
    #   virtual MFA devices, the serial number is the same as the ARN.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@:/-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DeleteVirtualMFADeviceRequest AWS API Documentation
    #
    class DeleteVirtualMFADeviceRequest < Struct.new(
      :serial_number)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachGroupPolicyRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "groupNameType", # required
    #         policy_arn: "arnType", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name (friendly name, not ARN) of the IAM group to detach the
    #   policy from.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to detach.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DetachGroupPolicyRequest AWS API Documentation
    #
    class DetachGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachRolePolicyRequest
    #   data as a hash:
    #
    #       {
    #         role_name: "roleNameType", # required
    #         policy_arn: "arnType", # required
    #       }
    #
    # @!attribute [rw] role_name
    #   The name (friendly name, not ARN) of the IAM role to detach the
    #   policy from.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to detach.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DetachRolePolicyRequest AWS API Documentation
    #
    class DetachRolePolicyRequest < Struct.new(
      :role_name,
      :policy_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DetachUserPolicyRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType", # required
    #         policy_arn: "arnType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name (friendly name, not ARN) of the IAM user to detach the
    #   policy from.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy you want to detach.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/DetachUserPolicyRequest AWS API Documentation
    #
    class DetachUserPolicyRequest < Struct.new(
      :user_name,
      :policy_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableMFADeviceRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType", # required
    #         serial_number: "serialNumberType", # required
    #         authentication_code_1: "authenticationCodeType", # required
    #         authentication_code_2: "authenticationCodeType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user for whom you want to enable the MFA device.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number that uniquely identifies the MFA device. For
    #   virtual MFA devices, the serial number is the device ARN.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@:/-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] authentication_code_1
    #   An authentication code emitted by the device.
    #
    #   The format for this parameter is a string of 6 digits.
    #
    #   Submit your request immediately after generating the authentication
    #   codes. If you generate the codes and then wait too long to submit
    #   the request, the MFA device successfully associates with the user
    #   but the MFA device becomes out of sync. This happens because
    #   time-based one-time passwords (TOTP) expire after a short period of
    #   time. If this happens, you can [resync the device][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html
    #   @return [String]
    #
    # @!attribute [rw] authentication_code_2
    #   A subsequent authentication code emitted by the device.
    #
    #   The format for this parameter is a string of 6 digits.
    #
    #   Submit your request immediately after generating the authentication
    #   codes. If you generate the codes and then wait too long to submit
    #   the request, the MFA device successfully associates with the user
    #   but the MFA device becomes out of sync. This happens because
    #   time-based one-time passwords (TOTP) expire after a short period of
    #   time. If this happens, you can [resync the device][1].
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_mfa_sync.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EnableMFADeviceRequest AWS API Documentation
    #
    class EnableMFADeviceRequest < Struct.new(
      :user_name,
      :serial_number,
      :authentication_code_1,
      :authentication_code_2)
      include Aws::Structure
    end

    # Contains the results of a simulation.
    #
    # This data type is used by the return parameter of `
    # SimulateCustomPolicy ` and ` SimulatePrincipalPolicy `.
    #
    # @!attribute [rw] eval_action_name
    #   The name of the API action tested on the indicated resource.
    #   @return [String]
    #
    # @!attribute [rw] eval_resource_name
    #   The ARN of the resource that the indicated API action was tested on.
    #   @return [String]
    #
    # @!attribute [rw] eval_decision
    #   The result of the simulation.
    #   @return [String]
    #
    # @!attribute [rw] matched_statements
    #   A list of the statements in the input policies that determine the
    #   result for this scenario. Remember that even if multiple statements
    #   allow the action on the resource, if only one statement denies that
    #   action, then the explicit deny overrides any allow, and the deny
    #   statement is the only entry included in the result.
    #   @return [Array<Types::Statement>]
    #
    # @!attribute [rw] missing_context_values
    #   A list of context keys that are required by the included input
    #   policies but that were not provided by one of the input parameters.
    #   This list is used when the resource in a simulation is "*",
    #   either explicitly, or when the `ResourceArns` parameter blank. If
    #   you include a list of resources, then any missing context values are
    #   instead included under the `ResourceSpecificResults` section. To
    #   discover the context keys used by a set of policies, you can call
    #   GetContextKeysForCustomPolicy or GetContextKeysForPrincipalPolicy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] organizations_decision_detail
    #   A structure that details how AWS Organizations and its service
    #   control policies affect the results of the simulation. Only applies
    #   if the simulated user's account is part of an organization.
    #   @return [Types::OrganizationsDecisionDetail]
    #
    # @!attribute [rw] eval_decision_details
    #   Additional details about the results of the evaluation decision.
    #   When there are both IAM policies and resource policies, this
    #   parameter explains how each set of policies contributes to the final
    #   evaluation decision. When simulating cross-account access to a
    #   resource, both the resource-based policy and the caller's IAM
    #   policy must grant access. See [How IAM Roles Differ from
    #   Resource-based Policies][1]
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_compare-resource-policies.html
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] resource_specific_results
    #   The individual results of the simulation of the API action specified
    #   in EvalActionName on each resource.
    #   @return [Array<Types::ResourceSpecificResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/EvaluationResult AWS API Documentation
    #
    class EvaluationResult < Struct.new(
      :eval_action_name,
      :eval_resource_name,
      :eval_decision,
      :matched_statements,
      :missing_context_values,
      :organizations_decision_detail,
      :eval_decision_details,
      :resource_specific_results)
      include Aws::Structure
    end

    # Contains the response to a successful GenerateCredentialReport
    # request.
    #
    # @!attribute [rw] state
    #   Information about the state of the credential report.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   Information about the credential report.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GenerateCredentialReportResponse AWS API Documentation
    #
    class GenerateCredentialReportResponse < Struct.new(
      :state,
      :description)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAccessKeyLastUsedRequest
    #   data as a hash:
    #
    #       {
    #         access_key_id: "accessKeyIdType", # required
    #       }
    #
    # @!attribute [rw] access_key_id
    #   The identifier of an access key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccessKeyLastUsedRequest AWS API Documentation
    #
    class GetAccessKeyLastUsedRequest < Struct.new(
      :access_key_id)
      include Aws::Structure
    end

    # Contains the response to a successful GetAccessKeyLastUsed request. It
    # is also returned as a member of the AccessKeyMetaData structure
    # returned by the ListAccessKeys action.
    #
    # @!attribute [rw] user_name
    #   The name of the AWS IAM user that owns this access key.
    #   @return [String]
    #
    # @!attribute [rw] access_key_last_used
    #   Contains information about the last time the access key was used.
    #   @return [Types::AccessKeyLastUsed]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccessKeyLastUsedResponse AWS API Documentation
    #
    class GetAccessKeyLastUsedResponse < Struct.new(
      :user_name,
      :access_key_last_used)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetAccountAuthorizationDetailsRequest
    #   data as a hash:
    #
    #       {
    #         filter: ["User"], # accepts User, Role, Group, LocalManagedPolicy, AWSManagedPolicy
    #         max_items: 1,
    #         marker: "markerType",
    #       }
    #
    # @!attribute [rw] filter
    #   A list of entity types used to filter the results. Only the entities
    #   that match the types you specify are included in the output. Use the
    #   value `LocalManagedPolicy` to include customer managed policies.
    #
    #   The format for this parameter is a comma-separated (if more than
    #   one) list of strings. Each string value in the list must be one of
    #   the valid values listed below.
    #   @return [Array<String>]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountAuthorizationDetailsRequest AWS API Documentation
    #
    class GetAccountAuthorizationDetailsRequest < Struct.new(
      :filter,
      :max_items,
      :marker)
      include Aws::Structure
    end

    # Contains the response to a successful GetAccountAuthorizationDetails
    # request.
    #
    # @!attribute [rw] user_detail_list
    #   A list containing information about IAM users.
    #   @return [Array<Types::UserDetail>]
    #
    # @!attribute [rw] group_detail_list
    #   A list containing information about IAM groups.
    #   @return [Array<Types::GroupDetail>]
    #
    # @!attribute [rw] role_detail_list
    #   A list containing information about IAM roles.
    #   @return [Array<Types::RoleDetail>]
    #
    # @!attribute [rw] policies
    #   A list containing information about managed policies.
    #   @return [Array<Types::ManagedPolicyDetail>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountAuthorizationDetailsResponse AWS API Documentation
    #
    class GetAccountAuthorizationDetailsResponse < Struct.new(
      :user_detail_list,
      :group_detail_list,
      :role_detail_list,
      :policies,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # Contains the response to a successful GetAccountPasswordPolicy
    # request.
    #
    # @!attribute [rw] password_policy
    #   A structure that contains details about the account's password
    #   policy.
    #   @return [Types::PasswordPolicy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountPasswordPolicyResponse AWS API Documentation
    #
    class GetAccountPasswordPolicyResponse < Struct.new(
      :password_policy)
      include Aws::Structure
    end

    # Contains the response to a successful GetAccountSummary request.
    #
    # @!attribute [rw] summary_map
    #   A set of key value pairs containing information about IAM entity
    #   usage and IAM quotas.
    #   @return [Hash<String,Integer>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetAccountSummaryResponse AWS API Documentation
    #
    class GetAccountSummaryResponse < Struct.new(
      :summary_map)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetContextKeysForCustomPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_input_list: ["policyDocumentType"], # required
    #       }
    #
    # @!attribute [rw] policy_input_list
    #   A list of policies for which you want the list of context keys
    #   referenced in those policies. Each document is specified as a string
    #   containing the complete, valid JSON text of an IAM policy.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetContextKeysForCustomPolicyRequest AWS API Documentation
    #
    class GetContextKeysForCustomPolicyRequest < Struct.new(
      :policy_input_list)
      include Aws::Structure
    end

    # Contains the response to a successful GetContextKeysForPrincipalPolicy
    # or GetContextKeysForCustomPolicy request.
    #
    # @!attribute [rw] context_key_names
    #   The list of context keys that are referenced in the input policies.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetContextKeysForPolicyResponse AWS API Documentation
    #
    class GetContextKeysForPolicyResponse < Struct.new(
      :context_key_names)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetContextKeysForPrincipalPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_source_arn: "arnType", # required
    #         policy_input_list: ["policyDocumentType"],
    #       }
    #
    # @!attribute [rw] policy_source_arn
    #   The ARN of a user, group, or role whose policies contain the context
    #   keys that you want listed. If you specify a user, the list includes
    #   context keys that are found in all policies attached to the user as
    #   well as to all groups that the user is a member of. If you pick a
    #   group or a role, then it includes only those context keys that are
    #   found in policies attached to that entity. Note that all parameters
    #   are shown in unencoded form here for clarity, but must be URL
    #   encoded to be included as a part of a real HTML request.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] policy_input_list
    #   An optional list of additional policies for which you want the list
    #   of context keys that are referenced.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetContextKeysForPrincipalPolicyRequest AWS API Documentation
    #
    class GetContextKeysForPrincipalPolicyRequest < Struct.new(
      :policy_source_arn,
      :policy_input_list)
      include Aws::Structure
    end

    # Contains the response to a successful GetCredentialReport request.
    #
    # @!attribute [rw] content
    #   Contains the credential report. The report is Base64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] report_format
    #   The format (MIME type) of the credential report.
    #   @return [String]
    #
    # @!attribute [rw] generated_time
    #   The date and time when the credential report was created, in [ISO
    #   8601 date-time format][1].
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetCredentialReportResponse AWS API Documentation
    #
    class GetCredentialReportResponse < Struct.new(
      :content,
      :report_format,
      :generated_time)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupPolicyRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "groupNameType", # required
    #         policy_name: "policyNameType", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group the policy is associated with.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy document to get.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetGroupPolicyRequest AWS API Documentation
    #
    class GetGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_name)
      include Aws::Structure
    end

    # Contains the response to a successful GetGroupPolicy request.
    #
    # @!attribute [rw] group_name
    #   The group the policy is associated with.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetGroupPolicyResponse AWS API Documentation
    #
    class GetGroupPolicyResponse < Struct.new(
      :group_name,
      :policy_name,
      :policy_document)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "groupNameType", # required
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetGroupRequest AWS API Documentation
    #
    class GetGroupRequest < Struct.new(
      :group_name,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful GetGroup request.
    #
    # @!attribute [rw] group
    #   A structure that contains details about the group.
    #   @return [Types::Group]
    #
    # @!attribute [rw] users
    #   A list of users in the group.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetGroupResponse AWS API Documentation
    #
    class GetGroupResponse < Struct.new(
      :group,
      :users,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetInstanceProfileRequest
    #   data as a hash:
    #
    #       {
    #         instance_profile_name: "instanceProfileNameType", # required
    #       }
    #
    # @!attribute [rw] instance_profile_name
    #   The name of the instance profile to get information about.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetInstanceProfileRequest AWS API Documentation
    #
    class GetInstanceProfileRequest < Struct.new(
      :instance_profile_name)
      include Aws::Structure
    end

    # Contains the response to a successful GetInstanceProfile request.
    #
    # @!attribute [rw] instance_profile
    #   A structure containing details about the instance profile.
    #   @return [Types::InstanceProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetInstanceProfileResponse AWS API Documentation
    #
    class GetInstanceProfileResponse < Struct.new(
      :instance_profile)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLoginProfileRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user whose login profile you want to retrieve.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetLoginProfileRequest AWS API Documentation
    #
    class GetLoginProfileRequest < Struct.new(
      :user_name)
      include Aws::Structure
    end

    # Contains the response to a successful GetLoginProfile request.
    #
    # @!attribute [rw] login_profile
    #   A structure containing the user name and password create date for
    #   the user.
    #   @return [Types::LoginProfile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetLoginProfileResponse AWS API Documentation
    #
    class GetLoginProfileResponse < Struct.new(
      :login_profile)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOpenIDConnectProviderRequest
    #   data as a hash:
    #
    #       {
    #         open_id_connect_provider_arn: "arnType", # required
    #       }
    #
    # @!attribute [rw] open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the OIDC provider resource object
    #   in IAM to get information for. You can get a list of OIDC provider
    #   resource ARNs by using the ListOpenIDConnectProviders action.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetOpenIDConnectProviderRequest AWS API Documentation
    #
    class GetOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn)
      include Aws::Structure
    end

    # Contains the response to a successful GetOpenIDConnectProvider
    # request.
    #
    # @!attribute [rw] url
    #   The URL that the IAM OIDC provider resource object is associated
    #   with. For more information, see CreateOpenIDConnectProvider.
    #   @return [String]
    #
    # @!attribute [rw] client_id_list
    #   A list of client IDs (also known as audiences) that are associated
    #   with the specified IAM OIDC provider resource object. For more
    #   information, see CreateOpenIDConnectProvider.
    #   @return [Array<String>]
    #
    # @!attribute [rw] thumbprint_list
    #   A list of certificate thumbprints that are associated with the
    #   specified IAM OIDC provider resource object. For more information,
    #   see CreateOpenIDConnectProvider.
    #   @return [Array<String>]
    #
    # @!attribute [rw] create_date
    #   The date and time when the IAM OIDC provider resource object was
    #   created in the AWS account.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetOpenIDConnectProviderResponse AWS API Documentation
    #
    class GetOpenIDConnectProviderResponse < Struct.new(
      :url,
      :client_id_list,
      :thumbprint_list,
      :create_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_arn: "arnType", # required
    #       }
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the managed policy that you want
    #   information about.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetPolicyRequest AWS API Documentation
    #
    class GetPolicyRequest < Struct.new(
      :policy_arn)
      include Aws::Structure
    end

    # Contains the response to a successful GetPolicy request.
    #
    # @!attribute [rw] policy
    #   A structure containing details about the policy.
    #   @return [Types::Policy]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetPolicyResponse AWS API Documentation
    #
    class GetPolicyResponse < Struct.new(
      :policy)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPolicyVersionRequest
    #   data as a hash:
    #
    #       {
    #         policy_arn: "arnType", # required
    #         version_id: "policyVersionIdType", # required
    #       }
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the managed policy that you want
    #   information about.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   Identifies the policy version to retrieve.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that consists of the lowercase letter 'v' followed by
    #   one or two digits, and optionally followed by a period '.' and a
    #   string of letters and digits.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetPolicyVersionRequest AWS API Documentation
    #
    class GetPolicyVersionRequest < Struct.new(
      :policy_arn,
      :version_id)
      include Aws::Structure
    end

    # Contains the response to a successful GetPolicyVersion request.
    #
    # @!attribute [rw] policy_version
    #   A structure containing details about the policy version.
    #   @return [Types::PolicyVersion]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetPolicyVersionResponse AWS API Documentation
    #
    class GetPolicyVersionResponse < Struct.new(
      :policy_version)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRolePolicyRequest
    #   data as a hash:
    #
    #       {
    #         role_name: "roleNameType", # required
    #         policy_name: "policyNameType", # required
    #       }
    #
    # @!attribute [rw] role_name
    #   The name of the role associated with the policy.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy document to get.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetRolePolicyRequest AWS API Documentation
    #
    class GetRolePolicyRequest < Struct.new(
      :role_name,
      :policy_name)
      include Aws::Structure
    end

    # Contains the response to a successful GetRolePolicy request.
    #
    # @!attribute [rw] role_name
    #   The role the policy is associated with.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetRolePolicyResponse AWS API Documentation
    #
    class GetRolePolicyResponse < Struct.new(
      :role_name,
      :policy_name,
      :policy_document)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRoleRequest
    #   data as a hash:
    #
    #       {
    #         role_name: "roleNameType", # required
    #       }
    #
    # @!attribute [rw] role_name
    #   The name of the IAM role to get information about.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetRoleRequest AWS API Documentation
    #
    class GetRoleRequest < Struct.new(
      :role_name)
      include Aws::Structure
    end

    # Contains the response to a successful GetRole request.
    #
    # @!attribute [rw] role
    #   A structure containing details about the IAM role.
    #   @return [Types::Role]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetRoleResponse AWS API Documentation
    #
    class GetRoleResponse < Struct.new(
      :role)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSAMLProviderRequest
    #   data as a hash:
    #
    #       {
    #         saml_provider_arn: "arnType", # required
    #       }
    #
    # @!attribute [rw] saml_provider_arn
    #   The Amazon Resource Name (ARN) of the SAML provider resource object
    #   in IAM to get information about.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetSAMLProviderRequest AWS API Documentation
    #
    class GetSAMLProviderRequest < Struct.new(
      :saml_provider_arn)
      include Aws::Structure
    end

    # Contains the response to a successful GetSAMLProvider request.
    #
    # @!attribute [rw] saml_metadata_document
    #   The XML metadata document that includes information about an
    #   identity provider.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time when the SAML provider was created.
    #   @return [Time]
    #
    # @!attribute [rw] valid_until
    #   The expiration date and time for the SAML provider.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetSAMLProviderResponse AWS API Documentation
    #
    class GetSAMLProviderResponse < Struct.new(
      :saml_metadata_document,
      :create_date,
      :valid_until)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSSHPublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType", # required
    #         ssh_public_key_id: "publicKeyIdType", # required
    #         encoding: "SSH", # required, accepts SSH, PEM
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the SSH public key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   The unique identifier for the SSH public key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] encoding
    #   Specifies the public key encoding format to use in the response. To
    #   retrieve the public key in ssh-rsa format, use `SSH`. To retrieve
    #   the public key in PEM format, use `PEM`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetSSHPublicKeyRequest AWS API Documentation
    #
    class GetSSHPublicKeyRequest < Struct.new(
      :user_name,
      :ssh_public_key_id,
      :encoding)
      include Aws::Structure
    end

    # Contains the response to a successful GetSSHPublicKey request.
    #
    # @!attribute [rw] ssh_public_key
    #   A structure containing details about the SSH public key.
    #   @return [Types::SSHPublicKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetSSHPublicKeyResponse AWS API Documentation
    #
    class GetSSHPublicKeyResponse < Struct.new(
      :ssh_public_key)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetServerCertificateRequest
    #   data as a hash:
    #
    #       {
    #         server_certificate_name: "serverCertificateNameType", # required
    #       }
    #
    # @!attribute [rw] server_certificate_name
    #   The name of the server certificate you want to retrieve information
    #   about.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetServerCertificateRequest AWS API Documentation
    #
    class GetServerCertificateRequest < Struct.new(
      :server_certificate_name)
      include Aws::Structure
    end

    # Contains the response to a successful GetServerCertificate request.
    #
    # @!attribute [rw] server_certificate
    #   A structure containing details about the server certificate.
    #   @return [Types::ServerCertificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetServerCertificateResponse AWS API Documentation
    #
    class GetServerCertificateResponse < Struct.new(
      :server_certificate)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUserPolicyRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType", # required
    #         policy_name: "policyNameType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user who the policy is associated with.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy document to get.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetUserPolicyRequest AWS API Documentation
    #
    class GetUserPolicyRequest < Struct.new(
      :user_name,
      :policy_name)
      include Aws::Structure
    end

    # Contains the response to a successful GetUserPolicy request.
    #
    # @!attribute [rw] user_name
    #   The user the policy is associated with.
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetUserPolicyResponse AWS API Documentation
    #
    class GetUserPolicyResponse < Struct.new(
      :user_name,
      :policy_name,
      :policy_document)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType",
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user to get information about.
    #
    #   This parameter is optional. If it is not included, it defaults to
    #   the user making the request. This parameter allows (per its [regex
    #   pattern][1]) a string of characters consisting of upper and
    #   lowercase alphanumeric characters with no spaces. You can also
    #   include any of the following characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetUserRequest AWS API Documentation
    #
    class GetUserRequest < Struct.new(
      :user_name)
      include Aws::Structure
    end

    # Contains the response to a successful GetUser request.
    #
    # @!attribute [rw] user
    #   A structure containing details about the IAM user.
    #   @return [Types::User]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GetUserResponse AWS API Documentation
    #
    class GetUserResponse < Struct.new(
      :user)
      include Aws::Structure
    end

    # Contains information about an IAM group entity.
    #
    # This data type is used as a response element in the following actions:
    #
    # * CreateGroup
    #
    # * GetGroup
    #
    # * ListGroups
    #
    # @!attribute [rw] path
    #   The path to the group. For more information about paths, see [IAM
    #   Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The friendly name that identifies the group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The stable and unique string identifying the group. For more
    #   information about IDs, see [IAM Identifiers][1] in the *Using IAM*
    #   guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) specifying the group. For more
    #   information about ARNs and how to use them in policies, see [IAM
    #   Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the group
    #   was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/Group AWS API Documentation
    #
    class Group < Struct.new(
      :path,
      :group_name,
      :group_id,
      :arn,
      :create_date)
      include Aws::Structure
    end

    # Contains information about an IAM group, including all of the group's
    # policies.
    #
    # This data type is used as a response element in the
    # GetAccountAuthorizationDetails action.
    #
    # @!attribute [rw] path
    #   The path to the group. For more information about paths, see [IAM
    #   Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   The friendly name that identifies the group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The stable and unique string identifying the group. For more
    #   information about IDs, see [IAM Identifiers][1] in the *Using IAM*
    #   guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
    #   resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the group
    #   was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] group_policy_list
    #   A list of the inline policies embedded in the group.
    #   @return [Array<Types::PolicyDetail>]
    #
    # @!attribute [rw] attached_managed_policies
    #   A list of the managed policies attached to the group.
    #   @return [Array<Types::AttachedPolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/GroupDetail AWS API Documentation
    #
    class GroupDetail < Struct.new(
      :path,
      :group_name,
      :group_id,
      :arn,
      :create_date,
      :group_policy_list,
      :attached_managed_policies)
      include Aws::Structure
    end

    # Contains information about an instance profile.
    #
    # This data type is used as a response element in the following actions:
    #
    # * CreateInstanceProfile
    #
    # * GetInstanceProfile
    #
    # * ListInstanceProfiles
    #
    # * ListInstanceProfilesForRole
    #
    # @!attribute [rw] path
    #   The path to the instance profile. For more information about paths,
    #   see [IAM Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_name
    #   The name identifying the instance profile.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_id
    #   The stable and unique string identifying the instance profile. For
    #   more information about IDs, see [IAM Identifiers][1] in the *Using
    #   IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) specifying the instance profile. For
    #   more information about ARNs and how to use them in policies, see
    #   [IAM Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date when the instance profile was created.
    #   @return [Time]
    #
    # @!attribute [rw] roles
    #   The role associated with the instance profile.
    #   @return [Array<Types::Role>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/InstanceProfile AWS API Documentation
    #
    class InstanceProfile < Struct.new(
      :path,
      :instance_profile_name,
      :instance_profile_id,
      :arn,
      :create_date,
      :roles)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAccessKeysRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAccessKeysRequest AWS API Documentation
    #
    class ListAccessKeysRequest < Struct.new(
      :user_name,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListAccessKeys request.
    #
    # @!attribute [rw] access_key_metadata
    #   A list of objects containing metadata about the access keys.
    #   @return [Array<Types::AccessKeyMetadata>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAccessKeysResponse AWS API Documentation
    #
    class ListAccessKeysResponse < Struct.new(
      :access_key_metadata,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAccountAliasesRequest
    #   data as a hash:
    #
    #       {
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAccountAliasesRequest AWS API Documentation
    #
    class ListAccountAliasesRequest < Struct.new(
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListAccountAliases request.
    #
    # @!attribute [rw] account_aliases
    #   A list of aliases associated with the account. AWS supports only one
    #   alias per account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAccountAliasesResponse AWS API Documentation
    #
    class ListAccountAliasesResponse < Struct.new(
      :account_aliases,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAttachedGroupPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "groupNameType", # required
    #         path_prefix: "policyPathType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] group_name
    #   The name (friendly name, not ARN) of the group to list attached
    #   policies for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. This parameter is
    #   optional. If it is not included, it defaults to a slash (/), listing
    #   all policies.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character
    #   (\\u007F), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedGroupPoliciesRequest AWS API Documentation
    #
    class ListAttachedGroupPoliciesRequest < Struct.new(
      :group_name,
      :path_prefix,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListAttachedGroupPolicies
    # request.
    #
    # @!attribute [rw] attached_policies
    #   A list of the attached policies.
    #   @return [Array<Types::AttachedPolicy>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedGroupPoliciesResponse AWS API Documentation
    #
    class ListAttachedGroupPoliciesResponse < Struct.new(
      :attached_policies,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAttachedRolePoliciesRequest
    #   data as a hash:
    #
    #       {
    #         role_name: "roleNameType", # required
    #         path_prefix: "policyPathType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] role_name
    #   The name (friendly name, not ARN) of the role to list attached
    #   policies for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. This parameter is
    #   optional. If it is not included, it defaults to a slash (/), listing
    #   all policies.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character
    #   (\\u007F), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedRolePoliciesRequest AWS API Documentation
    #
    class ListAttachedRolePoliciesRequest < Struct.new(
      :role_name,
      :path_prefix,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListAttachedRolePolicies
    # request.
    #
    # @!attribute [rw] attached_policies
    #   A list of the attached policies.
    #   @return [Array<Types::AttachedPolicy>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedRolePoliciesResponse AWS API Documentation
    #
    class ListAttachedRolePoliciesResponse < Struct.new(
      :attached_policies,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListAttachedUserPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType", # required
    #         path_prefix: "policyPathType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] user_name
    #   The name (friendly name, not ARN) of the user to list attached
    #   policies for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. This parameter is
    #   optional. If it is not included, it defaults to a slash (/), listing
    #   all policies.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character
    #   (\\u007F), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedUserPoliciesRequest AWS API Documentation
    #
    class ListAttachedUserPoliciesRequest < Struct.new(
      :user_name,
      :path_prefix,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListAttachedUserPolicies
    # request.
    #
    # @!attribute [rw] attached_policies
    #   A list of the attached policies.
    #   @return [Array<Types::AttachedPolicy>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListAttachedUserPoliciesResponse AWS API Documentation
    #
    class ListAttachedUserPoliciesResponse < Struct.new(
      :attached_policies,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListEntitiesForPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_arn: "arnType", # required
    #         entity_filter: "User", # accepts User, Role, Group, LocalManagedPolicy, AWSManagedPolicy
    #         path_prefix: "pathType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy for which you want
    #   the versions.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] entity_filter
    #   The entity type to use for filtering the results.
    #
    #   For example, when `EntityFilter` is `Role`, only the roles that are
    #   attached to the specified policy are returned. This parameter is
    #   optional. If it is not included, all attached entities (users,
    #   groups, and roles) are returned. The argument for this parameter
    #   must be one of the valid values listed below.
    #   @return [String]
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. This parameter is
    #   optional. If it is not included, it defaults to a slash (/), listing
    #   all entities.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character
    #   (\\u007F), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListEntitiesForPolicyRequest AWS API Documentation
    #
    class ListEntitiesForPolicyRequest < Struct.new(
      :policy_arn,
      :entity_filter,
      :path_prefix,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListEntitiesForPolicy request.
    #
    # @!attribute [rw] policy_groups
    #   A list of IAM groups that the policy is attached to.
    #   @return [Array<Types::PolicyGroup>]
    #
    # @!attribute [rw] policy_users
    #   A list of IAM users that the policy is attached to.
    #   @return [Array<Types::PolicyUser>]
    #
    # @!attribute [rw] policy_roles
    #   A list of IAM roles that the policy is attached to.
    #   @return [Array<Types::PolicyRole>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListEntitiesForPolicyResponse AWS API Documentation
    #
    class ListEntitiesForPolicyResponse < Struct.new(
      :policy_groups,
      :policy_users,
      :policy_roles,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "groupNameType", # required
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group to list policies for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupPoliciesRequest AWS API Documentation
    #
    class ListGroupPoliciesRequest < Struct.new(
      :group_name,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListGroupPolicies request.
    #
    # @!attribute [rw] policy_names
    #   A list of policy names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupPoliciesResponse AWS API Documentation
    #
    class ListGroupPoliciesResponse < Struct.new(
      :policy_names,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupsForUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType", # required
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user to list groups for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupsForUserRequest AWS API Documentation
    #
    class ListGroupsForUserRequest < Struct.new(
      :user_name,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListGroupsForUser request.
    #
    # @!attribute [rw] groups
    #   A list of groups.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupsForUserResponse AWS API Documentation
    #
    class ListGroupsForUserResponse < Struct.new(
      :groups,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListGroupsRequest
    #   data as a hash:
    #
    #       {
    #         path_prefix: "pathPrefixType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. For example, the prefix
    #   `/division_abc/subdivision_xyz/` gets all groups whose path starts
    #   with `/division_abc/subdivision_xyz/`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all groups. This paramater allows (per its [regex
    #   pattern][1]) a string of characters consisting of either a forward
    #   slash (/) by itself or a string that must begin and end with forward
    #   slashes, containing any ASCII character from the ! (\\u0021) thru
    #   the DEL character (\\u007F), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupsRequest AWS API Documentation
    #
    class ListGroupsRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListGroups request.
    #
    # @!attribute [rw] groups
    #   A list of groups.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListGroupsResponse AWS API Documentation
    #
    class ListGroupsResponse < Struct.new(
      :groups,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInstanceProfilesForRoleRequest
    #   data as a hash:
    #
    #       {
    #         role_name: "roleNameType", # required
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] role_name
    #   The name of the role to list instance profiles for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfilesForRoleRequest AWS API Documentation
    #
    class ListInstanceProfilesForRoleRequest < Struct.new(
      :role_name,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListInstanceProfilesForRole
    # request.
    #
    # @!attribute [rw] instance_profiles
    #   A list of instance profiles.
    #   @return [Array<Types::InstanceProfile>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfilesForRoleResponse AWS API Documentation
    #
    class ListInstanceProfilesForRoleResponse < Struct.new(
      :instance_profiles,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListInstanceProfilesRequest
    #   data as a hash:
    #
    #       {
    #         path_prefix: "pathPrefixType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. For example, the prefix
    #   `/application_abc/component_xyz/` gets all instance profiles whose
    #   path starts with `/application_abc/component_xyz/`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all instance profiles. This paramater allows (per
    #   its [regex pattern][1]) a string of characters consisting of either
    #   a forward slash (/) by itself or a string that must begin and end
    #   with forward slashes, containing any ASCII character from the !
    #   (\\u0021) thru the DEL character (\\u007F), including most
    #   punctuation characters, digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfilesRequest AWS API Documentation
    #
    class ListInstanceProfilesRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListInstanceProfiles request.
    #
    # @!attribute [rw] instance_profiles
    #   A list of instance profiles.
    #   @return [Array<Types::InstanceProfile>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListInstanceProfilesResponse AWS API Documentation
    #
    class ListInstanceProfilesResponse < Struct.new(
      :instance_profiles,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListMFADevicesRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user whose MFA devices you want to list.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListMFADevicesRequest AWS API Documentation
    #
    class ListMFADevicesRequest < Struct.new(
      :user_name,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListMFADevices request.
    #
    # @!attribute [rw] mfa_devices
    #   A list of MFA devices.
    #   @return [Array<Types::MFADevice>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListMFADevicesResponse AWS API Documentation
    #
    class ListMFADevicesResponse < Struct.new(
      :mfa_devices,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListOpenIDConnectProvidersRequest AWS API Documentation
    #
    class ListOpenIDConnectProvidersRequest < Aws::EmptyStructure; end

    # Contains the response to a successful ListOpenIDConnectProviders
    # request.
    #
    # @!attribute [rw] open_id_connect_provider_list
    #   The list of IAM OIDC provider resource objects defined in the AWS
    #   account.
    #   @return [Array<Types::OpenIDConnectProviderListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListOpenIDConnectProvidersResponse AWS API Documentation
    #
    class ListOpenIDConnectProvidersResponse < Struct.new(
      :open_id_connect_provider_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         scope: "All", # accepts All, AWS, Local
    #         only_attached: false,
    #         path_prefix: "policyPathType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] scope
    #   The scope to use for filtering the results.
    #
    #   To list only AWS managed policies, set `Scope` to `AWS`. To list
    #   only the customer managed policies in your AWS account, set `Scope`
    #   to `Local`.
    #
    #   This parameter is optional. If it is not included, or if it is set
    #   to `All`, all policies are returned.
    #   @return [String]
    #
    # @!attribute [rw] only_attached
    #   A flag to filter the results to only the attached policies.
    #
    #   When `OnlyAttached` is `true`, the returned list contains only the
    #   policies that are attached to an IAM user, group, or role. When
    #   `OnlyAttached` is `false`, or when the parameter is not included,
    #   all policies are returned.
    #   @return [Boolean]
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. This parameter is
    #   optional. If it is not included, it defaults to a slash (/), listing
    #   all policies. This paramater allows (per its [regex pattern][1]) a
    #   string of characters consisting of either a forward slash (/) by
    #   itself or a string that must begin and end with forward slashes,
    #   containing any ASCII character from the ! (\\u0021) thru the DEL
    #   character (\\u007F), including most punctuation characters, digits,
    #   and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPoliciesRequest AWS API Documentation
    #
    class ListPoliciesRequest < Struct.new(
      :scope,
      :only_attached,
      :path_prefix,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListPolicies request.
    #
    # @!attribute [rw] policies
    #   A list of policies.
    #   @return [Array<Types::Policy>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPoliciesResponse AWS API Documentation
    #
    class ListPoliciesResponse < Struct.new(
      :policies,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListPolicyVersionsRequest
    #   data as a hash:
    #
    #       {
    #         policy_arn: "arnType", # required
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy for which you want
    #   the versions.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPolicyVersionsRequest AWS API Documentation
    #
    class ListPolicyVersionsRequest < Struct.new(
      :policy_arn,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListPolicyVersions request.
    #
    # @!attribute [rw] versions
    #   A list of policy versions.
    #
    #   For more information about managed policy versions, see [Versioning
    #   for Managed Policies][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #   @return [Array<Types::PolicyVersion>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListPolicyVersionsResponse AWS API Documentation
    #
    class ListPolicyVersionsResponse < Struct.new(
      :versions,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRolePoliciesRequest
    #   data as a hash:
    #
    #       {
    #         role_name: "roleNameType", # required
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] role_name
    #   The name of the role to list policies for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRolePoliciesRequest AWS API Documentation
    #
    class ListRolePoliciesRequest < Struct.new(
      :role_name,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListRolePolicies request.
    #
    # @!attribute [rw] policy_names
    #   A list of policy names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRolePoliciesResponse AWS API Documentation
    #
    class ListRolePoliciesResponse < Struct.new(
      :policy_names,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListRolesRequest
    #   data as a hash:
    #
    #       {
    #         path_prefix: "pathPrefixType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. For example, the prefix
    #   `/application_abc/component_xyz/` gets all roles whose path starts
    #   with `/application_abc/component_xyz/`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all roles. This paramater allows (per its [regex
    #   pattern][1]) a string of characters consisting of either a forward
    #   slash (/) by itself or a string that must begin and end with forward
    #   slashes, containing any ASCII character from the ! (\\u0021) thru
    #   the DEL character (\\u007F), including most punctuation characters,
    #   digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRolesRequest AWS API Documentation
    #
    class ListRolesRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListRoles request.
    #
    # @!attribute [rw] roles
    #   A list of roles.
    #   @return [Array<Types::Role>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListRolesResponse AWS API Documentation
    #
    class ListRolesResponse < Struct.new(
      :roles,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSAMLProvidersRequest AWS API Documentation
    #
    class ListSAMLProvidersRequest < Aws::EmptyStructure; end

    # Contains the response to a successful ListSAMLProviders request.
    #
    # @!attribute [rw] saml_provider_list
    #   The list of SAML provider resource objects defined in IAM for this
    #   AWS account.
    #   @return [Array<Types::SAMLProviderListEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSAMLProvidersResponse AWS API Documentation
    #
    class ListSAMLProvidersResponse < Struct.new(
      :saml_provider_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSSHPublicKeysRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user to list SSH public keys for. If none is
    #   specified, the UserName field is determined implicitly based on the
    #   AWS access key used to sign the request.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSSHPublicKeysRequest AWS API Documentation
    #
    class ListSSHPublicKeysRequest < Struct.new(
      :user_name,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListSSHPublicKeys request.
    #
    # @!attribute [rw] ssh_public_keys
    #   A list of the SSH public keys assigned to IAM user.
    #   @return [Array<Types::SSHPublicKeyMetadata>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSSHPublicKeysResponse AWS API Documentation
    #
    class ListSSHPublicKeysResponse < Struct.new(
      :ssh_public_keys,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServerCertificatesRequest
    #   data as a hash:
    #
    #       {
    #         path_prefix: "pathPrefixType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. For example:
    #   `/company/servercerts` would get all server certificates for which
    #   the path starts with `/company/servercerts`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all server certificates. This paramater allows
    #   (per its [regex pattern][1]) a string of characters consisting of
    #   either a forward slash (/) by itself or a string that must begin and
    #   end with forward slashes, containing any ASCII character from the !
    #   (\\u0021) thru the DEL character (\\u007F), including most
    #   punctuation characters, digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServerCertificatesRequest AWS API Documentation
    #
    class ListServerCertificatesRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListServerCertificates request.
    #
    # @!attribute [rw] server_certificate_metadata_list
    #   A list of server certificates.
    #   @return [Array<Types::ServerCertificateMetadata>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServerCertificatesResponse AWS API Documentation
    #
    class ListServerCertificatesResponse < Struct.new(
      :server_certificate_metadata_list,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListServiceSpecificCredentialsRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType",
    #         service_name: "serviceName",
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user whose service-specific credentials you want
    #   information about. If this value is not specified then the operation
    #   assumes the user whose credentials are used to call the operation.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   Filters the returned results to only those for the specified AWS
    #   service. If not specified, then AWS returns service-specific
    #   credentials for all services.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServiceSpecificCredentialsRequest AWS API Documentation
    #
    class ListServiceSpecificCredentialsRequest < Struct.new(
      :user_name,
      :service_name)
      include Aws::Structure
    end

    # @!attribute [rw] service_specific_credentials
    #   A list of structures that each contain details about a
    #   service-specific credential.
    #   @return [Array<Types::ServiceSpecificCredentialMetadata>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListServiceSpecificCredentialsResponse AWS API Documentation
    #
    class ListServiceSpecificCredentialsResponse < Struct.new(
      :service_specific_credentials)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSigningCertificatesRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user whose signing certificates you want to
    #   examine.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSigningCertificatesRequest AWS API Documentation
    #
    class ListSigningCertificatesRequest < Struct.new(
      :user_name,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListSigningCertificates request.
    #
    # @!attribute [rw] certificates
    #   A list of the user's signing certificate information.
    #   @return [Array<Types::SigningCertificate>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListSigningCertificatesResponse AWS API Documentation
    #
    class ListSigningCertificatesResponse < Struct.new(
      :certificates,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUserPoliciesRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType", # required
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user to list policies for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUserPoliciesRequest AWS API Documentation
    #
    class ListUserPoliciesRequest < Struct.new(
      :user_name,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListUserPolicies request.
    #
    # @!attribute [rw] policy_names
    #   A list of policy names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUserPoliciesResponse AWS API Documentation
    #
    class ListUserPoliciesResponse < Struct.new(
      :policy_names,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListUsersRequest
    #   data as a hash:
    #
    #       {
    #         path_prefix: "pathPrefixType",
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] path_prefix
    #   The path prefix for filtering the results. For example:
    #   `/division_abc/subdivision_xyz/`, which would get all user names
    #   whose path starts with `/division_abc/subdivision_xyz/`.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/), listing all user names. This paramater allows (per its
    #   [regex pattern][1]) a string of characters consisting of either a
    #   forward slash (/) by itself or a string that must begin and end with
    #   forward slashes, containing any ASCII character from the ! (\\u0021)
    #   thru the DEL character (\\u007F), including most punctuation
    #   characters, digits, and upper and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUsersRequest AWS API Documentation
    #
    class ListUsersRequest < Struct.new(
      :path_prefix,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListUsers request.
    #
    # @!attribute [rw] users
    #   A list of users.
    #   @return [Array<Types::User>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListUsersResponse AWS API Documentation
    #
    class ListUsersResponse < Struct.new(
      :users,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListVirtualMFADevicesRequest
    #   data as a hash:
    #
    #       {
    #         assignment_status: "Assigned", # accepts Assigned, Unassigned, Any
    #         marker: "markerType",
    #         max_items: 1,
    #       }
    #
    # @!attribute [rw] assignment_status
    #   The status (`Unassigned` or `Assigned`) of the devices to list. If
    #   you do not specify an `AssignmentStatus`, the action defaults to
    #   `Any` which lists both assigned and unassigned virtual MFA devices.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListVirtualMFADevicesRequest AWS API Documentation
    #
    class ListVirtualMFADevicesRequest < Struct.new(
      :assignment_status,
      :marker,
      :max_items)
      include Aws::Structure
    end

    # Contains the response to a successful ListVirtualMFADevices request.
    #
    # @!attribute [rw] virtual_mfa_devices
    #   The list of virtual MFA devices in the current account that match
    #   the `AssignmentStatus` value that was passed in the request.
    #   @return [Array<Types::VirtualMFADevice>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ListVirtualMFADevicesResponse AWS API Documentation
    #
    class ListVirtualMFADevicesResponse < Struct.new(
      :virtual_mfa_devices,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # Contains the user name and password create date for a user.
    #
    # This data type is used as a response element in the CreateLoginProfile
    # and GetLoginProfile actions.
    #
    # @!attribute [rw] user_name
    #   The name of the user, which can be used for signing in to the AWS
    #   Management Console.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date when the password for the user was created.
    #   @return [Time]
    #
    # @!attribute [rw] password_reset_required
    #   Specifies whether the user is required to set a new password on next
    #   sign-in.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/LoginProfile AWS API Documentation
    #
    class LoginProfile < Struct.new(
      :user_name,
      :create_date,
      :password_reset_required)
      include Aws::Structure
    end

    # Contains information about an MFA device.
    #
    # This data type is used as a response element in the ListMFADevices
    # action.
    #
    # @!attribute [rw] user_name
    #   The user with whom the MFA device is associated.
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   The serial number that uniquely identifies the MFA device. For
    #   virtual MFA devices, the serial number is the device ARN.
    #   @return [String]
    #
    # @!attribute [rw] enable_date
    #   The date when the MFA device was enabled for the user.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/MFADevice AWS API Documentation
    #
    class MFADevice < Struct.new(
      :user_name,
      :serial_number,
      :enable_date)
      include Aws::Structure
    end

    # Contains information about a managed policy, including the policy's
    # ARN, versions, and the number of principal entities (users, groups,
    # and roles) that the policy is attached to.
    #
    # This data type is used as a response element in the
    # GetAccountAuthorizationDetails action.
    #
    # For more information about managed policies, see [Managed Policies and
    # Inline Policies][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] policy_name
    #   The friendly name (not ARN) identifying the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The stable and unique string identifying the policy.
    #
    #   For more information about IDs, see [IAM Identifiers][1] in the
    #   *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
    #   resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the policy.
    #
    #   For more information about paths, see [IAM Identifiers][1] in the
    #   *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] default_version_id
    #   The identifier for the version of the policy that is set as the
    #   default (operative) version.
    #
    #   For more information about policy versions, see [Versioning for
    #   Managed Policies][1] in the *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #   @return [String]
    #
    # @!attribute [rw] attachment_count
    #   The number of principal entities (users, groups, and roles) that the
    #   policy is attached to.
    #   @return [Integer]
    #
    # @!attribute [rw] is_attachable
    #   Specifies whether the policy can be attached to an IAM user, group,
    #   or role.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A friendly description of the policy.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   policy was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   policy was last updated.
    #
    #   When a policy has only one version, this field contains the date and
    #   time when the policy was created. When a policy has more than one
    #   version, this field contains the date and time when the most recent
    #   policy version was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] policy_version_list
    #   A list containing information about the versions of the policy.
    #   @return [Array<Types::PolicyVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ManagedPolicyDetail AWS API Documentation
    #
    class ManagedPolicyDetail < Struct.new(
      :policy_name,
      :policy_id,
      :arn,
      :path,
      :default_version_id,
      :attachment_count,
      :is_attachable,
      :description,
      :create_date,
      :update_date,
      :policy_version_list)
      include Aws::Structure
    end

    # Contains the Amazon Resource Name (ARN) for an IAM OpenID Connect
    # provider.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
    #   resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/OpenIDConnectProviderListEntry AWS API Documentation
    #
    class OpenIDConnectProviderListEntry < Struct.new(
      :arn)
      include Aws::Structure
    end

    # Contains information about AWS Organizations's affect on a policy
    # simulation.
    #
    # @!attribute [rw] allowed_by_organizations
    #   Specifies whether the simulated action is allowed by the AWS
    #   Organizations service control policies that impact the simulated
    #   user's account.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/OrganizationsDecisionDetail AWS API Documentation
    #
    class OrganizationsDecisionDetail < Struct.new(
      :allowed_by_organizations)
      include Aws::Structure
    end

    # Contains information about the account password policy.
    #
    # This data type is used as a response element in the
    # GetAccountPasswordPolicy action.
    #
    # @!attribute [rw] minimum_password_length
    #   Minimum length to require for IAM user passwords.
    #   @return [Integer]
    #
    # @!attribute [rw] require_symbols
    #   Specifies whether to require symbols for IAM user passwords.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_numbers
    #   Specifies whether to require numbers for IAM user passwords.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_uppercase_characters
    #   Specifies whether to require uppercase characters for IAM user
    #   passwords.
    #   @return [Boolean]
    #
    # @!attribute [rw] require_lowercase_characters
    #   Specifies whether to require lowercase characters for IAM user
    #   passwords.
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_users_to_change_password
    #   Specifies whether IAM users are allowed to change their own
    #   password.
    #   @return [Boolean]
    #
    # @!attribute [rw] expire_passwords
    #   Indicates whether passwords in the account expire. Returns true if
    #   MaxPasswordAge is contains a value greater than 0. Returns false if
    #   MaxPasswordAge is 0 or not present.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_password_age
    #   The number of days that an IAM user password is valid.
    #   @return [Integer]
    #
    # @!attribute [rw] password_reuse_prevention
    #   Specifies the number of previous passwords that IAM users are
    #   prevented from reusing.
    #   @return [Integer]
    #
    # @!attribute [rw] hard_expiry
    #   Specifies whether IAM users are prevented from setting a new
    #   password after their password has expired.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PasswordPolicy AWS API Documentation
    #
    class PasswordPolicy < Struct.new(
      :minimum_password_length,
      :require_symbols,
      :require_numbers,
      :require_uppercase_characters,
      :require_lowercase_characters,
      :allow_users_to_change_password,
      :expire_passwords,
      :max_password_age,
      :password_reuse_prevention,
      :hard_expiry)
      include Aws::Structure
    end

    # Contains information about a managed policy.
    #
    # This data type is used as a response element in the CreatePolicy,
    # GetPolicy, and ListPolicies actions.
    #
    # For more information about managed policies, refer to [Managed
    # Policies and Inline Policies][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] policy_name
    #   The friendly name (not ARN) identifying the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_id
    #   The stable and unique string identifying the policy.
    #
    #   For more information about IDs, see [IAM Identifiers][1] in the
    #   *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
    #   resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] path
    #   The path to the policy.
    #
    #   For more information about paths, see [IAM Identifiers][1] in the
    #   *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] default_version_id
    #   The identifier for the version of the policy that is set as the
    #   default version.
    #   @return [String]
    #
    # @!attribute [rw] attachment_count
    #   The number of entities (users, groups, and roles) that the policy is
    #   attached to.
    #   @return [Integer]
    #
    # @!attribute [rw] is_attachable
    #   Specifies whether the policy can be attached to an IAM user, group,
    #   or role.
    #   @return [Boolean]
    #
    # @!attribute [rw] description
    #   A friendly description of the policy.
    #
    #   This element is included in the response to the GetPolicy operation.
    #   It is not included in the response to the ListPolicies operation.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   policy was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] update_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   policy was last updated.
    #
    #   When a policy has only one version, this field contains the date and
    #   time when the policy was created. When a policy has more than one
    #   version, this field contains the date and time when the most recent
    #   policy version was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/Policy AWS API Documentation
    #
    class Policy < Struct.new(
      :policy_name,
      :policy_id,
      :arn,
      :path,
      :default_version_id,
      :attachment_count,
      :is_attachable,
      :description,
      :create_date,
      :update_date)
      include Aws::Structure
    end

    # Contains information about an IAM policy, including the policy
    # document.
    #
    # This data type is used as a response element in the
    # GetAccountAuthorizationDetails action.
    #
    # @!attribute [rw] policy_name
    #   The name of the policy.
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PolicyDetail AWS API Documentation
    #
    class PolicyDetail < Struct.new(
      :policy_name,
      :policy_document)
      include Aws::Structure
    end

    # Contains information about a group that a managed policy is attached
    # to.
    #
    # This data type is used as a response element in the
    # ListEntitiesForPolicy action.
    #
    # For more information about managed policies, refer to [Managed
    # Policies and Inline Policies][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] group_name
    #   The name (friendly name, not ARN) identifying the group.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   The stable and unique string identifying the group. For more
    #   information about IDs, see [IAM Identifiers][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PolicyGroup AWS API Documentation
    #
    class PolicyGroup < Struct.new(
      :group_name,
      :group_id)
      include Aws::Structure
    end

    # Contains information about a role that a managed policy is attached
    # to.
    #
    # This data type is used as a response element in the
    # ListEntitiesForPolicy action.
    #
    # For more information about managed policies, refer to [Managed
    # Policies and Inline Policies][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] role_name
    #   The name (friendly name, not ARN) identifying the role.
    #   @return [String]
    #
    # @!attribute [rw] role_id
    #   The stable and unique string identifying the role. For more
    #   information about IDs, see [IAM Identifiers][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PolicyRole AWS API Documentation
    #
    class PolicyRole < Struct.new(
      :role_name,
      :role_id)
      include Aws::Structure
    end

    # Contains information about a user that a managed policy is attached
    # to.
    #
    # This data type is used as a response element in the
    # ListEntitiesForPolicy action.
    #
    # For more information about managed policies, refer to [Managed
    # Policies and Inline Policies][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] user_name
    #   The name (friendly name, not ARN) identifying the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The stable and unique string identifying the user. For more
    #   information about IDs, see [IAM Identifiers][1] in the *IAM User
    #   Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PolicyUser AWS API Documentation
    #
    class PolicyUser < Struct.new(
      :user_name,
      :user_id)
      include Aws::Structure
    end

    # Contains information about a version of a managed policy.
    #
    # This data type is used as a response element in the
    # CreatePolicyVersion, GetPolicyVersion, ListPolicyVersions, and
    # GetAccountAuthorizationDetails actions.
    #
    # For more information about managed policies, refer to [Managed
    # Policies and Inline Policies][1] in the *Using IAM* guide.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html
    #
    # @!attribute [rw] document
    #   The policy document.
    #
    #   The policy document is returned in the response to the
    #   GetPolicyVersion and GetAccountAuthorizationDetails operations. It
    #   is not returned in the response to the CreatePolicyVersion or
    #   ListPolicyVersions operations.
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The identifier for the policy version.
    #
    #   Policy version identifiers always begin with `v` (always lowercase).
    #   When a policy is created, the first policy version is `v1`.
    #   @return [String]
    #
    # @!attribute [rw] is_default_version
    #   Specifies whether the policy version is set as the policy's default
    #   version.
    #   @return [Boolean]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   policy version was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PolicyVersion AWS API Documentation
    #
    class PolicyVersion < Struct.new(
      :document,
      :version_id,
      :is_default_version,
      :create_date)
      include Aws::Structure
    end

    # Contains the row and column of a location of a `Statement` element in
    # a policy document.
    #
    # This data type is used as a member of the ` Statement ` type.
    #
    # @!attribute [rw] line
    #   The line containing the specified position in the document.
    #   @return [Integer]
    #
    # @!attribute [rw] column
    #   The column in the line containing the specified position in the
    #   document.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/Position AWS API Documentation
    #
    class Position < Struct.new(
      :line,
      :column)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutGroupPolicyRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "groupNameType", # required
    #         policy_name: "policyNameType", # required
    #         policy_document: "policyDocumentType", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group to associate the policy with.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy document.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutGroupPolicyRequest AWS API Documentation
    #
    class PutGroupPolicyRequest < Struct.new(
      :group_name,
      :policy_name,
      :policy_document)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutRolePolicyRequest
    #   data as a hash:
    #
    #       {
    #         role_name: "roleNameType", # required
    #         policy_name: "policyNameType", # required
    #         policy_document: "policyDocumentType", # required
    #       }
    #
    # @!attribute [rw] role_name
    #   The name of the role to associate the policy with.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy document.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutRolePolicyRequest AWS API Documentation
    #
    class PutRolePolicyRequest < Struct.new(
      :role_name,
      :policy_name,
      :policy_document)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutUserPolicyRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType", # required
    #         policy_name: "policyNameType", # required
    #         policy_document: "policyDocumentType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user to associate the policy with.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_name
    #   The name of the policy document.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy document.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/PutUserPolicyRequest AWS API Documentation
    #
    class PutUserPolicyRequest < Struct.new(
      :user_name,
      :policy_name,
      :policy_document)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveClientIDFromOpenIDConnectProviderRequest
    #   data as a hash:
    #
    #       {
    #         open_id_connect_provider_arn: "arnType", # required
    #         client_id: "clientIDType", # required
    #       }
    #
    # @!attribute [rw] open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the IAM OIDC provider resource to
    #   remove the client ID from. You can get a list of OIDC provider ARNs
    #   by using the ListOpenIDConnectProviders action.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] client_id
    #   The client ID (also known as audience) to remove from the IAM OIDC
    #   provider resource. For more information about client IDs, see
    #   CreateOpenIDConnectProvider.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RemoveClientIDFromOpenIDConnectProviderRequest AWS API Documentation
    #
    class RemoveClientIDFromOpenIDConnectProviderRequest < Struct.new(
      :open_id_connect_provider_arn,
      :client_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveRoleFromInstanceProfileRequest
    #   data as a hash:
    #
    #       {
    #         instance_profile_name: "instanceProfileNameType", # required
    #         role_name: "roleNameType", # required
    #       }
    #
    # @!attribute [rw] instance_profile_name
    #   The name of the instance profile to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The name of the role to remove.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RemoveRoleFromInstanceProfileRequest AWS API Documentation
    #
    class RemoveRoleFromInstanceProfileRequest < Struct.new(
      :instance_profile_name,
      :role_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RemoveUserFromGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "groupNameType", # required
    #         user_name: "existingUserNameType", # required
    #       }
    #
    # @!attribute [rw] group_name
    #   The name of the group to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the user to remove.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RemoveUserFromGroupRequest AWS API Documentation
    #
    class RemoveUserFromGroupRequest < Struct.new(
      :group_name,
      :user_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResetServiceSpecificCredentialRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType",
    #         service_specific_credential_id: "serviceSpecificCredentialId", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the service-specific
    #   credential. If this value is not specified, then the operation
    #   assumes the user whose credentials are used to call the operation.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] service_specific_credential_id
    #   The unique identifier of the service-specific credential.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ResetServiceSpecificCredentialRequest AWS API Documentation
    #
    class ResetServiceSpecificCredentialRequest < Struct.new(
      :user_name,
      :service_specific_credential_id)
      include Aws::Structure
    end

    # @!attribute [rw] service_specific_credential
    #   A structure with details about the updated service-specific
    #   credential, including the new password.
    #
    #   This is the **only** time that you can access the password. You
    #   cannot recover the password later, but you can reset it again.
    #   @return [Types::ServiceSpecificCredential]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ResetServiceSpecificCredentialResponse AWS API Documentation
    #
    class ResetServiceSpecificCredentialResponse < Struct.new(
      :service_specific_credential)
      include Aws::Structure
    end

    # Contains the result of the simulation of a single API action call on a
    # single resource.
    #
    # This data type is used by a member of the EvaluationResult data type.
    #
    # @!attribute [rw] eval_resource_name
    #   The name of the simulated resource, in Amazon Resource Name (ARN)
    #   format.
    #   @return [String]
    #
    # @!attribute [rw] eval_resource_decision
    #   The result of the simulation of the simulated API action on the
    #   resource specified in `EvalResourceName`.
    #   @return [String]
    #
    # @!attribute [rw] matched_statements
    #   A list of the statements in the input policies that determine the
    #   result for this part of the simulation. Remember that even if
    #   multiple statements allow the action on the resource, if *any*
    #   statement denies that action, then the explicit deny overrides any
    #   allow, and the deny statement is the only entry included in the
    #   result.
    #   @return [Array<Types::Statement>]
    #
    # @!attribute [rw] missing_context_values
    #   A list of context keys that are required by the included input
    #   policies but that were not provided by one of the input parameters.
    #   This list is used when a list of ARNs is included in the
    #   `ResourceArns` parameter instead of "*". If you do not specify
    #   individual resources, by setting `ResourceArns` to "*" or by not
    #   including the `ResourceArns` parameter, then any missing context
    #   values are instead included under the `EvaluationResults` section.
    #   To discover the context keys used by a set of policies, you can call
    #   GetContextKeysForCustomPolicy or GetContextKeysForPrincipalPolicy.
    #   @return [Array<String>]
    #
    # @!attribute [rw] eval_decision_details
    #   Additional details about the results of the evaluation decision.
    #   When there are both IAM policies and resource policies, this
    #   parameter explains how each set of policies contributes to the final
    #   evaluation decision. When simulating cross-account access to a
    #   resource, both the resource-based policy and the caller's IAM
    #   policy must grant access.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ResourceSpecificResult AWS API Documentation
    #
    class ResourceSpecificResult < Struct.new(
      :eval_resource_name,
      :eval_resource_decision,
      :matched_statements,
      :missing_context_values,
      :eval_decision_details)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResyncMFADeviceRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType", # required
    #         serial_number: "serialNumberType", # required
    #         authentication_code_1: "authenticationCodeType", # required
    #         authentication_code_2: "authenticationCodeType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user whose MFA device you want to resynchronize.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] serial_number
    #   Serial number that uniquely identifies the MFA device.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] authentication_code_1
    #   An authentication code emitted by the device.
    #
    #   The format for this parameter is a sequence of six digits.
    #   @return [String]
    #
    # @!attribute [rw] authentication_code_2
    #   A subsequent authentication code emitted by the device.
    #
    #   The format for this parameter is a sequence of six digits.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ResyncMFADeviceRequest AWS API Documentation
    #
    class ResyncMFADeviceRequest < Struct.new(
      :user_name,
      :serial_number,
      :authentication_code_1,
      :authentication_code_2)
      include Aws::Structure
    end

    # Contains information about an IAM role. This structure is returned as
    # a response element in several APIs that interact with roles.
    #
    # @!attribute [rw] path
    #   The path to the role. For more information about paths, see [IAM
    #   Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The friendly name that identifies the role.
    #   @return [String]
    #
    # @!attribute [rw] role_id
    #   The stable and unique string identifying the role. For more
    #   information about IDs, see [IAM Identifiers][1] in the *Using IAM*
    #   guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) specifying the role. For more
    #   information about ARNs and how to use them in policies, see [IAM
    #   Identifiers][1] in the *IAM User Guide* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the role
    #   was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] assume_role_policy_document
    #   The policy that grants an entity permission to assume the role.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the role that you provide.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/Role AWS API Documentation
    #
    class Role < Struct.new(
      :path,
      :role_name,
      :role_id,
      :arn,
      :create_date,
      :assume_role_policy_document,
      :description)
      include Aws::Structure
    end

    # Contains information about an IAM role, including all of the role's
    # policies.
    #
    # This data type is used as a response element in the
    # GetAccountAuthorizationDetails action.
    #
    # @!attribute [rw] path
    #   The path to the role. For more information about paths, see [IAM
    #   Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] role_name
    #   The friendly name that identifies the role.
    #   @return [String]
    #
    # @!attribute [rw] role_id
    #   The stable and unique string identifying the role. For more
    #   information about IDs, see [IAM Identifiers][1] in the *Using IAM*
    #   guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
    #   resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the role
    #   was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] assume_role_policy_document
    #   The trust policy that grants permission to assume the role.
    #   @return [String]
    #
    # @!attribute [rw] instance_profile_list
    #   A list of instance profiles that contain this role.
    #   @return [Array<Types::InstanceProfile>]
    #
    # @!attribute [rw] role_policy_list
    #   A list of inline policies embedded in the role. These policies are
    #   the role's access (permissions) policies.
    #   @return [Array<Types::PolicyDetail>]
    #
    # @!attribute [rw] attached_managed_policies
    #   A list of managed policies attached to the role. These policies are
    #   the role's access (permissions) policies.
    #   @return [Array<Types::AttachedPolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/RoleDetail AWS API Documentation
    #
    class RoleDetail < Struct.new(
      :path,
      :role_name,
      :role_id,
      :arn,
      :create_date,
      :assume_role_policy_document,
      :instance_profile_list,
      :role_policy_list,
      :attached_managed_policies)
      include Aws::Structure
    end

    # Contains the list of SAML providers for this account.
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) of the SAML provider.
    #   @return [String]
    #
    # @!attribute [rw] valid_until
    #   The expiration date and time for the SAML provider.
    #   @return [Time]
    #
    # @!attribute [rw] create_date
    #   The date and time when the SAML provider was created.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SAMLProviderListEntry AWS API Documentation
    #
    class SAMLProviderListEntry < Struct.new(
      :arn,
      :valid_until,
      :create_date)
      include Aws::Structure
    end

    # Contains information about an SSH public key.
    #
    # This data type is used as a response element in the GetSSHPublicKey
    # and UploadSSHPublicKey actions.
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   The unique identifier for the SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] fingerprint
    #   The MD5 message digest of the SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_body
    #   The SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the SSH public key. `Active` means the key can be used
    #   for authentication with an AWS CodeCommit repository. `Inactive`
    #   means the key cannot be used.
    #   @return [String]
    #
    # @!attribute [rw] upload_date
    #   The date and time, in [ISO 8601 date-time format][1], when the SSH
    #   public key was uploaded.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SSHPublicKey AWS API Documentation
    #
    class SSHPublicKey < Struct.new(
      :user_name,
      :ssh_public_key_id,
      :fingerprint,
      :ssh_public_key_body,
      :status,
      :upload_date)
      include Aws::Structure
    end

    # Contains information about an SSH public key, without the key's body
    # or fingerprint.
    #
    # This data type is used as a response element in the ListSSHPublicKeys
    # action.
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   The unique identifier for the SSH public key.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the SSH public key. `Active` means the key can be used
    #   for authentication with an AWS CodeCommit repository. `Inactive`
    #   means the key cannot be used.
    #   @return [String]
    #
    # @!attribute [rw] upload_date
    #   The date and time, in [ISO 8601 date-time format][1], when the SSH
    #   public key was uploaded.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SSHPublicKeyMetadata AWS API Documentation
    #
    class SSHPublicKeyMetadata < Struct.new(
      :user_name,
      :ssh_public_key_id,
      :status,
      :upload_date)
      include Aws::Structure
    end

    # Contains information about a server certificate.
    #
    # This data type is used as a response element in the
    # GetServerCertificate action.
    #
    # @!attribute [rw] server_certificate_metadata
    #   The meta information of the server certificate, such as its name,
    #   path, ID, and ARN.
    #   @return [Types::ServerCertificateMetadata]
    #
    # @!attribute [rw] certificate_body
    #   The contents of the public key certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   The contents of the public key certificate chain.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ServerCertificate AWS API Documentation
    #
    class ServerCertificate < Struct.new(
      :server_certificate_metadata,
      :certificate_body,
      :certificate_chain)
      include Aws::Structure
    end

    # Contains information about a server certificate without its
    # certificate body, certificate chain, and private key.
    #
    # This data type is used as a response element in the
    # UploadServerCertificate and ListServerCertificates actions.
    #
    # @!attribute [rw] path
    #   The path to the server certificate. For more information about
    #   paths, see [IAM Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] server_certificate_name
    #   The name that identifies the server certificate.
    #   @return [String]
    #
    # @!attribute [rw] server_certificate_id
    #   The stable and unique string identifying the server certificate. For
    #   more information about IDs, see [IAM Identifiers][1] in the *Using
    #   IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) specifying the server certificate.
    #   For more information about ARNs and how to use them in policies, see
    #   [IAM Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] upload_date
    #   The date when the server certificate was uploaded.
    #   @return [Time]
    #
    # @!attribute [rw] expiration
    #   The date on which the certificate is set to expire.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ServerCertificateMetadata AWS API Documentation
    #
    class ServerCertificateMetadata < Struct.new(
      :path,
      :server_certificate_name,
      :server_certificate_id,
      :arn,
      :upload_date,
      :expiration)
      include Aws::Structure
    end

    # Contains the details of a service specific credential.
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   service-specific credential were created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] service_name
    #   The name of the service associated with the service-specific
    #   credential.
    #   @return [String]
    #
    # @!attribute [rw] service_user_name
    #   The generated user name for the service-specific credential. This
    #   value is generated by combining the IAM user's name combined with
    #   the ID number of the AWS account, as in `jane-at-123456789012`, for
    #   example. This value cannot be configured by the user.
    #   @return [String]
    #
    # @!attribute [rw] service_password
    #   The generated password for the service-specific credential.
    #   @return [String]
    #
    # @!attribute [rw] service_specific_credential_id
    #   The unique identifier for the service-specific credential.
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the service-specific
    #   credential.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service-specific credential. `Active` means the
    #   key is valid for API calls, while `Inactive` means it is not.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ServiceSpecificCredential AWS API Documentation
    #
    class ServiceSpecificCredential < Struct.new(
      :create_date,
      :service_name,
      :service_user_name,
      :service_password,
      :service_specific_credential_id,
      :user_name,
      :status)
      include Aws::Structure
    end

    # Contains additional details about a service-specific credential.
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the service-specific
    #   credential.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the service-specific credential. `Active` means the
    #   key is valid for API calls, while `Inactive` means it is not.
    #   @return [String]
    #
    # @!attribute [rw] service_user_name
    #   The generated user name for the service-specific credential.
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   service-specific credential were created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] service_specific_credential_id
    #   The unique identifier for the service-specific credential.
    #   @return [String]
    #
    # @!attribute [rw] service_name
    #   The name of the service associated with the service-specific
    #   credential.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/ServiceSpecificCredentialMetadata AWS API Documentation
    #
    class ServiceSpecificCredentialMetadata < Struct.new(
      :user_name,
      :status,
      :service_user_name,
      :create_date,
      :service_specific_credential_id,
      :service_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SetDefaultPolicyVersionRequest
    #   data as a hash:
    #
    #       {
    #         policy_arn: "arnType", # required
    #         version_id: "policyVersionIdType", # required
    #       }
    #
    # @!attribute [rw] policy_arn
    #   The Amazon Resource Name (ARN) of the IAM policy whose default
    #   version you want to set.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] version_id
    #   The version of the policy to set as the default (operative) version.
    #
    #   For more information about managed policy versions, see [Versioning
    #   for Managed Policies][1] in the *IAM User Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-versions.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SetDefaultPolicyVersionRequest AWS API Documentation
    #
    class SetDefaultPolicyVersionRequest < Struct.new(
      :policy_arn,
      :version_id)
      include Aws::Structure
    end

    # Contains information about an X.509 signing certificate.
    #
    # This data type is used as a response element in the
    # UploadSigningCertificate and ListSigningCertificates actions.
    #
    # @!attribute [rw] user_name
    #   The name of the user the signing certificate is associated with.
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The ID for the signing certificate.
    #   @return [String]
    #
    # @!attribute [rw] certificate_body
    #   The contents of the signing certificate.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the signing certificate. `Active` means the key is
    #   valid for API calls, while `Inactive` means it is not.
    #   @return [String]
    #
    # @!attribute [rw] upload_date
    #   The date when the signing certificate was uploaded.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SigningCertificate AWS API Documentation
    #
    class SigningCertificate < Struct.new(
      :user_name,
      :certificate_id,
      :certificate_body,
      :status,
      :upload_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SimulateCustomPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_input_list: ["policyDocumentType"], # required
    #         action_names: ["ActionNameType"], # required
    #         resource_arns: ["ResourceNameType"],
    #         resource_policy: "policyDocumentType",
    #         resource_owner: "ResourceNameType",
    #         caller_arn: "ResourceNameType",
    #         context_entries: [
    #           {
    #             context_key_name: "ContextKeyNameType",
    #             context_key_values: ["ContextKeyValueType"],
    #             context_key_type: "string", # accepts string, stringList, numeric, numericList, boolean, booleanList, ip, ipList, binary, binaryList, date, dateList
    #           },
    #         ],
    #         resource_handling_option: "ResourceHandlingOptionType",
    #         max_items: 1,
    #         marker: "markerType",
    #       }
    #
    # @!attribute [rw] policy_input_list
    #   A list of policy documents to include in the simulation. Each
    #   document is specified as a string containing the complete, valid
    #   JSON text of an IAM policy. Do not include any resource-based
    #   policies in this parameter. Any resource-based policy must be
    #   submitted with the `ResourcePolicy` parameter. The policies cannot
    #   be "scope-down" policies, such as you could include in a call to
    #   [GetFederationToken][1] or one of the [AssumeRole][2] APIs to
    #   restrict what a user can do while using the temporary credentials.
    #
    #   The [regex pattern][3] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_GetFederationToken.html
    #   [2]: http://docs.aws.amazon.com/IAM/latest/APIReference/API_AssumeRole.html
    #   [3]: http://wikipedia.org/wiki/regex
    #   @return [Array<String>]
    #
    # @!attribute [rw] action_names
    #   A list of names of API actions to evaluate in the simulation. Each
    #   action is evaluated against each resource. Each action must include
    #   the service identifier, such as `iam:CreateUser`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_arns
    #   A list of ARNs of AWS resources to include in the simulation. If
    #   this parameter is not provided then the value defaults to `*` (all
    #   resources). Each API in the `ActionNames` parameter is evaluated for
    #   each resource in this list. The simulation determines the access
    #   result (allowed or denied) of each combination and reports it in the
    #   response.
    #
    #   The simulation does not automatically retrieve policies for the
    #   specified resources. If you want to include a resource policy in the
    #   simulation, then you must include the policy as a string in the
    #   `ResourcePolicy` parameter.
    #
    #   If you include a `ResourcePolicy`, then it must be applicable to all
    #   of the resources included in the simulation or you receive an
    #   invalid input error.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_policy
    #   A resource-based policy to include in the simulation provided as a
    #   string. Each resource in the simulation is treated as if it had this
    #   policy attached. You can include only one resource-based policy in a
    #   simulation.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   An AWS account ID that specifies the owner of any simulated resource
    #   that does not identify its owner in the resource ARN, such as an S3
    #   bucket or object. If `ResourceOwner` is specified, it is also used
    #   as the account owner of any `ResourcePolicy` included in the
    #   simulation. If the `ResourceOwner` parameter is not specified, then
    #   the owner of the resources and the resource policy defaults to the
    #   account of the identity provided in `CallerArn`. This parameter is
    #   required only if you specify a resource-based policy and account
    #   that owns the resource is different from the account that owns the
    #   simulated calling user `CallerArn`.
    #   @return [String]
    #
    # @!attribute [rw] caller_arn
    #   The ARN of the IAM user that you want to use as the simulated caller
    #   of the APIs. `CallerArn` is required if you include a
    #   `ResourcePolicy` so that the policy's `Principal` element has a
    #   value to use in evaluating the policy.
    #
    #   You can specify only the ARN of an IAM user. You cannot specify the
    #   ARN of an assumed role, federated user, or a service principal.
    #   @return [String]
    #
    # @!attribute [rw] context_entries
    #   A list of context keys and corresponding values for the simulation
    #   to use. Whenever a context key is evaluated in one of the simulated
    #   IAM permission policies, the corresponding value is supplied.
    #   @return [Array<Types::ContextEntry>]
    #
    # @!attribute [rw] resource_handling_option
    #   Specifies the type of simulation to run. Different APIs that support
    #   resource-based policies require different combinations of resources.
    #   By specifying the type of simulation to run, you enable the policy
    #   simulator to enforce the presence of the required resources to
    #   ensure reliable simulation results. If your simulation does not
    #   match one of the following scenarios, then you can omit this
    #   parameter. The following list shows each of the supported scenario
    #   values and the resources that you must define to run the simulation.
    #
    #   Each of the EC2 scenarios requires that you specify instance, image,
    #   and security-group resources. If your scenario includes an EBS
    #   volume, then you must specify that volume as a resource. If the EC2
    #   scenario includes VPC, then you must supply the network-interface
    #   resource. If it includes an IP subnet, then you must specify the
    #   subnet resource. For more information on the EC2 scenario options,
    #   see [Supported Platforms][1] in the *AWS EC2 User Guide*.
    #
    #   * **EC2-Classic-InstanceStore**
    #
    #     instance, image, security-group
    #
    #   * **EC2-Classic-EBS**
    #
    #     instance, image, security-group, volume
    #
    #   * **EC2-VPC-InstanceStore**
    #
    #     instance, image, security-group, network-interface
    #
    #   * **EC2-VPC-InstanceStore-Subnet**
    #
    #     instance, image, security-group, network-interface, subnet
    #
    #   * **EC2-VPC-EBS**
    #
    #     instance, image, security-group, network-interface, volume
    #
    #   * **EC2-VPC-EBS-Subnet**
    #
    #     instance, image, security-group, network-interface, subnet, volume
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SimulateCustomPolicyRequest AWS API Documentation
    #
    class SimulateCustomPolicyRequest < Struct.new(
      :policy_input_list,
      :action_names,
      :resource_arns,
      :resource_policy,
      :resource_owner,
      :caller_arn,
      :context_entries,
      :resource_handling_option,
      :max_items,
      :marker)
      include Aws::Structure
    end

    # Contains the response to a successful SimulatePrincipalPolicy or
    # SimulateCustomPolicy request.
    #
    # @!attribute [rw] evaluation_results
    #   The results of the simulation.
    #   @return [Array<Types::EvaluationResult>]
    #
    # @!attribute [rw] is_truncated
    #   A flag that indicates whether there are more items to return. If
    #   your results were truncated, you can make a subsequent pagination
    #   request using the `Marker` request parameter to retrieve more items.
    #   Note that IAM might return fewer than the `MaxItems` number of
    #   results even when there are more results available. We recommend
    #   that you check `IsTruncated` after every call to ensure that you
    #   receive all of your results.
    #   @return [Boolean]
    #
    # @!attribute [rw] marker
    #   When `IsTruncated` is `true`, this element is present and contains
    #   the value to use for the `Marker` parameter in a subsequent
    #   pagination request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SimulatePolicyResponse AWS API Documentation
    #
    class SimulatePolicyResponse < Struct.new(
      :evaluation_results,
      :is_truncated,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass SimulatePrincipalPolicyRequest
    #   data as a hash:
    #
    #       {
    #         policy_source_arn: "arnType", # required
    #         policy_input_list: ["policyDocumentType"],
    #         action_names: ["ActionNameType"], # required
    #         resource_arns: ["ResourceNameType"],
    #         resource_policy: "policyDocumentType",
    #         resource_owner: "ResourceNameType",
    #         caller_arn: "ResourceNameType",
    #         context_entries: [
    #           {
    #             context_key_name: "ContextKeyNameType",
    #             context_key_values: ["ContextKeyValueType"],
    #             context_key_type: "string", # accepts string, stringList, numeric, numericList, boolean, booleanList, ip, ipList, binary, binaryList, date, dateList
    #           },
    #         ],
    #         resource_handling_option: "ResourceHandlingOptionType",
    #         max_items: 1,
    #         marker: "markerType",
    #       }
    #
    # @!attribute [rw] policy_source_arn
    #   The Amazon Resource Name (ARN) of a user, group, or role whose
    #   policies you want to include in the simulation. If you specify a
    #   user, group, or role, the simulation includes all policies that are
    #   associated with that entity. If you specify a user, the simulation
    #   also includes all policies that are attached to any groups the user
    #   belongs to.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] policy_input_list
    #   An optional list of additional policy documents to include in the
    #   simulation. Each document is specified as a string containing the
    #   complete, valid JSON text of an IAM policy.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [Array<String>]
    #
    # @!attribute [rw] action_names
    #   A list of names of API actions to evaluate in the simulation. Each
    #   action is evaluated for each resource. Each action must include the
    #   service identifier, such as `iam:CreateUser`.
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_arns
    #   A list of ARNs of AWS resources to include in the simulation. If
    #   this parameter is not provided then the value defaults to `*` (all
    #   resources). Each API in the `ActionNames` parameter is evaluated for
    #   each resource in this list. The simulation determines the access
    #   result (allowed or denied) of each combination and reports it in the
    #   response.
    #
    #   The simulation does not automatically retrieve policies for the
    #   specified resources. If you want to include a resource policy in the
    #   simulation, then you must include the policy as a string in the
    #   `ResourcePolicy` parameter.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [Array<String>]
    #
    # @!attribute [rw] resource_policy
    #   A resource-based policy to include in the simulation provided as a
    #   string. Each resource in the simulation is treated as if it had this
    #   policy attached. You can include only one resource-based policy in a
    #   simulation.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] resource_owner
    #   An AWS account ID that specifies the owner of any simulated resource
    #   that does not identify its owner in the resource ARN, such as an S3
    #   bucket or object. If `ResourceOwner` is specified, it is also used
    #   as the account owner of any `ResourcePolicy` included in the
    #   simulation. If the `ResourceOwner` parameter is not specified, then
    #   the owner of the resources and the resource policy defaults to the
    #   account of the identity provided in `CallerArn`. This parameter is
    #   required only if you specify a resource-based policy and account
    #   that owns the resource is different from the account that owns the
    #   simulated calling user `CallerArn`.
    #   @return [String]
    #
    # @!attribute [rw] caller_arn
    #   The ARN of the IAM user that you want to specify as the simulated
    #   caller of the APIs. If you do not specify a `CallerArn`, it defaults
    #   to the ARN of the user that you specify in `PolicySourceArn`, if you
    #   specified a user. If you include both a `PolicySourceArn` (for
    #   example, `arn:aws:iam::123456789012:user/David`) and a `CallerArn`
    #   (for example, `arn:aws:iam::123456789012:user/Bob`), the result is
    #   that you simulate calling the APIs as Bob, as if Bob had David's
    #   policies.
    #
    #   You can specify only the ARN of an IAM user. You cannot specify the
    #   ARN of an assumed role, federated user, or a service principal.
    #
    #   `CallerArn` is required if you include a `ResourcePolicy` and the
    #   `PolicySourceArn` is not the ARN for an IAM user. This is required
    #   so that the resource-based policy's `Principal` element has a value
    #   to use in evaluating the policy.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] context_entries
    #   A list of context keys and corresponding values for the simulation
    #   to use. Whenever a context key is evaluated in one of the simulated
    #   IAM permission policies, the corresponding value is supplied.
    #   @return [Array<Types::ContextEntry>]
    #
    # @!attribute [rw] resource_handling_option
    #   Specifies the type of simulation to run. Different APIs that support
    #   resource-based policies require different combinations of resources.
    #   By specifying the type of simulation to run, you enable the policy
    #   simulator to enforce the presence of the required resources to
    #   ensure reliable simulation results. If your simulation does not
    #   match one of the following scenarios, then you can omit this
    #   parameter. The following list shows each of the supported scenario
    #   values and the resources that you must define to run the simulation.
    #
    #   Each of the EC2 scenarios requires that you specify instance, image,
    #   and security-group resources. If your scenario includes an EBS
    #   volume, then you must specify that volume as a resource. If the EC2
    #   scenario includes VPC, then you must supply the network-interface
    #   resource. If it includes an IP subnet, then you must specify the
    #   subnet resource. For more information on the EC2 scenario options,
    #   see [Supported Platforms][1] in the *AWS EC2 User Guide*.
    #
    #   * **EC2-Classic-InstanceStore**
    #
    #     instance, image, security-group
    #
    #   * **EC2-Classic-EBS**
    #
    #     instance, image, security-group, volume
    #
    #   * **EC2-VPC-InstanceStore**
    #
    #     instance, image, security-group, network-interface
    #
    #   * **EC2-VPC-InstanceStore-Subnet**
    #
    #     instance, image, security-group, network-interface, subnet
    #
    #   * **EC2-VPC-EBS**
    #
    #     instance, image, security-group, network-interface, volume
    #
    #   * **EC2-VPC-EBS-Subnet**
    #
    #     instance, image, security-group, network-interface, subnet, volume
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-supported-platforms.html
    #   @return [String]
    #
    # @!attribute [rw] max_items
    #   (Optional) Use this only when paginating results to indicate the
    #   maximum number of items you want in the response. If additional
    #   items exist beyond the maximum you specify, the `IsTruncated`
    #   response element is `true`.
    #
    #   If you do not include this parameter, it defaults to 100. Note that
    #   IAM might return fewer results, even when there are more results
    #   available. In that case, the `IsTruncated` response element returns
    #   `true` and `Marker` contains a value to include in the subsequent
    #   call that tells the service where to continue from.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   Use this parameter only when paginating results and only after you
    #   receive a response indicating that the results are truncated. Set it
    #   to the value of the `Marker` element in the response that you
    #   received to indicate where the next call should start.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/SimulatePrincipalPolicyRequest AWS API Documentation
    #
    class SimulatePrincipalPolicyRequest < Struct.new(
      :policy_source_arn,
      :policy_input_list,
      :action_names,
      :resource_arns,
      :resource_policy,
      :resource_owner,
      :caller_arn,
      :context_entries,
      :resource_handling_option,
      :max_items,
      :marker)
      include Aws::Structure
    end

    # Contains a reference to a `Statement` element in a policy document
    # that determines the result of the simulation.
    #
    # This data type is used by the `MatchedStatements` member of the `
    # EvaluationResult ` type.
    #
    # @!attribute [rw] source_policy_id
    #   The identifier of the policy that was provided as an input.
    #   @return [String]
    #
    # @!attribute [rw] source_policy_type
    #   The type of the policy.
    #   @return [String]
    #
    # @!attribute [rw] start_position
    #   The row and column of the beginning of the `Statement` in an IAM
    #   policy.
    #   @return [Types::Position]
    #
    # @!attribute [rw] end_position
    #   The row and column of the end of a `Statement` in an IAM policy.
    #   @return [Types::Position]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/Statement AWS API Documentation
    #
    class Statement < Struct.new(
      :source_policy_id,
      :source_policy_type,
      :start_position,
      :end_position)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAccessKeyRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType",
    #         access_key_id: "accessKeyIdType", # required
    #         status: "Active", # required, accepts Active, Inactive
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user whose key you want to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] access_key_id
    #   The access key ID of the secret access key you want to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status you want to assign to the secret access key. `Active`
    #   means the key can be used for API calls to AWS, while `Inactive`
    #   means the key cannot be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateAccessKeyRequest AWS API Documentation
    #
    class UpdateAccessKeyRequest < Struct.new(
      :user_name,
      :access_key_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAccountPasswordPolicyRequest
    #   data as a hash:
    #
    #       {
    #         minimum_password_length: 1,
    #         require_symbols: false,
    #         require_numbers: false,
    #         require_uppercase_characters: false,
    #         require_lowercase_characters: false,
    #         allow_users_to_change_password: false,
    #         max_password_age: 1,
    #         password_reuse_prevention: 1,
    #         hard_expiry: false,
    #       }
    #
    # @!attribute [rw] minimum_password_length
    #   The minimum number of characters allowed in an IAM user password.
    #
    #   Default value: 6
    #   @return [Integer]
    #
    # @!attribute [rw] require_symbols
    #   Specifies whether IAM user passwords must contain at least one of
    #   the following non-alphanumeric characters:
    #
    #   ! @ # $ % ^ &amp;amp; * ( ) \_ + - = \[ \] \\\{ \\} \| '
    #
    #   Default value: false
    #   @return [Boolean]
    #
    # @!attribute [rw] require_numbers
    #   Specifies whether IAM user passwords must contain at least one
    #   numeric character (0 to 9).
    #
    #   Default value: false
    #   @return [Boolean]
    #
    # @!attribute [rw] require_uppercase_characters
    #   Specifies whether IAM user passwords must contain at least one
    #   uppercase character from the ISO basic Latin alphabet (A to Z).
    #
    #   Default value: false
    #   @return [Boolean]
    #
    # @!attribute [rw] require_lowercase_characters
    #   Specifies whether IAM user passwords must contain at least one
    #   lowercase character from the ISO basic Latin alphabet (a to z).
    #
    #   Default value: false
    #   @return [Boolean]
    #
    # @!attribute [rw] allow_users_to_change_password
    #   Allows all IAM users in your account to use the AWS Management
    #   Console to change their own passwords. For more information, see
    #   [Letting IAM Users Change Their Own Passwords][1] in the *IAM User
    #   Guide*.
    #
    #   Default value: false
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/HowToPwdIAMUser.html
    #   @return [Boolean]
    #
    # @!attribute [rw] max_password_age
    #   The number of days that an IAM user password is valid. The default
    #   value of 0 means IAM user passwords never expire.
    #
    #   Default value: 0
    #   @return [Integer]
    #
    # @!attribute [rw] password_reuse_prevention
    #   Specifies the number of previous passwords that IAM users are
    #   prevented from reusing. The default value of 0 means IAM users are
    #   not prevented from reusing previous passwords.
    #
    #   Default value: 0
    #   @return [Integer]
    #
    # @!attribute [rw] hard_expiry
    #   Prevents IAM users from setting a new password after their password
    #   has expired.
    #
    #   Default value: false
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateAccountPasswordPolicyRequest AWS API Documentation
    #
    class UpdateAccountPasswordPolicyRequest < Struct.new(
      :minimum_password_length,
      :require_symbols,
      :require_numbers,
      :require_uppercase_characters,
      :require_lowercase_characters,
      :allow_users_to_change_password,
      :max_password_age,
      :password_reuse_prevention,
      :hard_expiry)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateAssumeRolePolicyRequest
    #   data as a hash:
    #
    #       {
    #         role_name: "roleNameType", # required
    #         policy_document: "policyDocumentType", # required
    #       }
    #
    # @!attribute [rw] role_name
    #   The name of the role to update with the new policy.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: \_+=,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] policy_document
    #   The policy that grants an entity permission to assume the role.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateAssumeRolePolicyRequest AWS API Documentation
    #
    class UpdateAssumeRolePolicyRequest < Struct.new(
      :role_name,
      :policy_document)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateGroupRequest
    #   data as a hash:
    #
    #       {
    #         group_name: "groupNameType", # required
    #         new_path: "pathType",
    #         new_group_name: "groupNameType",
    #       }
    #
    # @!attribute [rw] group_name
    #   Name of the IAM group to update. If you're changing the name of the
    #   group, this is the original name.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] new_path
    #   New path for the IAM group. Only include this if changing the
    #   group's path.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character
    #   (\\u007F), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] new_group_name
    #   New name for the IAM group. Only include this if changing the
    #   group's name.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateGroupRequest AWS API Documentation
    #
    class UpdateGroupRequest < Struct.new(
      :group_name,
      :new_path,
      :new_group_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateLoginProfileRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType", # required
    #         password: "passwordType",
    #         password_reset_required: false,
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user whose password you want to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] password
    #   The new password for the specified IAM user.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D). However, the format can be
    #   further restricted by the account administrator by setting a
    #   password policy on the AWS account. For more information, see
    #   UpdateAccountPasswordPolicy.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] password_reset_required
    #   Allows this new password to be used only once by requiring the
    #   specified IAM user to set a new password on next sign-in.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateLoginProfileRequest AWS API Documentation
    #
    class UpdateLoginProfileRequest < Struct.new(
      :user_name,
      :password,
      :password_reset_required)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateOpenIDConnectProviderThumbprintRequest
    #   data as a hash:
    #
    #       {
    #         open_id_connect_provider_arn: "arnType", # required
    #         thumbprint_list: ["thumbprintType"], # required
    #       }
    #
    # @!attribute [rw] open_id_connect_provider_arn
    #   The Amazon Resource Name (ARN) of the IAM OIDC provider resource
    #   object for which you want to update the thumbprint. You can get a
    #   list of OIDC provider ARNs by using the ListOpenIDConnectProviders
    #   action.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] thumbprint_list
    #   A list of certificate thumbprints that are associated with the
    #   specified IAM OpenID Connect provider. For more information, see
    #   CreateOpenIDConnectProvider.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateOpenIDConnectProviderThumbprintRequest AWS API Documentation
    #
    class UpdateOpenIDConnectProviderThumbprintRequest < Struct.new(
      :open_id_connect_provider_arn,
      :thumbprint_list)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateRoleDescriptionRequest
    #   data as a hash:
    #
    #       {
    #         role_name: "roleNameType", # required
    #         description: "roleDescriptionType", # required
    #       }
    #
    # @!attribute [rw] role_name
    #   The name of the role that you want to modify.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description that you want to apply to the specified role.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateRoleDescriptionRequest AWS API Documentation
    #
    class UpdateRoleDescriptionRequest < Struct.new(
      :role_name,
      :description)
      include Aws::Structure
    end

    # @!attribute [rw] role
    #   A structure that contains details about the modified role.
    #   @return [Types::Role]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateRoleDescriptionResponse AWS API Documentation
    #
    class UpdateRoleDescriptionResponse < Struct.new(
      :role)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSAMLProviderRequest
    #   data as a hash:
    #
    #       {
    #         saml_metadata_document: "SAMLMetadataDocumentType", # required
    #         saml_provider_arn: "arnType", # required
    #       }
    #
    # @!attribute [rw] saml_metadata_document
    #   An XML document generated by an identity provider (IdP) that
    #   supports SAML 2.0. The document includes the issuer's name,
    #   expiration information, and keys that can be used to validate the
    #   SAML authentication response (assertions) that are received from the
    #   IdP. You must generate the metadata document using the identity
    #   management software that is used as your organization's IdP.
    #   @return [String]
    #
    # @!attribute [rw] saml_provider_arn
    #   The Amazon Resource Name (ARN) of the SAML provider to update.
    #
    #   For more information about ARNs, see [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSAMLProviderRequest AWS API Documentation
    #
    class UpdateSAMLProviderRequest < Struct.new(
      :saml_metadata_document,
      :saml_provider_arn)
      include Aws::Structure
    end

    # Contains the response to a successful UpdateSAMLProvider request.
    #
    # @!attribute [rw] saml_provider_arn
    #   The Amazon Resource Name (ARN) of the SAML provider that was
    #   updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSAMLProviderResponse AWS API Documentation
    #
    class UpdateSAMLProviderResponse < Struct.new(
      :saml_provider_arn)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSSHPublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType", # required
    #         ssh_public_key_id: "publicKeyIdType", # required
    #         status: "Active", # required, accepts Active, Inactive
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the SSH public key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_id
    #   The unique identifier for the SSH public key.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status to assign to the SSH public key. `Active` means the key
    #   can be used for authentication with an AWS CodeCommit repository.
    #   `Inactive` means the key cannot be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSSHPublicKeyRequest AWS API Documentation
    #
    class UpdateSSHPublicKeyRequest < Struct.new(
      :user_name,
      :ssh_public_key_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServerCertificateRequest
    #   data as a hash:
    #
    #       {
    #         server_certificate_name: "serverCertificateNameType", # required
    #         new_path: "pathType",
    #         new_server_certificate_name: "serverCertificateNameType",
    #       }
    #
    # @!attribute [rw] server_certificate_name
    #   The name of the server certificate that you want to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] new_path
    #   The new path for the server certificate. Include this only if you
    #   are updating the server certificate's path.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character
    #   (\\u007F), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] new_server_certificate_name
    #   The new name for the server certificate. Include this only if you
    #   are updating the server certificate's name. The name of the
    #   certificate cannot contain any spaces.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateServerCertificateRequest AWS API Documentation
    #
    class UpdateServerCertificateRequest < Struct.new(
      :server_certificate_name,
      :new_path,
      :new_server_certificate_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateServiceSpecificCredentialRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType",
    #         service_specific_credential_id: "serviceSpecificCredentialId", # required
    #         status: "Active", # required, accepts Active, Inactive
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user associated with the service-specific
    #   credential. If you do not specify this value, then the operation
    #   assumes the user whose credentials are used to call the operation.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] service_specific_credential_id
    #   The unique identifier of the service-specific credential.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status to be assigned to the service-specific credential.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateServiceSpecificCredentialRequest AWS API Documentation
    #
    class UpdateServiceSpecificCredentialRequest < Struct.new(
      :user_name,
      :service_specific_credential_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateSigningCertificateRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType",
    #         certificate_id: "certificateIdType", # required
    #         status: "Active", # required, accepts Active, Inactive
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user the signing certificate belongs to.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] certificate_id
    #   The ID of the signing certificate you want to update.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters that can consist of any upper or lowercased letter or
    #   digit.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status you want to assign to the certificate. `Active` means the
    #   certificate can be used for API calls to AWS, while `Inactive` means
    #   the certificate cannot be used.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateSigningCertificateRequest AWS API Documentation
    #
    class UpdateSigningCertificateRequest < Struct.new(
      :user_name,
      :certificate_id,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateUserRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType", # required
    #         new_path: "pathType",
    #         new_user_name: "userNameType",
    #       }
    #
    # @!attribute [rw] user_name
    #   Name of the user to update. If you're changing the name of the
    #   user, this is the original user name.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] new_path
    #   New path for the IAM user. Include this parameter only if you're
    #   changing the user's path.
    #
    #   This paramater allows (per its [regex pattern][1]) a string of
    #   characters consisting of either a forward slash (/) by itself or a
    #   string that must begin and end with forward slashes, containing any
    #   ASCII character from the ! (\\u0021) thru the DEL character
    #   (\\u007F), including most punctuation characters, digits, and upper
    #   and lowercased letters.
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] new_user_name
    #   New name for the user. Include this parameter only if you're
    #   changing the user's name.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UpdateUserRequest AWS API Documentation
    #
    class UpdateUserRequest < Struct.new(
      :user_name,
      :new_path,
      :new_user_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UploadSSHPublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "userNameType", # required
    #         ssh_public_key_body: "publicKeyMaterialType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the IAM user to associate the SSH public key with.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key_body
    #   The SSH public key. The public key must be encoded in ssh-rsa format
    #   or PEM format.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadSSHPublicKeyRequest AWS API Documentation
    #
    class UploadSSHPublicKeyRequest < Struct.new(
      :user_name,
      :ssh_public_key_body)
      include Aws::Structure
    end

    # Contains the response to a successful UploadSSHPublicKey request.
    #
    # @!attribute [rw] ssh_public_key
    #   Contains information about the SSH public key.
    #   @return [Types::SSHPublicKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadSSHPublicKeyResponse AWS API Documentation
    #
    class UploadSSHPublicKeyResponse < Struct.new(
      :ssh_public_key)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UploadServerCertificateRequest
    #   data as a hash:
    #
    #       {
    #         path: "pathType",
    #         server_certificate_name: "serverCertificateNameType", # required
    #         certificate_body: "certificateBodyType", # required
    #         private_key: "privateKeyType", # required
    #         certificate_chain: "certificateChainType",
    #       }
    #
    # @!attribute [rw] path
    #   The path for the server certificate. For more information about
    #   paths, see [IAM Identifiers][1] in the *IAM User Guide*.
    #
    #   This parameter is optional. If it is not included, it defaults to a
    #   slash (/). This paramater allows (per its [regex pattern][2]) a
    #   string of characters consisting of either a forward slash (/) by
    #   itself or a string that must begin and end with forward slashes,
    #   containing any ASCII character from the ! (\\u0021) thru the DEL
    #   character (\\u007F), including most punctuation characters, digits,
    #   and upper and lowercased letters.
    #
    #   <note markdown="1"> If you are uploading a server certificate specifically for use with
    #   Amazon CloudFront distributions, you must specify a path using the
    #   `--path` option. The path must begin with `/cloudfront` and must
    #   include a trailing slash (for example, `/cloudfront/test/`).
    #
    #    </note>
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   [2]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] server_certificate_name
    #   The name for the server certificate. Do not include the path in this
    #   value. The name of the certificate cannot contain any spaces.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] certificate_body
    #   The contents of the public key certificate in PEM-encoded format.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] private_key
    #   The contents of the private key in PEM-encoded format.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] certificate_chain
    #   The contents of the certificate chain. This is typically a
    #   concatenation of the PEM-encoded public key certificates of the
    #   chain.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadServerCertificateRequest AWS API Documentation
    #
    class UploadServerCertificateRequest < Struct.new(
      :path,
      :server_certificate_name,
      :certificate_body,
      :private_key,
      :certificate_chain)
      include Aws::Structure
    end

    # Contains the response to a successful UploadServerCertificate request.
    #
    # @!attribute [rw] server_certificate_metadata
    #   The meta information of the uploaded server certificate without its
    #   certificate body, certificate chain, and private key.
    #   @return [Types::ServerCertificateMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadServerCertificateResponse AWS API Documentation
    #
    class UploadServerCertificateResponse < Struct.new(
      :server_certificate_metadata)
      include Aws::Structure
    end

    # @note When making an API call, you may pass UploadSigningCertificateRequest
    #   data as a hash:
    #
    #       {
    #         user_name: "existingUserNameType",
    #         certificate_body: "certificateBodyType", # required
    #       }
    #
    # @!attribute [rw] user_name
    #   The name of the user the signing certificate is for.
    #
    #   This parameter allows (per its [regex pattern][1]) a string of
    #   characters consisting of upper and lowercase alphanumeric characters
    #   with no spaces. You can also include any of the following
    #   characters: =,.@-
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @!attribute [rw] certificate_body
    #   The contents of the signing certificate.
    #
    #   The [regex pattern][1] used to validate this parameter is a string
    #   of characters consisting of any printable ASCII character ranging
    #   from the space character (\\u0020) through end of the ASCII
    #   character range as well as the printable characters in the Basic
    #   Latin and Latin-1 Supplement character set (through \\u00FF). It
    #   also includes the special characters tab (\\u0009), line feed
    #   (\\u000A), and carriage return (\\u000D).
    #
    #
    #
    #   [1]: http://wikipedia.org/wiki/regex
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadSigningCertificateRequest AWS API Documentation
    #
    class UploadSigningCertificateRequest < Struct.new(
      :user_name,
      :certificate_body)
      include Aws::Structure
    end

    # Contains the response to a successful UploadSigningCertificate
    # request.
    #
    # @!attribute [rw] certificate
    #   Information about the certificate.
    #   @return [Types::SigningCertificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UploadSigningCertificateResponse AWS API Documentation
    #
    class UploadSigningCertificateResponse < Struct.new(
      :certificate)
      include Aws::Structure
    end

    # Contains information about an IAM user entity.
    #
    # This data type is used as a response element in the following actions:
    #
    # * CreateUser
    #
    # * GetUser
    #
    # * ListUsers
    #
    # @!attribute [rw] path
    #   The path to the user. For more information about paths, see [IAM
    #   Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The friendly name identifying the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The stable and unique string identifying the user. For more
    #   information about IDs, see [IAM Identifiers][1] in the *Using IAM*
    #   guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN) that identifies the user. For more
    #   information about ARNs and how to use ARNs in policies, see [IAM
    #   Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the user
    #   was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] password_last_used
    #   The date and time, in [ISO 8601 date-time format][1], when the
    #   user's password was last used to sign in to an AWS website. For a
    #   list of AWS websites that capture a user's last sign-in time, see
    #   the [Credential Reports][2] topic in the *Using IAM* guide. If a
    #   password is used more than once in a five-minute span, only the
    #   first use is returned in this field. This field is null (not
    #   present) when:
    #
    #   * The user does not have a password
    #
    #   * The password exists but has never been used (at least not since
    #     IAM started tracking this information on October 20th, 2014
    #
    #   * there is no sign-in data associated with the user
    #
    #   This value is returned only in the GetUser and ListUsers actions.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   [2]: http://docs.aws.amazon.com/IAM/latest/UserGuide/credential-reports.html
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/User AWS API Documentation
    #
    class User < Struct.new(
      :path,
      :user_name,
      :user_id,
      :arn,
      :create_date,
      :password_last_used)
      include Aws::Structure
    end

    # Contains information about an IAM user, including all the user's
    # policies and all the IAM groups the user is in.
    #
    # This data type is used as a response element in the
    # GetAccountAuthorizationDetails action.
    #
    # @!attribute [rw] path
    #   The path to the user. For more information about paths, see [IAM
    #   Identifiers][1] in the *Using IAM* guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] user_name
    #   The friendly name identifying the user.
    #   @return [String]
    #
    # @!attribute [rw] user_id
    #   The stable and unique string identifying the user. For more
    #   information about IDs, see [IAM Identifiers][1] in the *Using IAM*
    #   guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The Amazon Resource Name (ARN). ARNs are unique identifiers for AWS
    #   resources.
    #
    #   For more information about ARNs, go to [Amazon Resource Names (ARNs)
    #   and AWS Service Namespaces][1] in the *AWS General Reference*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html
    #   @return [String]
    #
    # @!attribute [rw] create_date
    #   The date and time, in [ISO 8601 date-time format][1], when the user
    #   was created.
    #
    #
    #
    #   [1]: http://www.iso.org/iso/iso8601
    #   @return [Time]
    #
    # @!attribute [rw] user_policy_list
    #   A list of the inline policies embedded in the user.
    #   @return [Array<Types::PolicyDetail>]
    #
    # @!attribute [rw] group_list
    #   A list of IAM groups that the user is in.
    #   @return [Array<String>]
    #
    # @!attribute [rw] attached_managed_policies
    #   A list of the managed policies attached to the user.
    #   @return [Array<Types::AttachedPolicy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/UserDetail AWS API Documentation
    #
    class UserDetail < Struct.new(
      :path,
      :user_name,
      :user_id,
      :arn,
      :create_date,
      :user_policy_list,
      :group_list,
      :attached_managed_policies)
      include Aws::Structure
    end

    # Contains information about a virtual MFA device.
    #
    # @!attribute [rw] serial_number
    #   The serial number associated with `VirtualMFADevice`.
    #   @return [String]
    #
    # @!attribute [rw] base_32_string_seed
    #   The Base32 seed defined as specified in [RFC3548][1]. The
    #   `Base32StringSeed` is Base64-encoded.
    #
    #
    #
    #   [1]: https://tools.ietf.org/html/rfc3548.txt
    #   @return [String]
    #
    # @!attribute [rw] qr_code_png
    #   A QR code PNG image that encodes
    #   `otpauth://totp/$virtualMFADeviceName@$AccountName?secret=$Base32String`
    #   where `$virtualMFADeviceName` is one of the create call arguments,
    #   `AccountName` is the user name if set (otherwise, the account ID
    #   otherwise), and `Base32String` is the seed in Base32 format. The
    #   `Base32String` value is Base64-encoded.
    #   @return [String]
    #
    # @!attribute [rw] user
    #   The IAM user associated with this virtual MFA device.
    #   @return [Types::User]
    #
    # @!attribute [rw] enable_date
    #   The date and time on which the virtual MFA device was enabled.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/iam-2010-05-08/VirtualMFADevice AWS API Documentation
    #
    class VirtualMFADevice < Struct.new(
      :serial_number,
      :base_32_string_seed,
      :qr_code_png,
      :user,
      :enable_date)
      include Aws::Structure
    end

  end
end
