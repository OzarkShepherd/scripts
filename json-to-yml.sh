# developed with help from DMackay3 @ github to turn the json produced by flatpak-pip-generator into a yml
#!/bin/bash
python3 -c "
import yaml
import json
with open('python3-litellm.json', 'r') as f:
    yaml_data = json.load(f)
print(yaml.dump(yaml_data, sort_keys=False, default_flow_style=False))" > python3-litellm-2.yml
