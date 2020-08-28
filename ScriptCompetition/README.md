<a href="https://www.retouw.nl/wp-content/uploads/2020/08/Synatx-with-Logos_Black.png"><img class="aligncenter wp-image-2450 size-large" src="https://www.retouw.nl/wp-content/uploads/2020/08/Synatx-with-Logos_Black-1024x158.png" alt="" width="930" height="143" /></a>

When the idea was pitched to the <a href="https://code.vmware.com/home">VMware{Code}</a> <a href="https://blogs.vmware.com/code/2020/03/25/introducing-vmware-code-coaches-2020/">Code Coaches</a> for a <a href="https://blogs.vmware.com/code/2020/08/20/vmware-code-connect-2020/">Code Connect</a> event I thought it would be fun to have a small scripting contest of the main Hackathon. Since I am employed by <a href="https://www.controlup.com/">ControlUp</a> the idea is to combine this with the script actions that are available in our very own Real-Time Console. I will show a bit later how this works but for me this functionality is super-cool and was on of the the main reasons I wanted to work with ControlUp.

<a href="https://www.retouw.nl/wp-content/uploads/2020/08/github-img-final1.jpg"><img class="size-medium wp-image-2432 aligncenter" src="https://www.retouw.nl/wp-content/uploads/2020/08/github-img-final1-300x65.jpg" alt="" width="300" height="65" /></a>

The goal is to create one (more if you have time) script that can be run by right clicking an object in the Console and performing whatever action that you want the script to take. In our <a href="https://www.controlup.com/script-library/">community library</a> (or on <a href="https://github.com/controlup/script-library">GitHub</a>) there are over 300 tested and ready to use scripts that have proven themselves for our customers. You can go as crazy as you want. Want to start a docker container doing a full file index when CPU load goes over 50%? No idea why you would want to (to each his own) but if you can script it you can enter it in the contest. Keep in mind, though, that we don't have support for containers at the moment.

<a href="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0435.png"><img class="size-medium wp-image-2430 aligncenter" src="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0435-300x188.png" alt="" width="300" height="188" /></a>
<h2>Sounds great!, But what is ControlUp?</h2>
ControlUp is way more than the EUC monitoring tool you might think it is. With connections to all major hypervisors available it's the perfect tool for managing your virtual infrastructure. With features like Automated Actions, controllers for registry, file system and services an admin’s life can be made infinitely easier. It’s time to do away with all those annoying tickets and focus more on the exciting parts of life.
<h2>Getting started</h2>
<span style="font-size: 8pt;">Note: if you already have an existing ControlUp environment that you can use there's no need to do this again.</span>

The easiest way to get started (and I know you’re not going to believe this) would be to point to our <a href="https://support.controlup.com/hc/en-us/articles/360006607177-ControlUp-Hybrid-Cloud-v8-X-Quick-Start-Guide">quick- start guide</a>. But you know what? I don't just want to do that. For this contest, it’s sufficient to have a single domain joined desktop and whatever environment you want to develop the script for. When you have this head over to <a href="https://www.controlup.com/">ControlUp.com</a> to start your <a href="https://www.controlup.com/download/">free 21 day trial</a>. Enter your email and in just a few minutes, you’ll have a download link in your inbox that includes a short video on how to register. Keep in mind that the trial is for two weeks, so don't start too far in advance of the contest or you will be set back to the basic license level, which doesn’t include some of the features you might need.

<span style="font-size: 8pt;">Note: if this happens to you, please contact me in that case and I'll see what I can do for you.</span>

<a href="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0438.png"><img class="size-medium wp-image-2433 aligncenter" src="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0438-300x52.png" alt="" width="300" height="52" /></a>

The zip file that you'll download has the ControlUp Console in it, so there’s no need to install anything at first. Just start the Console, <a href="https://support.controlup.com/hc/en-us/articles/207233935-Create-User-Account">create a new account</a> (if you don't already have one), and define an environment name. Make up an organization name and you're done with the first part (yes, it really is that easy).

Next up is <a href="https://support.controlup.com/hc/en-us/articles/207233945-Create-Folders">creating folders</a> and adding <a href="https://support.controlup.com/hc/en-us/articles/206535799-Add-Computer-Machine-">Computers.</a> If you want you can add your <a href="https://support.controlup.com/hc/en-us/articles/206535809-Add-Hypervisor">vCenter server</a> and EUC environments. With this you're set to get started on your script. Add at least the computer you are running the console from so you have something to work with.
<h2>Script Actions</h2>
<h3>Adding scripts</h3>
So, how do we use script actions? First, you'll need to add some to your local library by downloading them or creating your own. Start with clicking the Script actions button.

<a href="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0442.png"><img class="size-medium wp-image-2434 aligncenter" src="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0442-300x27.png" alt="" width="300" height="27" /></a>

Once you’ve done that, you can download existing scripts from our repository by clicking “add script” when you find something that interests you.s. These scripts will be available under the Organizational Scripts tab. From  the My Draft Scripts tab. you can create your own scripts (and, not going to lie: it’s really fun).
<h3>Editing Scripts</h3>
When you create or edit a script, you will be served a page where you need to define a name and description. If you want to submit scripts to the ControlUp Script Library, be sure to choose these carefully.

<a href="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0443.png"><img class="size-medium wp-image-2435 aligncenter" src="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0443-300x241.png" alt="" width="300" height="241" /></a>

Next, you can select what you want to run this script against; the options include Computer, Host, Session, process, and scores of others. Select advanced if you want to run it against multiple types of metrics. What I mean with running against will be explained in the Running Scripts chapter.

<a href="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0444.png"><img class="size-medium wp-image-2436 aligncenter" src="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0444-300x236.png" alt="" width="300" height="236" /></a>

Execution context is where the script will run. This can be the machine where the console is running, target machine, or some other machine. :A great option would be a machine that's available in the console that some Powershell modules installed. Security context is the account under which the scripts will run. If we're talking about a Target machine, the script will run under the account that is used for the agent (most likely the network service). If you want to create a specific account to run your scripts under, you'll need to add a monitor and create a shared credential;, both will be explained in the chapter on bonus points.

Now, we’re cooking with gas! The next screen is where you actually create the script; I would recommend that you use your favorite editor and copy/paste it here. Under “script type,” you can select cmd/VBS/Powershell for the script type you want to run. If you want to use metrics from the Console as an argument in your scripts [in Powershell], you can define them like this:
<pre class="EnlighterJSRAW" data-enlighter-language="powershell">[string]$HVConnectionServerFQDN = $args[0]
# username
[string]$HVUsername = $args[1]
# Name of the Desktop pool
[string]$HVDesktopPoolname = $args[2]
# The message as a string
[string]$HVMessage = $args[3]
# Message severity
[string]$HVMessageSeverity = $args[4]</pre>
In the end it might look like this:

<a href="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0445.png"><img class="size-medium wp-image-2438 aligncenter" src="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0445-300x241.png" alt="" width="300" height="241" /></a>

As always, I recommend documenting your solution in the script itself so it's always visible. This applies even more for the scripting contest since it's quite handy to know what solution you wanted to tackle.

On the last screen, you can add arguments that can be used in the script. These can come from metrics that we provide in the grid or from manual input by the user with or without a default. The choice that you made at the second screen impacts the available metrics that you can select from the grid here.

<a href="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0446.png"><img class="size-medium wp-image-2439 aligncenter" src="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0446-262x300.png" alt="" width="262" height="300" /></a>

<a href="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0447.png"><img class="size-medium wp-image-2441 aligncenter" src="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0447-300x240.png" alt="" width="300" height="240" /></a>

When you're done hit finish to be able to use the script.
<h3>Using scripts</h3>
To use a script right click an object that you want to run the script against, potentially filter for the name in the search box and select the script.

<a href="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0448.png"><img class="size-medium wp-image-2442 aligncenter" src="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0448-300x65.png" alt="" width="300" height="65" /></a>

Depending on the arguments you’ve made, you might see a box that prompts you to enter details that were configured in the arguments (or you'll get the results of the script).

<a href="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0449.png"><img class="size-medium wp-image-2443 aligncenter" src="https://www.retouw.nl/wp-content/uploads/2020/08/SNAG-0449-300x209.png" alt="" width="300" height="209" /></a>
<h2>Possible bonus points when using Automated Actions</h2>
By deploying a so called <a href="https://support.controlup.com/hc/en-us/articles/206502849-ControlUp-Monitor">monitor</a> from ControlUp it's possible to add some very interesting functionality. To make things a little bit more challenging (it's actually very easy to setup a monitor) I'll you you find out yourself on how to do it.
<ul>
 	<li>Create <a href="https://www.controlup.com/controlup-deep-dive-triggers-e-mail-alerts/">triggers.</a></li>
 	<li>Upload data to <a href="https://www.controlup.com/products/controlup-insights/">ControlUp Insights</a> .</li>
 	<li>Create shared credentials.</li>
</ul>
Triggers are, in essence, tasks that get started when a metric goes over or under a defined threshold. These tasks can be sending emails, recording event logs, or playing a sound, but they can also  run an action, aka a script. If you explain in your script how to use it as an automated action to solve a problem, you might just get some bonus points for it. Popular examples are: paging out all active memory to the swap file when a user disconnects to free up memory or limiting CPU usage for certain processes if they gone haywire.
<h2>Submitting your entry</h2>
Just before the event there will be a breakout session with details on how you can submit your entry.
<h2>Judging</h2>
The judges will be announced during the event. Due to this being a virtual event, they can't be bribed with booze, beer, stroopwafels (yum!) or other good food, because we can't live on good promises.
<h2>Prizes</h2>
The winner will receive a prize, an interview with ControlUp, and will be able to present their script as the next ControlUp Script of the Month (yes, there WILL be a blog)! Maybe—just maybe—we might even throw something in for all contestants. Stay tuned!
