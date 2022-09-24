import re
import numpy as np
import matplotlib.pyplot as plt

with open("cyl_extras.dat", "r") as f_obj:
    lines = f_obj.readlines()

data = []
for line in lines:
    aux = line.rstrip("\n")
    aux = re.split(r"\s+", aux)
    data.append([float(i) for i in aux])
  

data = np.array(data)
data = data[data[:, 0] == 1]

ang = data[:, 1]
vol = data[:, 3]
new_dat = np.array([ang, vol*1e9]).T
new_dat = new_dat[::100]
np.savetxt("out.dat", new_dat, fmt="%.2f")
plt.scatter(new_dat[:, 0], new_dat[:,1])
plt.show()
