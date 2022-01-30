# Kubernetes primitives


Primitives are the basic building blocks anchored in the Kuernetes architecture for creating and operate an application in the platform.

Some examples of primitives are:

1 - Pods
2 - Deployments 
3 - Services. 


Each and every primitive in kubernetes follows a general structure: 

```
apiVersion: 
    Defines the structure of a primitive and uses it to validate the correctness of the data. 

kind: 
    The kind that defines the primitive, ex:  Pod or a Service. 

metadata: 
    Describer higher level information such as resource name, which namespace it lives on and tags. 

spec:
    Describe the specs of the resource, such as the number of replicas, the container image that it should use and etc. 

status:

    Describe the current status of a kubernetes resource. When not ready, shows as {} 
```

### Kubectl command 

```
kubectl [command] [type] [name] [flags]
```

- Command:
    Specifies the option that you want to run, like create, delete, apply, and etc. 

- Resource type:
    The resource type that the command should be applied, like pods, deployment, and etc.

- Name: 
    The resource name

- Flags:




## Object management 

### Imperative approach

The imperative approach allows you to create a kubernetes resource without having to create a YAML file. You will use `kubectl run`or `kubectl create` commands to 
create objects on the fly. 

```
kubectl run frontend --image=nginx --restart=Never --port=80
```

### Declarative approach 

The declarative approach creates objects from manifest files, you will use `kubectl apply`or `kubectl create` commands to do so. 

### Hybrid approach 

Sometimes you want to go with a hybrid approach, using the imperative method to create the manifest file, editing it and then applying using the declarative approach. 
