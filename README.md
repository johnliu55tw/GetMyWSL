# Get my environment READY!!

I don't wanna spend a whole day setting up my development environment,
get me my environment NOW!!

## Usage

1. Install Ansible

2. Modify [`hosts.yml`](./hosts.yml) for the local or remote machine to be provisioned.

3. `$ ansible-playbook -i hosts.yml playbooks/playbook.yml`. Added `-K` if you
are running locally and wish Ansible to prompt for `sudo` password.

4. Have a cup of coffee and enjoy the environment ;)

## User configuration variables

* **`env_user`**: User-specific configurations will be installed to this user's home directory.
* **`env_has_x11`**: Whether the system has X11 enabled. This could affect several configurations.
* **`env_has_wayland`**: Whether the system has Wayland enabled. This could affect several configurations.
* **`python_versions`**: Required Python versions to be installed by `pyenv`.
  Default is `2.7.15` and `3.6.8`.

## Requirements on the target system

### User

The user specified by `env_user` must exist.

### SSH accessibility

Ansible must have the ability to access the target system through SSH.
Both username/password and private key authentication work, but you have to change your `hosts.yml` accordingly.

### Python

The target system must have Python installed (Python2 >= 2.6, Python3 >= 3.5).
If the path of the Python interpreter is different from `/usr/bin/python`,
setting the variable `ansible_python_interpreter` on `hosts.yml` to the interpreter's path, e.g:
```
  ansible_python_interpreter: /usr/bin/python3.6
```

### Privilege escalation

The target system must have `sudo` installed (For other options, see
[here](https://docs.ansible.com/ansible/latest/user_guide/become.html#becoming-an-unprivileged-user)).

If the `ansible_user` on the target system requires password to `sudo`,
setting the variable `ansible_become_pass` to the password.

The other way to workaround this is to make the user run `sudo` without entering password.
Modify the sudoers file (using `visudo`, etc.):
```
USERNAME ALL=(ALL) NOPASSWD:ALL
```
