<style>
  body {background-image:url('github-site-BG.png'); background-repeat: repeat-y; }
  .wrapper {margin-top:75px;}
  header {top:20px!important;
  .session-wrapper{border:1px solid #36373b; border-radius:5px; padding:20px; background-color:##D3D3D3;}
  
</style>
<hr/>

### **Unified CloudWatch monitoring for VMC workloads with AWS native services w/ Chandra Avutu**
### **Time: 1:00-1:30PM PDT**
<div class="session-wrapper">
Amazon CloudWatch is a monitoring and observability service provides you with data and actionable insights to monitor your applications including VMConAWS, respond to system-wide performance changes, optimize resource utilization, and get a unified view of operational health. When customers are running VMConAWS workloads with combination of AWS native services like Amazon Aurora, Amazon Redshift or S3, customers need a unified view of monitoring and visibility into their infrastructure. This paper address how it can be achieved. Build the separate service using serverless AWS:Lambda and deploy it in customer account through CloudFormation SAM, which can fetch following data shown and store it in CloudWatch PutMetricData API. _Virtual machine guest stats:_ Amount of memory reserved for the virtual machine. Amount of memory being used by the virtual machine. Upper limit of memory available to the virtual machine. Number of memory shares assigned to the virtual machine. Number of CPU shares assigned to the virtual machine. _Virtual machine space stats:_ statname - description used - Total space used by the virtual machine snapshot - Total space used by snapshot files diskUsed - Total space used by virtual disk files shared - Total space used by shared VM files provisioned - Total provisioned space for the VM Once the VMware virtual machine metrics are available in CloudWatch you have few options: 1. You can correlate how your application is working i.e. web/app server running as virtual machine ( memory and CPU metrics ) in VMConAWS with native services include 1. Amazon Aurora as a managed database for your workloads 2. Amazon Redshift as a managed service for running analytics 3. Application Load Balancer deployed for your workloads to distribute requests 4. S3 as a object storage for storing unstructured data for VMware workloads To detect Anomaly Detection of the overall workload, you can apply CloudWatch machine-learning algorithms to continuously analyze system and application metrics, determine a normal baseline, and surface anomalies with minimal user intervention. You can use Anomaly Detection to isolate and troubleshoot unexpected changes in your metric behavior. CloudWatch Anomaly Detection will automatically determine a range of expected behavior, which you can optionally customize by specifying data exclusion periods, anomaly sensitivity. You can create alarms to notify you when anomalies occur and visualize the expected behavior on a metric graph.
<br>
<br> 
<a title="Add to Calendar" class="addeventatc" data-id="ZN5088761" href="https://www.addevent.com/event/ZN5088761" target="_blank" rel="nofollow">Add to Calendar</a>
        <script type="text/javascript" src="https://addevent.com/libs/atc/1.6.1/atc.min.js" async defer></script>
<br> 
<br> 
</div>

<hr/>
<img src="me.png" alt="Chandra Avutu" width="25%" align="right">
    
<p>Chandra Avutu had worked as Staff engineer for VMware and his experience include vStorage API for storage awareness, software defined storage and distributed systems. Chandra had over twenty years of experience in system development include virtual center development from 2.0 onwards. Chandra worked on enterprise data protection systems development, open stack, VMware cloud on AWS cloud development teams. Chandra worked with CTO office people in developing software defined storage, and other projects at VMware to define storage API. In his current position at AWS Chandra work on VMware cloud on AWS.</p>
