#!/usr/bin/python3
# Bash commands to clean up input files
# cat simu_obs1.yaml | grep -w x | sed 's/    x: //g' > simu_obs1_x.txt
# cat simu_obs1.yaml | grep -w y | sed 's/    y: //g' > simu_obs1_y.txt
# cat simu_obs1.yaml | grep -w yaw | sed 's/    yaw: //g' > simu_obs1_yaw.txt
# cat simu_obs1.yaml | grep -w secs | sed 's/    secs: //g' > simu_obs1_secs.txt
# cat simu_obs1.yaml | grep -w nsecs | sed 's/    nsecs: //g' > simu_obs1_nsecs.txt
#
# cat simu_obs2.yaml | grep -w x | sed 's/    x: //g' > simu_obs2_x.txt
# cat simu_obs2.yaml | grep -w y | sed 's/    y: //g' > simu_obs2_y.txt
# cat simu_obs2.yaml | grep -w yaw | sed 's/    yaw: //g' > simu_obs2_yaw.txt
# cat simu_obs2.yaml | grep -w secs | sed 's/    secs: //g' > simu_obs2_secs.txt
# cat simu_obs2.yaml | grep -w nsecs | sed 's/    nsecs: //g' > simu_obs2_nsecs.txt
#
# cat real_obs1.yaml | grep -w x | sed 's/    x: //g' > real_obs1_x.txt
# cat real_obs1.yaml | grep -w y | sed 's/    y: //g' > real_obs1_y.txt
# cat real_obs1.yaml | grep -w yaw | sed 's/    yaw: //g' > real_obs1_yaw.txt
# cat real_obs1.yaml | grep -w secs | sed 's/    secs: //g' > real_obs1_secs.txt
# cat real_obs1.yaml | grep -w nsecs | sed 's/    nsecs: //g' > real_obs1_nsecs.txt
#
# cat real_obs2.yaml | grep -w x | sed 's/    x: //g' > real_obs2_x.txt
# cat real_obs2.yaml | grep -w y | sed 's/    y: //g' > real_obs2_y.txt
# cat real_obs2.yaml | grep -w yaw | sed 's/    yaw: //g' > real_obs2_yaw.txt
# cat real_obs2.yaml | grep -w secs | sed 's/    secs: //g' > real_obs2_secs.txt
# cat real_obs2.yaml | grep -w nsecs | sed 's/    nsecs: //g' > real_obs2_nsecs.txt

import matplotlib.pyplot as plt
from matplotlib.ticker import FormatStrFormatter
import matplotlib.patches as patches
import numpy as np

simu_x_file = 'simu_obs2_x.txt'
simu_y_file = 'simu_obs2_y.txt'
real_x_file = 'real_obs2_x.txt'
real_y_file = 'real_obs2_y.txt'
plot_file = 'obstacle.eps'

def main():
    with open(simu_x_file, 'r') as f:
        xs = f.read().split('\n')

    with open(simu_y_file, 'r') as f:
        ys = f.read().split('\n')

    with open(real_x_file, 'r') as f:
        xr = f.read().split('\n')

    with open(real_y_file, 'r') as f:
        yr = f.read().split('\n')

    xs = np.array(xs)
    ys = np.array(ys)
    xr = np.array(xr)
    yr = np.array(yr)

    xs = np.delete(xs,-1)
    ys = np.delete(ys,-1)
    xr = np.delete(xr,-1)
    yr = np.delete(yr,-1)

    xs = xs.astype(float)
    ys = ys.astype(float)
    xr = xr.astype(float)
    yr = yr.astype(float)

    # values for making ticks in x and y axis
    xticks = np.arange(-0.3, 0.3, 0.05)
    yticks = np.arange(-0.2, 0.2, 0.05)

    fig, ax = plt.subplots()

    plt.rcParams["font.family"] = "serif"
    ax.plot(xs, ys, color='b', label='simu')
    ax.plot(xr, yr, color='g', label='real')
    plt.xlabel("x position [m]")
    plt.ylabel("y position [m]")
    plt.title("Real vs. simulated Thymio obstacle avoidance position tracking")
    ax.yaxis.set_major_formatter(FormatStrFormatter('%.2f'))
    ax.xaxis.set_major_formatter(FormatStrFormatter('%.2f'))
    ax.xaxis.set_ticks(xticks)
    ax.yaxis.set_ticks(yticks)
    ax.legend()
    plt.grid()
    ax.axis([-0.3, 0.3, -0.215, 0.215]) # [xstart, xend, ystart, yend]
    # Create a Rectangle patch for the box and brick
    rect1 = patches.Rectangle((-0.295, -0.21), 0.59, 0.42, linewidth=2, edgecolor='black', facecolor='none')
    rect2 = patches.Rectangle((-0.295+0.028, -0.21+0.028), 0.59-0.028*2, 0.42-0.028*2, linewidth=2, edgecolor='black', facecolor='none')
    rect3 = patches.Rectangle((0.002-0.023/2, -0.04-0.045/2), 0.023, 0.045, linewidth=1, edgecolor='red', facecolor='red')
    # Add the patches to the axes
    ax.add_patch(rect1)
    ax.add_patch(rect2)
    ax.add_patch(rect3)

    plt.savefig(plot_file)

    plt.show()

if __name__ == '__main__':
    main()
