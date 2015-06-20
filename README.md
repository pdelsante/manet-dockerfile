# manet-dockerfile
Manet is a website screenshot service provided by Node.js, SlimerJS and PhantomJS. It was created by Vladislav Bauer and its source code can be found here: https://github.com/vbauer/manet

This Dockerfile allows you to run Manet inside a Docker container. To use it, start it as usual:

    $ sudo docker run pdelsante/manet

Then find out the running container's ID by running:

    $ sudo docker ps                  
    CONTAINER ID        IMAGE               COMMAND             CREATED             STATUS              PORTS               NAMES
    d1d7165512e2        pdelsante/manet     "/usr/bin/manet"    48 seconds ago      Up 47 seconds       8891/tcp            romantic_cray

Finally, find out the container's IP address by running:

    $ sudo docker inspect d1d7165512e2 | grep IPAddress
         "IPAddress": "172.17.0.1",

Now you can connect to:

    http://172.17.0.1:8891
