---
description: >-
  This device filter is designed to target all Dell laptops while excluding any
  models that contain the word "Tower" in their name.
---

# Intune Device Filter: Laptops Only

1. **Sign in to the Intune admin center.**
2. **Navigate to: Tenant Administration > Filters > Managed devices.**
3. **Edit your existing filter or create a new one:**
   * Click on Create or select your existing filter to edit.
   * Enter a Name and Description for your filter if creating a new one.
4. **Define the filter rules:**
   *   On the Rules page, use the following rule to include the specified models and exclude those containing "tower":

       ```
       ((device.Model -startsWith "XPS") -or 
       (device.Model -startsWith "Precision") -or 
       (device.Model -startsWith "Latitude") -or 
       (device.Model -startsWith "Surface")) 
       -and 
       (device.Model -notContains "Tower")
       ```
   * This rule includes devices whose model names start with "XPS", "Precision", "Latitude", or "Surface" and excludes any device model that contains "Tower".
5. **Preview and validate:**
   * Use the Preview option to ensure your filter works as expected.
6. **Assign the filter:**
   * Apply the filter to your desired policies or apps.

<figure><img src="../.gitbook/assets/image (1) (1).png" alt=""><figcaption></figcaption></figure>

<figure><img src="../.gitbook/assets/image (3) (1).png" alt=""><figcaption></figcaption></figure>
