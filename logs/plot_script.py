import matplotlib.pyplot as plt
import numpy as np

x_file = 'simu_pid2_x.txt'
y_file = 'simu_pid2_y.txt'
plot_file = 'simu_pid2.eps'

with open(x_file, 'r') as f:
    x = f.read().split('\n')

with open(y_file, 'r') as f:
    y = f.read().split('\n')

x = np.array(x)
y = np.array(y)
x = np.delete(x,-1)
y = np.delete(y,-1)

x = x.astype(float)
y = y.astype(float)

plt.plot(x,y)
plt.savefig(plot_file)
plt.show()


x_w = [0.1002142315, 0.20644131689, 0.17236847817999998, 0.09319923529499999, 0.0, 0.001002142315, -0.08417995445999998, 0.001002142315, -0.1603427704, -0.1603427704]
y_w = [0.0030064269449999997, 0.0030064269449999997, 0.0801713852, 0.11825279317, 0.11725065085499999, 0.001002142315, -0.11825279317, -0.11624850853999999, -0.06814567742, 0.051109258064999996, 0.121259220115]


cat simu_obs1.yaml | grep -w x | sed 's/    x: //g' > simu_obs1_x.txt
cat simu_obs1.yaml | grep -w y | sed 's/    y: //g' > simu_obs1_y.txt
cat simu_obs1.yaml | grep -w yaw | sed 's/    yaw: //g' > simu_obs1_yaw.txt
cat simu_obs1.yaml | grep -w secs | sed 's/    secs: //g' > simu_obs1_secs.txt


cat simu_obs2.yaml | grep -w x | sed 's/    x: //g' > simu_obs2_x.txt
cat simu_obs2.yaml | grep -w y | sed 's/    y: //g' > simu_obs2_y.txt
cat simu_obs2.yaml | grep -w yaw | sed 's/    yaw: //g' > simu_obs2_yaw.txt
cat simu_obs2.yaml | grep -w secs | sed 's/    secs: //g' > simu_obs2_secs.txt


cat simu_pid1.yaml | grep -w x | sed 's/    x: //g' > simu_pid1_x.txt
cat simu_pid1.yaml | grep -w y | sed 's/    y: //g' > simu_pid1_y.txt
cat simu_pid1.yaml | grep -w yaw | sed 's/    yaw: //g' > simu_pid1_yaw.txt
cat simu_pid1.yaml | grep -w secs | sed 's/    secs: //g' > simu_pid1_secs.txt


cat simu_pid2.yaml | grep -w x | sed 's/    x: //g' > simu_pid2_x.txt
cat simu_pid2.yaml | grep -w y | sed 's/    y: //g' > simu_pid2_y.txt
cat simu_pid2.yaml | grep -w yaw | sed 's/    yaw: //g' > simu_pid2_yaw.txt
cat simu_pid2.yaml | grep -w secs | sed 's/    secs: //g' > simu_pid2_secs.txt


cat real_pid.yaml | grep -w x | sed 's/    x: //g' > real_pid_x.txt
cat real_pid.yaml | grep -w y | sed 's/    y: //g' > real_pid_y.txt
cat real_pid.yaml | grep -w yaw | sed 's/    yaw: //g' > real_pid_yaw.txt
cat real_pid.yaml | grep -w secs | sed 's/    secs: //g' > real_pid_secs.txt


cat real_obs1.yaml | grep -w x | sed 's/    x: //g' > real_obs1_x.txt
cat real_obs1.yaml | grep -w y | sed 's/    y: //g' > real_obs1_y.txt
cat real_obs1.yaml | grep -w yaw | sed 's/    yaw: //g' > real_obs1_yaw.txt
cat real_obs1.yaml | grep -w secs | sed 's/    secs: //g' > real_obs1_secs.txt


cat real_obs2.yaml | grep -w x | sed 's/    x: //g' > real_obs2_x.txt
cat real_obs2.yaml | grep -w y | sed 's/    y: //g' > real_obs2_y.txt
cat real_obs2.yaml | grep -w yaw | sed 's/    yaw: //g' > real_obs2_yaw.txt
cat real_obs2.yaml | grep -w secs | sed 's/    secs: //g' > real_obs2_secs.txt

