# Statement
Write a Dockerfile with Ubuntu 16.04 as a base image. The image should have following packages present:<br>
-telnet<br>
-curl<br>
-ffmpeg<br>
Finally, when running a container from the docker image, it should launch with bash.<br>

# Solution
The Dockerfile builds with Ubuntu 16.04 as base image with telnet , curl and ffmpeg preinstalled and configured.<br>
Steps to build and run your docker container are as follows :<br>

1. Change directory to the directory with Dockerfile in it.<br>
    |cd ~/my_image<br>

2. Build the docker image using the following command.<br>
    |docker build -t my_image .<br>
    
    From inside the my_build directory, we’ll use the docker build command,<br>
    passing the -t flag to “tag” the new image with a name, which in this case will be my_image.<br>
    The . indicates that the Dockerfile is in the current directory.<br>
    That will generate a long output where every “step” is an instruction in the Dockerfile.<br>
    
 3. We can list our images with the docker images command:<br>
    | docker images<br>
    
 4. Finally, to launch an interactive bash terminal of our newly created image, we’ll use the docker run command:<br>
    |docker run -ti my_image <br>
    The shell by default will be launched as a bash shell.<br>
    
    
    


