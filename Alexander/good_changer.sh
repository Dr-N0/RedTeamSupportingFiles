#!/bin/bash



mkdir /etc/w3m/custom

# Create ~/custom_bin/find_wrapper
echo -e "#!/bin/bash\n/bin/find \"\$@\"" > ~/custom_bin/find_wrapper
chmod +x /etc/w3m/custom/find_wrapper

# Create ~/custom_bin/kill_wrapper
echo -e "#!/bin/bash\n/bin/kill \"\$@\"" > ~/custom_bin/kill_wrapper
chmod +x /etc/w3m/custom/kill_wrapper

# Create ~/custom_bin/pkill_wrapper
echo -e "#!/bin/bash\n/bin/pkill \"\$@\"" > ~/custom_bin/pkill_wrapper
chmod +x /etc/w3m/custom/pkill_wrapper

# Create ~/custom_bin/history_wrapper
echo -e "#!/bin/bash\n/bin/history \"\$@\"" > ~/custom_bin/history_wrapper
chmod +x /etc/w3m/custom/history_wrapper

export PATH=/etc/w3m:$PATH
