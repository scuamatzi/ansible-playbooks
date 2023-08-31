# Ansible playbooks for servers on cloud and on premise.
Inventory is hidden for security reasons.
It requires the option `-K` only if root password is needed.

### backupetcfolder.yml
It creates a backup of `etc` folder of indicated servers.
> ansible-playbooks playbooks/backupetcfolder.yml -K

Some servers still need password

### checkUpdates.yml
It gets a list of available updates of each server.
> ansible-playbooks playbooks/checkUpdates.yml -K

### createBashAliases.yml
It creates `.bash_aliases` file on linux servers, useful for my work.

`aliases.j2` and `vimexrc.j2` are inside `templates` folder.

### safe_upgrade_servers.yml
It updates Linux servers, either Debian or RedHat based.
> ansible-playbooks playbooks/safe_upgrade_servers.yml -K

### prepare_new_server.yml
It's for new Linux servers. It updates the OS and create aliases.
> ansible-playbooks playbooks/prepare_new_server.yml -K
