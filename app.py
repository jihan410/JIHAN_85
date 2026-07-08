from hopx_ai.template import Template, BuildOptions
import os

# Create template from base image
template = Template()
template.from_python_image("3.11-slim")

# Add build steps
template.run_cmd("pip install numpy pandas matplotlib")

# Build template
options = BuildOptions(
    name="jihannetwork",
    api_key=os.getenv("hopx_live_e1iQIysvnkHB.SxuDg-_M1egPTQioUceIWh-9gIAI6fcxAOZpbWOujGo"),
    cpu=8,
    memory=12288,
    disk_gb=100,
    context_path=os.getcwd()  # Required: working directory for file operations
)

result = await Template.build(template, options)
print(f"Template built: {result.template_id}")
print(f"Build ID: {result.build_id}")
