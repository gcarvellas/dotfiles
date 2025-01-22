import subprocess

command = "timeout --preserve-status 0.5 intel_gpu_top -c"
process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

stdout, stderr = process.communicate()

if process.returncode != 143: # SIGTERM
    exit(process.returncode)

output = stdout.decode()

lines = output.strip().split("\n")

header = lines[0].split(",")

# Get all engine type headers
to_search = ["RCS %", "BCS %", "VCS %", "VECS %", "CCS %"]
se_columns_indices = [i for i, col in enumerate(header) if col in to_search]

sum_se = 0

# TODO this value has gone over 100%. Not sure why
values = lines[-1].split(",")
for idx in se_columns_indices:
    sum_se += round(float(values[idx]))

print(sum_se)
