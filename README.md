SSH Access
==========

To give me sudo access to a Ubuntu server.

Run:

```sh
sudo ./create_pgranvold_user_with_sudo_access.sh
```

One liner:
```sh
cd /tmp && git clone https://github.com/granvold/ssh_access.git && cd ssh_access && ./create_pgranvold_user_with_sudo_access.sh && echo 'Patrick Granvold has access' && cd .. && rm -r ssh_access
```
<hr/>

Thanks to [@rorydavidson](https://github.com/rorydavidson) for the idea.
