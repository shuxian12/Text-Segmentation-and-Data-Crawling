# Text Segmentation and Data Crawling

<!-- https://github.com/othneildrew/Best-README-Template/blob/8a2ace9aa39b85041dcd9cf5efe4af2f8bb21825/BLANK_README.md -->

### Prerequisites

Before you begin, ensure you have the following:

- Python 3.9+
  - **Notice:** Python and the pip package manager must be in the path in your computer for the setup scripts to work.
- Git
- Azure account (with sufficient permissions to create and manage resources)
- Azure Developer CLI
- OpenAI API key

You also need to manually creates Azure Web Service, Azure OpenAI Service, and Azure Cognitive Search Service. If you don't have any pre-existing Azure services, create those services [here](https://portal.azure.com) and follow the guides:
  - [Azure Web Service](https://learn.microsoft.com/en-us/azure/app-service/quickstart-python?tabs=flask%2Cwindows%2Cazure-cli%2Cvscode-deploy%2Cdeploy-instructions-azportal%2Cterminal-bash%2Cdeploy-instructions-zip-azcli)
  - [Azure OpenAI](https://learn.microsoft.com/en-us/azure/ai-services/openai/how-to/create-resource?pivots=web-portal)
  - [Azure Cognitive Search](https://learn.microsoft.com/en-us/azure/search/search-get-started-portal)
    - `AZURE_KEY_CREDENTIAL` can be found under your Search Service $\rightarrow$ Settings $\rightarrow$ Keys $\rightarrow$ **`Primary admin key`**

1. Clone the repo
    ```shell
    git clone https://github.com/samuellee77/azure-openai-chat-forum-bot.git
    ```
2. Install python package
    ```shell
    pip install -r requirements.txt
    ```


<!-- GETTING STARTED -->
## Data Crawling

### How to use

#### **1. Download single page**
> **Note**
> Need help? Run `python download_wiki.py --help` to see the help message.
```shell
python download_single_page.py --url {target_url} --folder {folder_path} --type 'wiki
```
* **`parameter`**
  * `--url`: target url
  * `--folder`: folder path to save the downloaded page
  * `--type`: type of the page, currently only support `wiki` and `forum`. If not specified, it will download the whole page from the url.

#### **2. Download whole forum topics**
- Download whole forum topics (you need to change `url` variable in the script):
```shell
python forum_scraper.py
```

#### **3. Download whole wiki pages**
> **Note**
> Remember to fill in correct url and folder path in the shell command.
> Need help? Run `python download_wiki.py --help` to see the help message.

```shell
python download_wiki.py --url 'http://ess-wiki.advantech.com.tw/view/RISC' --folder 'download_wiki/' --new
```

* **`parameter`**
  * `--url`: target url
  * `--folder`: folder path to save the downloaded page
  * `-n`, `--new`: if specified, it will create a new folder and a new `site_change.json` file.
  * `-u`, `--update`: Check if there is any update in the wiki page, and update the `site_change.json` file. New or changed files will be saved in `FOLDER/update/`.
  * `site_change.json` file is used to record the changes of the wiki page. 

## Text Segmentation and Upload to Azure Service

> **Note**\
> `predocs.py` will segment the text to fit the **Index** of Azure Cognitive Search Service. Optionally, it can also upload the whole file to **Container** on Azure Blob Storage.\
> Need help? Run `python predocs.py --help` to see the help message and the description of each parameter.

### How to use
1. Please check the environment variables in `.env` are all correct.
2. There are two ways to run code:
    - Run the python script:
        By default, it will upload data to Azure Blob Storage and Azure Cognitive Search Service, and remove the url and image in markdown file before text segmentation.
        So, if want to control the behavior, please go to the `predocs.sh` to change the parameters at the second last line.
        ```shell
        python predocs.py --data_path {your_data_path}
        ```
    - Directly run the `predocs.py` code:
        > Be aware that you have to enter the correct parameters in the code below by yourself.
        1. Upload Search Service and Blob Storage simultaneously:
            ```shell
            python prepdocs.py "DATA_PATH" --searchservice "AZURE_SEARCH_SERVICE" --index "AZURE_SEARCH_INDEX" --tenantid "TENANT_ID" --searchkey "AZURE_KEY_CREDENTIAL" --storageaccount "AZURE_STORAGE_ACCOUNT" --container "AZURE_STORAGE_CONTAINER" --storagekey "AZURE_STORAGE_KEY" --tenantid "TTENANT_ID" -v --remove_image --remove_href
            ```
        2. Only upload to Search Service:
            ```shell
            python prepdocs.py "DATA_PATH" --searchservice "AZURE_SEARCH_SERVICE" --index "AZURE_SEARCH_INDEX" --tenantid "TENANT_ID" --searchkey "AZURE_KEY_CREDENTIAL" -v --remove_image --skipblobs
            ```
        3. `prepdocs.py` doesn't support only upload to Blob Storage.
            - If you want to upload to Blob Storage only, please do it manually on Azure Portal.