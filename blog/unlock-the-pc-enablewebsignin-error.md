# “Unlock the PC” EnableWebSignIn error

"We can't open that page right now. For Security reasons, you'll need to visit the page from a browser or a different device. If you think you've reached this page because of an error, tell your organisation's IT support you can't access https://login.microsoftonline.com/webApp/WindowsLogon/1"\
\
The same policy discussed below is deployed to Windows 10 without issue. In Windows 11 the user experience changed and they were presented with the 'Unlock the PC' option. The sign in option pictured below is now the unintentional default option for Windows 11 users. \
\
This article will explain why? If the user clicks 'Sign-in Options' they get the traditional Username and Password boxes which logs in without issue. Windows 10 devices receiving the same policy do not see the 'Unlock the PC' and are simply presented with the traditional Username and Password boxes.

<figure><img src="../.gitbook/assets/image (5) (1).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../.gitbook/assets/image (4) (1).png" alt=""><figcaption></figcaption></figure>

Lets start by explain why the login screen options changed. There is a policy that Enables Web Sign-in which we originally set to 'enabled' to allow Temporary Access Pass (TAP) in Windows 10.  The same setting has a completely different user experience in Windows 11 and defaults to encouraging users to authenticate using passwordless /Microsoft Authenticator. This is a great feature and is something i would encourage you to look into.\
\
&#xNAN;**"Web sign-in is a credential provider that enables a web-based sign-in experience on Windows devices. Initially introduced in Windows 10 with support for Temporary Access Pass (TAP) only, Web sign-in expanded its capabilities starting in Windows 11"**\
\
./Device/Vendor/MSFT/Policy/Config/Authentication/EnableWebSignIn\
[https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-authentication#enablewebsignin](https://learn.microsoft.com/en-us/windows/client-management/mdm/policy-csp-authentication#enablewebsignin)\


However, from the screenshot above this was not working as the device could not get to [https://login.microsoftonline.com/webApp/WindowsLogon/1](https://login.microsoftonline.com/webApp/WindowsLogon/1%22) to complete the authentication process.

The clients environment has another policy to create an Internet proxy; configured to redirect all URLs to 127.0.0.2 except for a predefined list including `*.microsoftonline.com`

* **The method of controlling Internet sites 'allowed' is very effective.**\
  ![](<../.gitbook/assets/image (6).png>)

The client applies both policies to there Privileged Access Workstations (PAW). I confirmed that a internet connection is active and no physical firewall settings are present blocking access to the URL.&#x20;

**The Conclusion:**\
It was behaving like the exceptions list was not being honoured at this initial stage before the user had logged in creating a catch22 scenario. If the loopback proxy policy is removed 'EnableWebSignIn' works as expected.&#x20;

It was agreed that the ‘EnableWebSignIn’ would be set to value 0 (default). Effectively eliminating this modern sign-in option and the user will be presented with the Username and Password login screen by default thus preserving the loopback proxy policy.

**Next Steps:**\
The next test will be to replace the loopback proxy policy with another to see if we can allow the websignin and control what URLs are allowed.  I will feedback once tests are complete.\
![](<../.gitbook/assets/image (7).png>)\
&#x20;
