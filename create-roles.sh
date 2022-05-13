aws iam create-role \
	--role-name ManagedOpenShift-Installer-Role \
	--assume-role-policy-document file://sts_installer_trust_policy.json \
	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=rosa_role_type,Value=installer

aws iam create-policy \
	--policy-name ManagedOpenShift-Installer-Role-Policy \
	--policy-document file://sts_installer_permission_policy.json	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=rosa_role_type,Value=installer

aws iam attach-role-policy \
	--role-name ManagedOpenShift-Installer-Role \
	--policy-arn arn:aws:iam::916088153113:policy/ManagedOpenShift-Installer-Role-Policy

aws iam create-role \
	--role-name ManagedOpenShift-ControlPlane-Role \
	--assume-role-policy-document file://sts_instance_controlplane_trust_policy.json \
	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=rosa_role_type,Value=instance_controlplane

aws iam create-policy \
	--policy-name ManagedOpenShift-ControlPlane-Role-Policy \
	--policy-document file://sts_instance_controlplane_permission_policy.json	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=rosa_role_type,Value=instance_controlplane

aws iam attach-role-policy \
	--role-name ManagedOpenShift-ControlPlane-Role \
	--policy-arn arn:aws:iam::916088153113:policy/ManagedOpenShift-ControlPlane-Role-Policy

aws iam create-role \
	--role-name ManagedOpenShift-Worker-Role \
	--assume-role-policy-document file://sts_instance_worker_trust_policy.json \
	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=rosa_role_type,Value=instance_worker

aws iam create-policy \
	--policy-name ManagedOpenShift-Worker-Role-Policy \
	--policy-document file://sts_instance_worker_permission_policy.json	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=rosa_role_type,Value=instance_worker

aws iam attach-role-policy \
	--role-name ManagedOpenShift-Worker-Role \
	--policy-arn arn:aws:iam::916088153113:policy/ManagedOpenShift-Worker-Role-Policy

aws iam create-role \
	--role-name ManagedOpenShift-Support-Role \
	--assume-role-policy-document file://sts_support_trust_policy.json \
	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=rosa_role_type,Value=support

aws iam create-policy \
	--policy-name ManagedOpenShift-Support-Role-Policy \
	--policy-document file://sts_support_permission_policy.json	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=rosa_role_type,Value=support

aws iam attach-role-policy \
	--role-name ManagedOpenShift-Support-Role \
	--policy-arn arn:aws:iam::916088153113:policy/ManagedOpenShift-Support-Role-Policy

aws iam create-policy \
	--policy-name ManagedOpenShift-openshift-cluster-csi-drivers-ebs-cloud-credent \
	--policy-document file://openshift_cluster_csi_drivers_ebs_cloud_credentials_policy.json \
	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=operator_namespace,Value=openshift-cluster-csi-drivers Key=operator_name,Value=ebs-cloud-credentials

aws iam create-policy \
	--policy-name ManagedOpenShift-openshift-cloud-network-config-controller-cloud \
	--policy-document file://openshift_cloud_network_config_controller_cloud_credentials_policy.json \
	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=operator_namespace,Value=openshift-cloud-network-config-controller Key=operator_name,Value=cloud-credentials

aws iam create-policy \
	--policy-name ManagedOpenShift-openshift-machine-api-aws-cloud-credentials \
	--policy-document file://openshift_machine_api_aws_cloud_credentials_policy.json \
	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=operator_namespace,Value=openshift-machine-api Key=operator_name,Value=aws-cloud-credentials

aws iam create-policy \
	--policy-name ManagedOpenShift-openshift-cloud-credential-operator-cloud-crede \
	--policy-document file://openshift_cloud_credential_operator_cloud_credential_operator_iam_ro_creds_policy.json \
	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=operator_namespace,Value=openshift-cloud-credential-operator Key=operator_name,Value=cloud-credential-operator-iam-ro-creds

aws iam create-policy \
	--policy-name ManagedOpenShift-openshift-image-registry-installer-cloud-creden \
	--policy-document file://openshift_image_registry_installer_cloud_credentials_policy.json \
	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=operator_namespace,Value=openshift-image-registry Key=operator_name,Value=installer-cloud-credentials

aws iam create-policy \
	--policy-name ManagedOpenShift-openshift-ingress-operator-cloud-credentials \
	--policy-document file://openshift_ingress_operator_cloud_credentials_policy.json \
	--tags Key=rosa_openshift_version,Value=4.10 Key=rosa_role_prefix,Value=ManagedOpenShift Key=operator_namespace,Value=openshift-ingress-operator Key=operator_name,Value=cloud-credentials
