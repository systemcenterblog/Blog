---
description: >-
  Overview This page provides guidance on deploying Wi-Fi profiles in Microsoft
  Intune and the potential reason you may be stuck in 'Pending State'.
---

# Intune - Wi-Fi Templates PENDING STATE

For effective deployment, ensure `Wi-Fi profile`, `certificate profile`, and `trusted root profile` are all assigned to the device (consider using the same group) to avoid connectivity issues. Failure to deploy the 'Root certificates for server validation' along with the 'Wi-Fi' profile group results in a PENDING STATE. More details: [Wi-Fi settings configuration](https://learn.microsoft.com/en-us/mem/intune/configuration/wi-fi-settings-configure).

<figure><img src="../.gitbook/assets/image (2).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../.gitbook/assets/image (1).png" alt=""><figcaption></figcaption></figure>

