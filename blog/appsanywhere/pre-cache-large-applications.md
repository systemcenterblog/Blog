---
description: >-
  This page will offer a solution to precaching large applications already
  packaged and made available by AppsAnywhere.com
---

# Pre-Cache Large Applications

If you have a Support account you can read about it on the official page here [https://support.appsanywhere.com/hc/en-us/articles/360013414374-How-to-Configure-and-Use-Pre-caching-on-Managed-Devices](https://support.appsanywhere.com/hc/en-us/articles/360013414374-How-to-Configure-and-Use-Pre-caching-on-Managed-Devices)

### Applications Recommended for Pre-Caching

Pre-caching is a powerful feature in Cloudpaging, but it’s important to use it selectively for the best results. Not all applications benefit equally from pre-caching, and using it indiscriminately can lead to unnecessary network and storage usage.

**It is recommended enabling pre-caching for large applications—specifically, any appset over 10GB in size.** These applications typically have longer load times and higher demand, so pre-caching can significantly improve user experience by reducing wait times and ensuring smoother launches.

#### Applications Commonly Pre-Cached

While this is not an exhaustive list, the following applications are excellent candidates for pre-caching due to their size and complexity:

* **Adobe Creative Cloud (CC)**
* **ANSYS**
* **ArcGIS**
* **Autodesk Applications**
* **Matlab**
* **SAS**
* **Solidworks (Educational)**
* **Unity**

By focusing pre-caching efforts on these larger, resource-intensive applications, you can optimize performance and provide a better experience for your users. For smaller applications, standard on-demand delivery is usually sufficient and more efficient.<br>

{% @github-files/github-code-block url="https://github.com/systemcenterblog/AppsAnywhere/blob/main/Precache_AutoLicenseSTP.ps1" %}
