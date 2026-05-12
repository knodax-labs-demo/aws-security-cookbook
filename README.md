<img width="1280" height="640" alt="aws-security-cookbook-github" src="https://github.com/user-attachments/assets/f1ef3ef1-1db1-4f49-8cba-1b543a22d39b" />


<p align="center">
  <strong>⭐ If this repository helps you, please give it a star! ⭐</strong>
</p>

<h1 align="center">
AWS Security Cookbook
</h1>

<p align="center">
Hands-On Recipes for Securing AWS Cloud Infrastructure, Applications, Identities, and Data
</p>

<p align="center">
Production-ready AWS security recipes using AWS CLI, Bash, Python, IAM, KMS, GuardDuty, Security Hub, VPC, WAF, CloudTrail, and more.
</p>

<hr />

<h2>📘 About This Repository</h2>

<p>
This repository contains the complete companion source code for the book:
<strong>AWS Security Cookbook</strong> by <strong>KnoDAX</strong>.
</p>

<p>
The recipes focus on real-world AWS security implementation patterns with hands-on examples designed for cloud engineers, DevOps engineers, security engineers, architects, and AWS certification learners.
</p>

<ul>
  <li>Step-by-step security recipes</li>
  <li>Production-focused implementations</li>
  <li>AWS CLI, Bash, and Python examples</li>
  <li>Cloud security automation workflows</li>
  <li>Threat detection and compliance scenarios</li>
  <li>Identity, encryption, monitoring, and governance patterns</li>
</ul>

<hr />

<h2>⚠️ Read-Only Repository</h2>

<p>
This repository is intentionally maintained as a <strong>read-only companion repository</strong>.
</p>

<ul>
  <li>Pull requests are disabled</li>
  <li>Issues are disabled</li>
  <li>Discussions are disabled</li>
  <li>External contributions are not accepted</li>
</ul>

<p>
This helps maintain stable, validated, and production-consistent code examples for readers.
</p>

<hr />

<h2>📂 Repository Structure</h2>

<pre>
Chapter-01/
Chapter-02/
Chapter-03/
...
Chapter-13/
Appendices/
</pre>

<p>Each recipe typically includes:</p>

<ul>
  <li>AWS CLI commands</li>
  <li>Bash automation scripts</li>
  <li>Python examples</li>
  <li>IAM policies</li>
  <li>CloudFormation snippets</li>
  <li>Validation and cleanup steps</li>
</ul>

<hr />

<h2>🚀 Quick Setup</h2>

<h3>1. Install AWS CLI</h3>

<pre><code>aws --version</code></pre>

<p>
Install AWS CLI if needed:
<a href="https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html">
AWS CLI Installation Guide
</a>
</p>

<h3>2. Configure AWS Credentials</h3>

<pre><code>aws configure</code></pre>

<h3>3. Verify AWS Access</h3>

<pre><code>aws sts get-caller-identity</code></pre>

<hr />

<h2>🧪 Running a Recipe</h2>

<pre><code>cd Chapter-05/5.5.5-enable-and-analyze-vpc-flow-logs
bash script.sh</code></pre>

<hr />

<h2>📚 Topics Covered</h2>

<h3>🔐 Identity and Access Management</h3>

<ul>
  <li>IAM users, roles, and policies</li>
  <li>Least privilege access</li>
  <li>ABAC and permissions boundaries</li>
  <li>IAM Access Analyzer</li>
  <li>STS and temporary credentials</li>
  <li>MFA enforcement</li>
</ul>

<h3>🔒 Data Protection and Encryption</h3>

<ul>
  <li>AWS KMS</li>
  <li>SSE-KMS encryption</li>
  <li>Envelope encryption</li>
  <li>EBS and RDS encryption</li>
  <li>DynamoDB encryption</li>
  <li>TLS and HTTPS enforcement</li>
</ul>

<h3>🌐 Network Security</h3>

<ul>
  <li>VPC architecture</li>
  <li>Security Groups and NACLs</li>
  <li>VPC Flow Logs</li>
  <li>Transit Gateway</li>
  <li>PrivateLink</li>
  <li>VPC Endpoints</li>
  <li>Bastion hosts</li>
</ul>

<h3>🛡️ Edge and Application Security</h3>

<ul>
  <li>AWS WAF</li>
  <li>AWS Shield</li>
  <li>API Gateway security</li>
  <li>Amazon Cognito</li>
  <li>Route 53 DNS Firewall</li>
</ul>

<h3>📊 Logging and Threat Detection</h3>

<ul>
  <li>AWS CloudTrail</li>
  <li>CloudWatch Logs and Alarms</li>
  <li>AWS Config</li>
  <li>Amazon GuardDuty</li>
  <li>AWS Security Hub</li>
  <li>AWS Detective</li>
  <li>Athena-based log analysis</li>
</ul>

<h3>⚡ Incident Response and Automation</h3>

<ul>
  <li>Security automation with Lambda</li>
  <li>EventBridge workflows</li>
  <li>Step Functions orchestration</li>
  <li>Forensic evidence preservation</li>
  <li>Automated remediation</li>
  <li>Resource quarantine workflows</li>
</ul>

<h3>🐳 Infrastructure and Container Security</h3>

<ul>
  <li>EC2 hardening</li>
  <li>Patch management</li>
  <li>Golden AMIs</li>
  <li>Amazon Inspector</li>
  <li>ECS and EKS security</li>
  <li>IAM task roles</li>
</ul>

<h3>🏢 Governance and Multi-Account Security</h3>

<ul>
  <li>AWS Organizations</li>
  <li>Service Control Policies (SCPs)</li>
  <li>Centralized Security Hub</li>
  <li>Organization-wide GuardDuty</li>
  <li>Compliance automation</li>
  <li>AWS Audit Manager</li>
</ul>

<h3>🏗️ Advanced Security Architectures</h3>

<ul>
  <li>Zero Trust Architecture</li>
  <li>Secure CI/CD pipelines</li>
  <li>Serverless security</li>
  <li>End-to-end encryption</li>
  <li>Multi-region secure architectures</li>
</ul>

<hr />

<h2>💰 AWS Cost Warning</h2>

<p>
Some recipes create billable AWS resources.
</p>

<p>
To avoid unexpected AWS charges:
</p>

<ul>
  <li>Always follow cleanup steps</li>
  <li>Delete unused resources after testing</li>
  <li>Monitor the AWS Billing Dashboard</li>
  <li>Use small test environments when possible</li>
</ul>

<hr />

<h2>🎯 Who This Repository Is For</h2>

<ul>
  <li>AWS Cloud Engineers</li>
  <li>DevOps Engineers</li>
  <li>Cloud Security Engineers</li>
  <li>Solutions Architects</li>
  <li>Security Operations Teams</li>
  <li>AWS Certification Learners</li>
</ul>

<hr />

<h2>📘 Get the Book</h2>

<p>
<strong>AWS Security Cookbook</strong>
</p>

<p>
Learn AWS security through structured explanations, hands-on recipes, and real-world implementation patterns.
</p>

<p>
👉 <a href="https://www.amazon.com/" target="_blank" rel="noopener noreferrer">
Get the book on Amazon
</a>
</p>

<hr />

<h2>🎓 KnoDAX Training</h2>

<p>
Get additional AWS learning resources, labs, certification guides, and hands-on training from KnoDAX.
</p>

<p>
👉 <a href="https://knodax.com">
https://knodax.com
</a>
</p>

<hr />

<h2>📌 Contributing Policy</h2>

<p>
This repository is provided as official companion material for the book.
</p>

<p>
External pull requests, issues, discussions, and contributions are not accepted.
</p>

<p>
All updates are managed internally to ensure consistency, stability, and long-term maintainability for readers.
</p>

<hr />

<h2>🙌 Support This Project</h2>

<p>If this repository helped you:</p>

<ul>
  <li>⭐ Star the repository</li>
  <li>📘 Support the book</li><img width="1280" height="640" alt="aws-security-cookbook-github" src="https://github.com/user-attachments/assets/0bb702ae-7913-400d-a3f1-a2a4ef0a6680" />

  <li>🚀 Share with other AWS learners</li>
</ul>

<hr />

<h2>🏷️ Topics</h2>

<p>
AWS Security, IAM, KMS, GuardDuty, Security Hub, CloudTrail,
CloudWatch, VPC, WAF, Shield, Encryption, DevSecOps,
Incident Response, Compliance, AWS Cookbook, Cloud Security,
AWS CLI, Infrastructure Security
</p>

<hr />

<h2>🧑‍💻 Maintained by KnoDAX</h2>

<p>
Hands-on AWS training, certification guides, cloud security learning, and production-focused cloud engineering resources.
</p>

<p>
👉 <a href="https://knodax.com">
https://knodax.com
</a>
</p>
