Serf Membership
=======

This is very simple script for election a leader (primary) from all members tagged with specific role.

# How can i use it?

If you want to use this you should add 2 tags to every `serf agent`:

1. role
2. startedat // unixtimestamp

Based on these 2 tags `serf_membership` select single master from `role` group.

## Usage Example

```python
from serf_membership.client import SerfMembership
members = SerfMembership(role="web")
members.primary()
>>> members.primary()
{'Status': 'alive', 'DelegateCur': 4, 'Addr': '127.0.0.1', 'Tags': {'startedat': 999999999999999, 'role': 'web', 'dc': 'dc1'}, 'ProtocolMax': 3, 'DelegateMin': 2, 'ProtocolMin': 1, 'ProtocolCur': 2, 'Port': 7946, 'DelegateMax': 4, 'Name': 'os3-2.devnodes.eu-bg-sof.startappcloud.com'}
```

# Installation

from source

    # git clone git@github.com:mignev/serf-membership.git
    # cd serf-membership
    # python setup.py install


with pip

    # pip install serf_membership


#Copyright
Copyright (c) 2016 Marian Ignev. See LICENSE for further details.
