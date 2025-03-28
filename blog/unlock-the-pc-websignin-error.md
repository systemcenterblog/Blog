# “Unlock the PC” WebSignIn error

"We can't open that page right now. For Security reasons, you'll need to visit the page from a browser or a different device. If you think you've reached this page because of an error, tell your organisation's IT support you can't access https://login.microsoftonline.com/webApp/WindowsLogon/1"\
\


The same policy discussed is deployed to Windows 10 without issue and the user experience changed when we started deploying Windows 11. The sign in option pictured below is the default option in Windows 11 and if you click Sign-in Options you get the traditional Username and password which logs in without issue. Windows 10 devices receiving the same policy do not see the 'Unlock the PC' and are simply presented with the traditional username and password boxes.

<figure><img src="../.gitbook/assets/image (5).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../.gitbook/assets/image (4).png" alt=""><figcaption></figcaption></figure>

If you've ensured the internet connection is active and checked for any physical firewall settings that might block access to the URL, consider verifying if any organizational policies are restricting access. Such policies can inadvertently prevent access to certain sites or resources. \
&#x20;

The clients environment has a Internet proxy policy configured to redirect all URLs to 127.0.0.2 except for a predefined list including `*.microsoftonline.com`

* **The method of controlling Internet sites allowed is very effective and the policy was working.**\
  ![](<../.gitbook/assets/image (6).png>)
