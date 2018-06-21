# Scripts to set up tunneling for VNC or Mac screen sharing

A machine with SSH is needed to act as proxy. It needs to be reachable
from both the guest and the host.

The parties should configure the proxy as `PROXY=user@foobar.example.com`
in `~/.screen-sharing.config` and need to have a method of logging in
(for example, the password of user@foobar.example.com, or SSH keys set up).

You can also configure `VNC_SERVER_PORT` on the host side in that same
file, in case VNC is not running at port `5900`.

After configuring, on the host side (which is sharing its screen), run:

`$ ./host.sh`

or double click the Host app.

On the guest side (which is connecting to the shared screen), run:

`$ ./guest.sh`

or double click the Guest app.
