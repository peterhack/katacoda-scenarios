# Dynatrace OneAgent Operator

The Dynatrace OneAgent Operator has been built using the [Operator SDK](https://github.com/operator-framework/operator-sdk/blob/master/README.md) which is an OpenSource toolkit to manage Kubernetes native applications.  The OneAgent is a Class 5 operator built in GO.  For more information specific to this operator you can visit the [github repo](https://github.com/dynatrace/dynatrace-oneagent-operator).

[Operator SDK](dynatrace-k8s-operator/assets/operator_logo.png)

Create the necessary objects for OneAgent Operator. OneAgent Operator acts on its separate namespace dynatrace. It holds the operator deployment and all dependent objects like permissions, custom resources and the corresponding DaemonSet. You can also observe the logs of OneAgent Operator.

[OneAgent Operator Diagram](dynatrace-k8s-operator/assets/oneagent-operator.png)