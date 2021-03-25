#!/usr/bin/python3

import matplotlib.pyplot as plt
from matplotlib.ticker import FuncFormatter, MultipleLocator, FormatStrFormatter
import matplotlib.patches as patches
import numpy as np

simu_x_file = 'simu_pid_secs.txt'
simu_xn_file = 'simu_pid_nsecs.txt'
simu_y_file = 'simu_pid_yaw.txt'
real_x_file = 'real_pid_secs.txt'
real_xn_file = 'real_pid_nsecs.txt'
real_y_file = 'real_pid_yaw.txt'
plot_file = 'pid_yaw.eps'

def main():
    with open(simu_x_file, 'r') as f:
        xs = f.read().split('\n')

    with open(simu_xn_file, 'r') as f:
        xsn = f.read().split('\n')

    with open(simu_y_file, 'r') as f:
        ys = f.read().split('\n')

    with open(real_x_file, 'r') as f:
        xr = f.read().split('\n')

    with open(real_xn_file, 'r') as f:
        xrn = f.read().split('\n')

    with open(real_y_file, 'r') as f:
        yr = f.read().split('\n')

    xs = np.array(xs)
    xsn = np.array(xsn)
    ys = np.array(ys)
    xr = np.array(xr)
    xrn = np.array(xrn)
    yr = np.array(yr)

    xs = np.delete(xs,-1)
    xsn = np.delete(xsn,-1)
    ys = np.delete(ys,-1)
    xr = np.delete(xr,-1)
    xrn = np.delete(xrn,-1)
    yr = np.delete(yr,-1)

    xs = xs.astype(float) + xsn.astype(float)*1e-9
    ys = ys.astype(float)
    xr = xr.astype(float) + xrn.astype(float)*1e-9
    yr = yr.astype(float)

    xr = xr - xr[0] #adjust timestamp to start at 0 only in real data, because it is stamped relative to epoch
    xr = xr - 7 #adjust for lag at start

    #cleaning excess idle time at the end of the simulated data
    # for i in range(len(xs)-1):
    #     if xs[i] > 70:
    #         for j in reversed(range(i,len(xs)-1)):
    #             xs = np.delete(xs,-1)
    #             ys = np.delete(ys,-1)
    #         break

    fig, ax = plt.subplots()

    plt.rcParams["font.family"] = "serif"
    ax.plot(xs, ys, color='b', label='simu')
    ax.plot(xr, yr, color='g', label='real')
    plt.xlabel("time [s]")
    plt.ylabel("yaw [rad]")
    plt.title("Real vs. simulated Thymio waypoint following yaw evolution")
    ax.xaxis.set_major_formatter(FormatStrFormatter('%i'))
    ax.yaxis.set_major_formatter(FuncFormatter(
       lambda val,pos: '{:.0g}$\pi$'.format(val/np.pi) if val !=0 else '0'
    ))
    ax.yaxis.set_major_locator(MultipleLocator(base=np.pi))
    ax.axis([0, 70, -np.pi, np.pi]) # [xstart, xend, ystart, yend]

    ax.legend()
    plt.grid()

    plt.savefig(plot_file)

    plt.show()

if __name__ == '__main__':
    main()
