# “Unlock the PC” WebSignIn error

"We can't open that page right now. For Security reasons, you'll need to visit the page from a browser or a different device. If you think you've reached this page because of an error, tell your organisation's IT support you can't access https://login.microsoftonline.com/webApp/WindowsLogon/1"\
\
The same policy discussed below is deployed to Windows 10 without issue. In Windows 11 the user experience changed and they were presented with the 'Unlock the PC' option. The sign in option pictured below is now the unintentional default option for Windows 11 users. \
\
This article will explain why? If the user clicks 'Sign-in Options' they get the traditional Username and password which logs in without issue. Windows 10 devices receiving the same policy do not see the 'Unlock the PC' and are simply presented with the traditional username and password boxes.

<figure><img src="../.gitbook/assets/image (5).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../.gitbook/assets/image (4).png" alt=""><figcaption></figcaption></figure>

Lets start by explain why the login screen options changed. There is a policy that Enables Web Sign-in which we originally set to enabled to allow Temporary Access Pass (TAP) in Windows 10.  The same setting has a completely different user experience in Windows 11 and defaults to encouraging users to authenticate using passwordless /Microsoft Authenticator. This is a great feature and is something i would encourage you to look into.\
\
&#xNAN;**"Web sign-in is a credential provider that enables a web-based sign-in experience on Windows devices. Initially introduced in Windows 10 with support for Temporary Access Pass (TAP) only, Web sign-in expanded its capabilities starting in Windows 11"**\
\
./Device/Vendor/MSFT/Policy/Config/Authentication/EnableWebSignIn\
[https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-authentication#enablewebsignin](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-authentication#enablewebsignin)\


However, from the screenshot above this was not working as the device could not get to [https://login.microsoftonline.com/webApp/WindowsLogon/1](https://login.microsoftonline.com/webApp/WindowsLogon/1%22) to complete the process.

In my environment on these Privileged Access Workstations (PAW) Internet access is blocked and only a predefined list is allowed.

If you've ensured the internet connection is active and checked for any physical firewall settings that might block access to the URL, consider verifying if any organizational policies are restricting access. Such policies can inadvertently prevent access to certain sites or resources. \
&#x20;

The clients environment has a Internet proxy policy configured to redirect all URLs to 127.0.0.2 except for a predefined list including `*.microsoftonline.com`

* **The method of controlling Internet sites allowed is very effective and the policy was working.**\
  ![](<../.gitbook/assets/image (6).png>)
