### **Administration Modernization: Building and Deploying Containers to vSphere Integrated Containers w/ Justin Sider**

<div class="session-wrapper">
Links from the PowerPoint
<br>
<a title="vSphere Integrated Containers" href="https://vmware.github.io/vic-product/assets/files/html/1.5/" target="_blank" rel="nofollow">vSphere Integrated Containers</a>
<br> 
<a title="Docker and Self Signed Certificate work arounds" href="https://docs.docker.com/registry/insecure/#use-self-signed-certificates" target="_blank" rel="nofollow">Docker and Self Signed Certificate work arounds</a>
<br> 
<a title="SendMail Testing (free online tool)" href="https://blog.mailtrap.io/powershell-send-email/" target="_blank" rel="nofollow">SendMail Testing (free online tool)</a>
<br> 

<hr/>

<p>
Commands used:
<br>
docker build . -t codeconnect01

docker run -it codeconnect01

docker login 192.168.2.230

docker tag codeconnect01 192.168.2.230/default-project/codeconnect01

docker push 192.168.2.230/default-project/codeconnect01
