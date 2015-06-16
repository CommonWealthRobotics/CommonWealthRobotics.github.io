---
title: Packet Format
step: 1
layout: post
---

## Packet Format ##

|     Size       |      Name                       |        Description      |
|----------------|---------------------------------|-------------------------|
| 1b             | Protocol Revision               | The revision of the Bowler protocol to use |
| 6b             | Target Device ID                | The IEEE OUI-48 MAC address of the recipient device |
| 1b             | Packet Type                     | Metadata pertaining to how the packet will affect device state. |
| 1bit           | Direction Flag                  | Indicates the packet as a request or a response. |
| 7bit           | Namespace Collision Resolution  | Used to resolve namespace collisions when multiple namespaces have similarly named RPCs. |
| 1b             | Data Length                     | The length of data to come including the RPC. |
| 1b             | Header Checksum                 | The checksum to determine the validity of the packet.|
| 4b             | RPC                             | The Bowler RPC call identifier. |
| 0b to 251b     | Packet Data					   | The rest of the data, Arguments or return values. |

### DEVICE ID ###

The bowler address is a globally unique address across all bowler devices. Now two devices should have the same 6 byte address. This field contains the address of the Device that is being communicated with.

One address out of all the possible addresses is treated differently. This address is the Link Local Address. It consists of all zeros (00:00:00:00:00:00) and any bowler device will respond to it.

### Packet Type ###

A packet can either be Asynchronous (spontaneous device to host) or Synchronous (a host initiated request or a response to one).

This is further divided into State Changing and non State Changing. State changing packets will cause the device to do something, to change it's state. For Example, setting a pin state would be state changing but querying it's state wouldn't be.

Also, there are two levels of priority (low and high)

 * POST(`0x20`)		Synchronous, Device State Changing
 * GET(`0x10`) 		Synchronous, query for information, non state changing
 * STATUS(`0x00`) 	Synchronous, High priority non state changing
 * CRITICAL(`0x30`) Synchronous, High Priority State Changing
 * ASYNC(`0x40`) 	Asynchronous, high priority, state changing.

### Direction Flag ###

Packets travel along a bidirectional link between a Host and a Device. The Direction flag specifies the direction the packet is traveling. a value of 0 indicates a packet is traveling from Host to Device. Likewise, A value of 1 indicates Device to host.

### Collision Resolution Number ###

In the event that a bowler device implements two name-spaces with identical RPCs, The device will return an error packet if this field is left zero. To resolve this collision, the host must supply the index of the desired namespace. This index is the same as the index used in bcs.core._nms

### Sources and Examples ###

The code can be found on our company github page in the c-bowler and java-bowler projects.