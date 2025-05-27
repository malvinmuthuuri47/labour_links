# labourlinks
A job listing website for manual workers 

# How to run the backend server
1. Create a virtual environment for Python. Follow this [link](https://packaging.python.org/guides/installing-using-pip-and-virtual-environments/#create-and-use-virtual-environments) to check how it is done on your operating system.
2. Activate the virtual environment to ensure that your global packages and the packages of this project don't conflict with each other. Check this resource [here](https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments/#activate-a-virtual-environment) to see how that is done.
3. Install the packages that you will find in the requirements.txt file. Follow this [guide](https://packaging.python.org/en/latest/guides/installing-using-pip-and-virtual-environments/#using-a-requirements-file) to see how that is done.
4. Once you have installed the packages, run the following command. **python server.py**
5. If the command is successful, you will be greeted with a url which the backend server can communicate with. In case that is not the case, check the port number that the *server.py* is running to ensure that no other application is using that port. If the port is in use by another application, change the port number to a port that's free. Check out this [article](https://www.geeksforgeeks.org/how-to-change-port-in-flask-app/) to see how that is done.

# How to run the frontend
1. Once the backend is done, you now have to run the frontend. All you have to do is run the `launch_website.sh` shell script. Here is a [guide](https://labex.io/tutorials/shell-enabling-executable-permissions-for-scripts-across-operating-systems-392603#executing-scripts-across-operating-systems) on how to do it based on the operating system you are running. The guide also introduces you to shell scripts and hat they are.
2. Once the script runs, a browser tab will open and you are good to go. In case the script fails, make sure that the port for the frontend is also free. If it isn't, you will have to change the port number. **A caveat to note here is that, once you change the port number of the script, you will have to change all the port number occurrences in the frontend files. I highly advise you kill the programs using the port number so that it can be easier to run the website and once you are done, if you wish to restart the process that was using the port, you can do so.** This [guide](https://dev.to/osalumense/how-to-kill-a-process-occupying-a-port-on-windows-macos-and-linux-gj8#:~:text=To%20identify%20the%20process%20using,command%20in%20the%20Command%20Prompt.&text=Here%2C%201234%20is%20the%20PID%20of%20the%20process%20using%20port%205672%20.&text=To%20kill%20the%20process%2C%20use,with%20the%20PID%20obtained%20above.) shows how to kill a process running on a certain port number.

**Have fun**
