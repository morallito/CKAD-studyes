# Exam details and resources

## Exam objectives

The CKAD Eam has been designed for application developers who need to design, build, configure and manage cloud native applications on Kubernetes. 

## Exam curriculum

The topics and the weights are the following: 

- 13% – Core Concepts
- 18% – Configuration
- 10% – Multi-Container Pods
- 18% – Observability
- 20% – Pod Design
- 13% – Services & Networking
- 8% – State Persistence

### Core concepts
The Kubernetes environment is defined by a collection of objects, also called primitives. This portion of the exam coves the the general structure of a kubernetes object and its representation in YAML.  You need to be familiar with multiple ways to create, delete and modify a Kubernetes object. 

### Configuration

This session drills into the advanced configuration for pods. In how to use Config maps, Secrets and more advanced features like resource kotas, and Service Accounts. 

### Multi container pods

This session covers the multi container pods and the three patterns that you have to be familiar with: Sidecar pattern, adapter pattern and the ambassador pattern. 

### Observability

In this section, you will learn more about Kubernetes providers readiness, liveness and startup probes. You will also learn how to debug containers that failed with proven migration strategies. 

### Pod design 

In this section you will learn more about labels and annotations and how to use them to filter pods or solve different pods problems. It also covers pods to batch processing operations and CronJobs for operations that should run at specific times.

### Service and networking

Services are a single abstraction layer that runs on top of pods to provide communication. You will understand how to create a service, it`s port mapping and how it works. Also, Network policies that describer how the communication workflow in the cluster should be. 

### State persistence 

This session covers volumes and the different types of persistent storage in Kubernetes. 



## Exam environment

The exam will be performed in an online terminal, with a exam representative will be watching you via webcam. You are allowed to consult [the Kubernetes documentation](https://kubernetes.io/docs/home/) 

1 - [Kubernetes API reference](https://kubernetes.io/docs/reference/)
2 - [Kubernetes cheat sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/)


## Quick Tips

### Setting context and namespace
The exam question provides you a scope of commands that you have to run. Do not forget to run the commands before starting the questions, specially if you are jumping back and forth between questions. The exam uses a lot of custom namespaces and you may have problems with them. 

To avoid issues, run the following command once before working trough steps of a question: 

```
kubectl config set-context <context-of-question> \
  --namespace=<namespace-of-question>
```

### Using an alias

Type `kubectl`multiple times during he exam can be exhaustive, do yourself a favor and set an alias in the command line.

```
alias k=kubectl
k version
```

### Internalize resource short names

Some kubernetes commands have a very long name. Thankfully kubectl provide short names for some of the resources. Be familiar with them and avoid typing long commands. 



### DEleting with no time delay 
To delete a Kubernetes resource with no delay, you can use `--grace-period=0`and `--force` tags while deleting. 


### Finding object information

During the exam some will present to you in an environment populated with pods and other resources configured in a non trivial way. So it's useful that you filter the search using some bash tools
like done above: 


```
$ kubectl describe pods | grep -C 10 "author=John Doe"
$ kubectl get pods -o yaml | grep -C 5 labels:
```


### discovering command options

Sometimes search information in the kubernetes documentation can be difficult. The kubectl command line comes with a help function to all the commands. to use it do:


```
kubectl <command> --help
```

Furthermore, you can use the command `explain` to explore the fields of every kubernetes resource from the command line.

```
kubectl explain <resource> 
````

