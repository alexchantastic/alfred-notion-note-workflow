# alfred-notion-note-workflow

![](https://user-images.githubusercontent.com/604167/173209441-28e26a25-261d-4f48-8146-27f95ca573bc.png)

An [Alfred 4](https://www.alfredapp.com/) workflow for adding a note to a [Notion](https://www.notion.so/) page.

## Requirements

A Notion API key and a pre-existing Notion page must be set up for this workflow to function.

### Notion API key

You will need to generate an [internal integration](https://developers.notion.com/docs/authorization#authorizing-internal-integrations) API key:

1. Navigate to [https://www.notion.so/my-integrations](https://www.notion.so/my-integrations) to set up your  integration
2. Set the integration type to **Internal integration**
3. Set the capabilities to **Insert content** only and **No user information**
4. Save the changes and make note of the API token that is generated

### Granting the integration access to a page

![](https://user-images.githubusercontent.com/604167/173209351-1c5cefa1-92be-4c7c-83bf-08125441b2d4.png)

1. Create or navigate to the page you would like to add notes to in Notion
2. Click **Share** at the top right
3. In the invite input field, type in the name of the internal integration that you created prior
4. Click **Invite** and the integration should appear in the list

## Installation

1. [Download the workflow](https://github.com/alexchantastic/alfred-notion-note-workflow/releases/latest)
2. Double click the `.alfredworkflow` file to install
7. Add your Notion API key to the `notion_api_key` environment variable
8. Add the [page ID](https://developers.notion.com/docs/working-with-page-content#creating-a-page-with-content) of the Notion page you would like to add notes to to the `notion_page_id` environment variable
9. Click **Import**

Note that the [Alfred Powerpack](https://www.alfredapp.com/powerpack/) is required to use workflows.

## Usage

1. Use the keyword `no` to trigger the workflow
2. Enter the note you would like to add
3. Press `enter` to submit
4. The note will appear on the specified Notion page with a timestamp

![](https://user-images.githubusercontent.com/604167/173209654-909bcd22-c484-455d-8c9f-ae7f7dfebe99.png)