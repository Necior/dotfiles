#!/usr/bin/env nix-shell
#!nix-shell -i python -p python39Packages.diagrams

from diagrams import Cluster, Diagram
from diagrams.generic.device import Tablet
from diagrams.generic.network import Firewall
from diagrams.k8s.infra import Node
from diagrams.k8s.controlplane import KProxy


with Diagram("My K8s infrastructure"):
    end_user = Tablet("end user")
    firewall = Firewall("cloud firewall")

    with Cluster("Kubernetes cluster"):
        with Cluster("main node"):
            proxy1 = KProxy()
            node1 = Node("x86_64")
            proxy1 >> node1

        node2 = Node("aarch64")
        proxy1 >> node2

    end_user >> firewall >> proxy1
