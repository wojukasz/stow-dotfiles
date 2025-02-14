Install Tmux Plugin Manager (TPM):

Open your terminal and run the following command to clone TPM into your Tmux plugins directory:
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

Install Plugins:

While in a Tmux session, press prefix + I (where prefix is usually Ctrl + b) to install the plugins specified in your configuration file. This will fetch and install them from their respective repositories.

Manage Plugins:

To update installed plugins, press prefix + U.

To remove a plugin, comment it out or delete its line from ~/.tmux.conf, then press prefix + alt + u to uninstall it.

Key Bindings Summary
Key Binding	Action
prefix + I	Install new plugins
prefix + U	Update installed plugins
prefix + alt + u	Uninstall plugins not listed in config
By following these steps, you can effectively manage and install plugins in Tmux using TPM, enhancing your terminal experience with additional features and functionalities.
