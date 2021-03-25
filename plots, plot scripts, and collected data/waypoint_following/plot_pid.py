#!/usr/bin/python3
# Bash commands to clean up input files
# cat simu_pid.yaml | grep -w x | sed 's/    x: //g' > simu_pid_x.txt
# cat simu_pid.yaml | grep -w y | sed 's/    y: //g' > simu_pid_y.txt
# cat simu_pid.yaml | grep -w yaw | sed 's/    yaw: //g' > simu_pid_yaw.txt
# cat simu_pid.yaml | grep -w secs | sed 's/    secs: //g' > simu_pid_secs.txt
# cat simu_pid.yaml | grep -w nsecs | sed 's/    nsecs: //g' > simu_pid_nsecs.txt
#
# cat real_pid.yaml | grep -w x | sed 's/    x: //g' > real_pid_x.txt
# cat real_pid.yaml | grep -w y | sed 's/    y: //g' > real_pid_y.txt
# cat real_pid.yaml | grep -w yaw | sed 's/    yaw: //g' > real_pid_yaw.txt
# cat real_pid.yaml | grep -w secs | sed 's/    secs: //g' > real_pid_secs.txt
# cat real_pid.yaml | grep -w nsecs | sed 's/    nsecs: //g' > real_pid_nsecs.txt

import matplotlib.pyplot as plt
from matplotlib.ticker import FormatStrFormatter
import matplotlib.patches as patches
import numpy as np

simu_x_file = 'data/simu_pid_x.txt'
simu_y_file = 'data/simu_pid_y.txt'
real_x_file = 'data/real_pid_x.txt'
real_y_file = 'data/real_pid_y.txt'
plot_file = 'plots/pid.eps'

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

    x_w = [0.1002142315, 0.20644131689, 0.17236847817999998, 0.09319923529499999, 0.0, 0.001002142315, -0.08417995445999998, 0.001002142315, -0.1603427704, -0.1603427704]
    y_w = [0.0030064269449999997, 0.0030064269449999997, 0.0801713852, 0.11825279317, 0.11725065085499999, 0.001002142315, -0.11825279317, -0.11624850853999999, -0.06814567742, 0.051109258064999996]#, 0.121259220115]

    # values for making ticks in x and y axis
    xticks = np.arange(-0.3, 0.3, 0.05)
    yticks = np.arange(-0.2, 0.2, 0.05)

    fig, ax = plt.subplots()

    plt.rcParams["font.family"] = "serif"
    ax.plot(xs, ys, color='b', label='simu')
    ax.plot(xr, yr, color='g', label='real')
    ax.scatter(x_w, y_w, color='r', label='waypoints')
    plt.xlabel("x position [m]")
    plt.ylabel("y position [m]")
    plt.title("Real vs. simulated Thymio waypoint following position tracking")
    ax.yaxis.set_major_formatter(FormatStrFormatter('%.2f'))
    ax.xaxis.set_major_formatter(FormatStrFormatter('%.2f'))
    ax.xaxis.set_ticks(xticks)
    ax.yaxis.set_ticks(yticks)
    ax.legend()
    plt.grid()
    ax.axis([-0.3, 0.3, -0.215, 0.215]) # [xstart, xend, ystart, yend]
    # Create a Rectangle patch
    rect1 = patches.Rectangle((-0.295, -0.21), 0.59, 0.42, linewidth=2, edgecolor='black', facecolor='none')
    rect2 = patches.Rectangle((-0.295+0.028, -0.21+0.028), 0.59-0.028*2, 0.42-0.028*2, linewidth=2, edgecolor='black', facecolor='none')
    # Add the patch to the Axes
    ax.add_patch(rect1)
    ax.add_patch(rect2)

    plt.savefig(plot_file)

    plt.show()

if __name__ == '__main__':
    main()
