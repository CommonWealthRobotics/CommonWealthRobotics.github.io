---
title: Overview
step: 0
layout: post
---

## What is it? ##

The Bowler Protocol is a tool used by the DyIO and the Bowler Board (and hopefully many other devices) to provide a standard way of exposing their functionality, features, and data to another connected device through the use of Remote Procedure Calls and standard interfaces encapsulating sets of functionality that can be queried by the connecting device at runtime.

Each Device maintains a collection of functions identified by a 4 byte RPC value. Each function can take and return an arbitrary amount of arguments. These RPCs are then organized into groups with the 4 byte RPC being unique to that group. These groups are called Namespaces and are intended to function as interfaces. For Example, The presence of bcs.cartesian indicates that the device can receive position commands and be queried for it's current position, etc.

<img src="/img/rpc-explorer.png" style="img-responsive">

## How does Introspection work? ##

Each device must support name-space introspection and can optionally support RPC introspection.



### Namespace Introspection ###

Each device has a namespace called bcs.core with two RPCs. One which is a simple ping and the other which allows the connecting device to get a list of namespaces the device implements.

<img src="/img/bcsrpc_rpc.png" style="img-responsive">

### RPC Introspection ###

the bcs.rpc Namespace allows a device to get the 4 byte RPC identifier and the amount of and types of all the calling and return arguments.

<img src="/img/rpcfunc.png" style="img-responsive">

<img src="/img/rpcfunc2.png" style="img-responsive">