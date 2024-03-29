# alfred-notion-note-workflow

![](https://user-images.githubusercontent.com/604167/173222907-3b905ae9-8d11-4338-b31a-82372b8a6bbd.png)

An [Alfred 5](https://www.alfredapp.com/) workflow for adding a note to a [Notion](https://www.notion.so/) page.

## Requirements

A Notion API key and a pre-existing Notion page must be set up for this workflow to function.

### Notion API key

You will need to generate an [internal integration](https://developers.notion.com/docs/authorization#authorizing-internal-integrations) API key:

1. Navigate to [https://www.notion.so/my-integrations](https://www.notion.so/my-integrations) to set up your  integration
2. Set the integration type to **Internal integration**
3. Set the capabilities to **Read content** and **Insert content** only and **No user information**
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
7. Enter your Notion API key
8. Enter the [page ID](https://developers.notion.com/docs/working-with-page-content#creating-a-page-with-content) of the Notion page you would like to add notes to
9. Click **Import**

Note that the [Alfred Powerpack](https://www.alfredapp.com/powerpack/) is required to use workflows.

## Usage

### Add a note

1. Use the keyword `no` to trigger the workflow
2. Enter the note you would like to add
3. Press `enter` to submit
4. The note will appear on the specified Notion page with a timestamp

### Open notes in browser

1. Use the keyword `gno` to trigger the workflow
2. Press `enter` to submit
3. A browser window or tab will open to the specified Notion notes page

### Open notes in Notion app

1. Use the keyword `ono` to trigger the workflow
2. Press `enter` to submit
3. The Notion app will open to the specified Notion notes page

## License

Code released under the [MIT License](https://github.com/alexchantastic/alfred-notion-note-workflow/blob/master/LICENSE).
