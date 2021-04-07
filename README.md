ProfitTrailer for Synology NAS Docker
-------------------------------------

[![Docker Pulls][docker-pull]][docker-link] [![Docker Stars][docker-stars]][docker-link] [![GitHub last commit][git-last-commit]][github-link]

[![ProfitTrailer Version][pt-version]][github-link]

**ProfitTrailer** is an advanced and powerful crypto trading bot that helps you automate your trading.
Due to its 24/7, always running nature, it would seem that it is a great fit to run on a NAS such as the ones from Synology.

* ProfitTrailer: https://profittrailer.com/
* Wiki: https://wiki.profittrailer.com/

First Installation
------------------

### 1. Before Starting

Make sure that your Synology NAS has Docker installed. Go to *Package Center* search for **Docker** and click *Install*
if it is not yet installed.

### 2. Create Folder

On *File Station* create a folder that your ProfitTrailer will be installed.

### 3. Docker Image

Go to *Docker* and click on *Registry*, and search for `canecasama`. You should see this installation `canecasama/profittrailer`,
double click it to download the Docker image.

### 4. Create Container

Now on *Docker*, click on *Image*, you should see `canecasama/profittrailer:latest` on your list of images,
double click it to start the wizard.

Choose a suitable *Container Name* such as **profittrailer**, and click on *Advanced Settings*.

*(Optional)* Select *Enable auto-restart*, so the container will restart if it gets shutdown.

Click in *Volume*, and then *Add Folder*, find the folder you created on [*step 2*](#2-create-folder) and on *Mount Path* type `/app/ProfitTrailer`.

Click in *Port Settings*, and change *Local Port* from **Auto** to something you will remember and is not in use for
any other Synology NAS applications. For example `8070`. This number will be used to access your ProfitTrailer later.

Click **Apply**, then **Next**, then verify that all the configuration is correct on the *Summary* and click **Apply** again.

Now your container will be created. It might take a few minutes.

#### 5. Checking your Installation

On *Docker* click on *Container*, and your newly created container should be there.

Once created the first time, the container will shutdown. You will need to restart it, if you didn't select *auto-restart* previously.

If you double click your container, and go to *Log*, you should see if all went well.
If the message *Please finish the setup process in your browser* then you can proceed to the last step.

*(Optional)* You can also check your folder created on *step 2* that it might contain all installation files of ProfitTrailer.

#### 6. Opening ProfitTrailer

On a new tab on your browser, open your ProfitTrailer on the same IP address as your Synology NAS, with the port that
you selected on [*step 4*](#4-create-container). In my case NAS is `http://127.0.0.1:5000/` and ProfitTrailer is `http://127.0.0.1:8070/`.

Now you can configure your ProfitTrailer with your credentials and start your tradings.

Updating to New Version
-----------------------

**WARNING:** Before proceeding check [ProfitTrailer wiki][pt-wiki], and verify if there is any incompatibility with
updating the versions. This tutorial will only work if there is no ProfitTrailer incompatibility with the versions.

Remember to **always** backup your data before attempting to update to new versions.

There are two ways to update to a newer version of ProfitTrailer, update on a new folder or on the same folder.

### Update on a new Folder

TODO

### Update on the same Folder

TODO

Contribution
------------

If you find this useful, and you want to contribute, consider joining on one of my affiliate links:

* Coinbase: https://www.coinbase.com/join/soares_6l
* Binance: https://www.binance.com/en/register?ref=17751938

Or if you prefer, send me some crypto to one of those wallets:

* Dogecoin: `DGDdqWow9uB3DUeVuMWKRzVmewDUSTehQd`
* Bitcoin: `34yEemB3ZUxJeB5KTnfG9pA2bgTb7Zr5mu`
* Ethereum: `0x9d3d384Bc20be8edCe1203Be49FbFB579AeA5034`
* Litecoin: `MFHpiq3ZXDyeZ8AUUwhnV9CfazwGVsnkWz`

Disclaimer
----------

I take no responsibility over any problems occurred during this installation, or anytime after it.
It is solely your responsibility to properly backup your files, and manage your data.
This docker container is only a way to make my life easier, and if it helps anyone, it is a plus.

Good trading, and to the Moon.

Credit
------

Based on the works from:

 * TrueOsiris https://github.com/TrueOsiris/docker-profittrailer/
 * Beemster https://github.com/beemster/profittrailer/
 * Rafffael https://github.com/rafffael/profit-trailer/

<!-- Icons -->
[docker-pull]: https://img.shields.io/docker/pulls/canecasama/profittrailer.svg
[docker-stars]: https://img.shields.io/docker/stars/canecasama/profittrailer.svg
[git-last-commit]: https://img.shields.io/github/last-commit/canecasama/profittrailer_nas.svg
[pt-version]: https://img.shields.io/badge/profittrailer%20version-2.4.55-green

<!-- Links -->
[docker-link]: https://hub.docker.com/r/canecasama/profittrailer/
[github-link]: https://github.com/canecasama/profittrailer_nas/
[pt-wiki]: https://wiki.profittrailer.com/
