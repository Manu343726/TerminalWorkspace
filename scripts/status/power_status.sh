
#!/bin/bash

if [[ $(acpi -a | grep "off-line" -c) > 0 ]]; then
    echo $(acpi | grep -o "[0-9]*%") "(Batt)"
else
    echo $(acpi | grep -o "[0-9]*%") "(A/C)"
fi

