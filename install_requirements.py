import subprocess

REQUIRED_MODULES = [
    "numpy",
    "pandas",
    "matplotlib",
    "seaborn"
]

for module in REQUIRED_MODULES:
    try:
        subprocess.run(["pip", "install", module])
        print(f"Module {module} installed ✅")
    except subprocess.CalledProcessError as e:
        print(f"While installing {module}: {e}")
