## SiteMap
- [Github Helpdesk Ticket](https://support.github.com/tickets)
- [Give Feedback to Github](https://github.com/orgs/community/discussions)
- [Github.com status live report](https://www.githubstatus.com/)
- [Github :clown_face: Emoji cheat sheet](https://github.com/ikatyang/emoji-cheat-sheet)
## Limit
- GitHub has a strict file limit of **100MB**
- Github repository description cannot include newline (EOL)
    - otherwise it shows `Error saving your changes: Description control characters are not allowed`

## Github desktop

## Repository
- Repository Environment Box: controlled by settings for the repository
    > The environments tab shows a block under the details of the repository. Once a deployment has been made to a service—be that GitHub Pages, or an external service—the historic deployments will show up in this tab. The checkbox in the settings for the repository will either display that information or hide it.  
    > [Here](https://docs.github.com/en/free-pro-team@latest/developers/overview/viewing-deployment-history) is a little more information on that pane. These are all configured in the repository information provided earlier and when a deployment to that environment occurs, it should show up in the list.
- [How to sync master to a fork](https://help.github.com/articles/syncing-a-fork/)
## Branches



## Github Gist
- [No longer able to make public gists private](https://gist.github.com/zmwangx/bc79e7d95d82c2f5e0976975b6e1c6d6)

## Github Packages

- Docker login
    ```
    $ export CR_PAT=YOUR_personal_access_token
    $ echo $CR_PAT | docker login ghcr.io -u USERNAME --password-stdin
    > Login Succeeded
    ```
- Docker push
    ```
    docker push ghcr.io/OWNER/IMAGE_NAME:latest
    ```
## `$ gh` -- Github CLI
- [official: Installing gh on Linux and BSD](https://github.com/cli/cli/blob/trunk/docs/install_linux.md)
- [gh vs hub](https://github.com/cli/cli/issues/312)
    - For many years, `hub` was the unofficial GitHub CLI tool. `gh` is a new project for us to explore what an official GitHub CLI tool can look like with a fundamentally different design. While both tools bring GitHub to the terminal, `hub` behaves as a proxy to git and `gh` is a standalone tool.   
