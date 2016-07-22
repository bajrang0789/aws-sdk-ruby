# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
module Aws
  module AutoScaling
    class LaunchConfiguration

      extend Aws::Deprecations

      # @overload def initialize(name, options = {})
      #   @param [String] name
      #   @option options [Client] :client
      # @overload def initialize(options = {})
      #   @option options [required, String] :name
      #   @option options [Client] :client
      def initialize(*args)
        options = Hash === args.last ? args.pop.dup : {}
        @name = extract_name(args, options)
        @data = options.delete(:data)
        @client = options.delete(:client) || Client.new(options)
      end

      # @!group Read-Only Attributes

      # @return [String]
      def name
        @name
      end
      alias :launch_configuration_name :name

      # The Amazon Resource Name (ARN) of the launch configuration.
      # @return [String]
      def launch_configuration_arn
        data.launch_configuration_arn
      end

      # The ID of the Amazon Machine Image (AMI).
      # @return [String]
      def image_id
        data.image_id
      end

      # The name of the key pair.
      # @return [String]
      def key_name
        data.key_name
      end

      # The security groups to associate with the instances.
      # @return [Array<String>]
      def security_groups
        data.security_groups
      end

      # The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances
      # to. This parameter can only be used if you are launching EC2-Classic
      # instances. For more information, see [ClassicLink][1] in the *Amazon
      # Elastic Compute Cloud User Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
      # @return [String]
      def classic_link_vpc_id
        data.classic_link_vpc_id
      end

      # The IDs of one or more security groups for the VPC specified in
      # `ClassicLinkVPCId`. This parameter is required if you specify a
      # ClassicLink-enabled VPC, and cannot be used otherwise. For more
      # information, see [ClassicLink][1] in the *Amazon Elastic Compute Cloud
      # User Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html
      # @return [Array<String>]
      def classic_link_vpc_security_groups
        data.classic_link_vpc_security_groups
      end

      # The user data available to the instances.
      # @return [String]
      def user_data
        data.user_data
      end

      # The instance type for the instances.
      # @return [String]
      def instance_type
        data.instance_type
      end

      # The ID of the kernel associated with the AMI.
      # @return [String]
      def kernel_id
        data.kernel_id
      end

      # The ID of the RAM disk associated with the AMI.
      # @return [String]
      def ramdisk_id
        data.ramdisk_id
      end

      # A block device mapping, which specifies the block devices for the
      # instance.
      # @return [Array<Types::BlockDeviceMapping>]
      def block_device_mappings
        data.block_device_mappings
      end

      # Controls whether instances in this group are launched with detailed
      # monitoring.
      # @return [Types::InstanceMonitoring]
      def instance_monitoring
        data.instance_monitoring
      end

      # The price to bid when launching Spot Instances.
      # @return [String]
      def spot_price
        data.spot_price
      end

      # The name or Amazon Resource Name (ARN) of the instance profile
      # associated with the IAM role for the instance.
      # @return [String]
      def iam_instance_profile
        data.iam_instance_profile
      end

      # The creation date and time for the launch configuration.
      # @return [Time]
      def created_time
        data.created_time
      end

      # Controls whether the instance is optimized for EBS I/O (`true`) or not
      # (`false`).
      # @return [Boolean]
      def ebs_optimized
        data.ebs_optimized
      end

      # \[EC2-VPC\] Indicates whether to assign a public IP address to each
      # instance.
      # @return [Boolean]
      def associate_public_ip_address
        data.associate_public_ip_address
      end

      # The tenancy of the instance, either `default` or `dedicated`. An
      # instance with `dedicated` tenancy runs in an isolated, single-tenant
      # hardware and can only be launched into a VPC.
      # @return [String]
      def placement_tenancy
        data.placement_tenancy
      end

      # @!endgroup

      # @return [Client]
      def client
        @client
      end

      # Loads, or reloads {#data} for the current {LaunchConfiguration}.
      # Returns `self` making it possible to chain methods.
      #
      #     launch_configuration.reload.data
      #
      # @return [self]
      def load
        resp = @client.describe_launch_configurations(launch_configuration_names: [@name])
        @data = resp.launchconfigurations[0]
        self
      end
      alias :reload :load

      # @return [Types::LaunchConfiguration]
      #   Returns the data for this {LaunchConfiguration}. Calls
      #   {Client#describe_launch_configurations} if {#data_loaded?} is `false`.
      def data
        load unless @data
        @data
      end

      # @return [Boolean]
      #   Returns `true` if this resource is loaded.  Accessing attributes or
      #   {#data} on an unloaded resource will trigger a call to {#load}.
      def data_loaded?
        !!@data
      end

      # @!group Actions

      # @param [Hash] options ({})
      # @return [EmptyStructure]
      def delete(options = {})
        options = options.merge(launch_configuration_name: @name)
        resp = @client.delete_launch_configuration(options)
        resp.data
      end

      # @deprecated
      # @api private
      def identifiers
        { name: @name }
      end
      deprecated(:identifiers)

      private

      def extract_name(args, options)
        value = args[0] || options.delete(:name)
        case value
        when String then value
        when nil then raise ArgumentError, "missing required option :name"
        else
          msg = "expected :name to be a String, got #{value.class}"
          raise ArgumentError, msg
        end
      end

      class Collection

        include Aws::Resources::Collection

        # @return [Enumerator<LaunchConfiguration>]
        def each(&block)
          enum = super
          enum.each(&block) if block
          enum
        end

      end
    end
  end
end