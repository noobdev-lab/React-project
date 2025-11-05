# Dev documentation

![README cover](./app/front-end/public/readme-cover.jpeg)
Single personal project for learning to set up a [React.js](https://react.dev/learn/installation#build-a-react-app-from-scratch) project with [Vite.js](https://vite.dev/guide/#manual-installation)

## Steps

1. Create the base of the project

    ```shell
        mkdir -p Project/{README.md, app/{front-end, back-end, dev}}
    ```

2. Install **Vite** inside *front-end* directory

    ```shell
        cd .app/front-end
        npm create vite@latest .

        // choose 'React' 
        // choose 'Js + React Compiler'
        // choose 'no' to rolldown
        // choose 'yes' to install an run
        // Now vite+react is configured
    ```

3.  

## Techs

|Tech :||Vite|React|Sass|
|:-|:-|:-|:-|:-|
|For :||Performance|Content|Style|
|Does :||Bundle modules|Dynamic app|Complexe Design system|

*Advantage of those tools*
    - Simple
    - Fast
    - Light weight
    - Organised
    - Maintainible
    - Flexible
    - Familiar

## Tasks

- Git init ✅
- Create the base structure of the project ✅
- Add git ignore Commit and push ✅
- Install Vite.js ✅
- Install all the dependencies required for the project (sass, react, auto-prefixer) 
- Set up the HTML root and the React app and main
- Create Sass folders + sass trapilation
- Create necessary Sass variables and mixins
- Create a _Reset.sass
- Create a Structural documentation.txt

## Vite CLI

`npm run dev`

|Server options||
|:-|:-|
|`npm run dev`| run the server locally|
|r| restart server|
|u| show localhost link|
|o| open the browser|
|c| clear server's console|
|q| quit the server|
|`npm run build`| builds the server for prod|
|`npm run preview`| simulate the server for prod|


## Usefull commands

```shell
    ls -R
    // Lists all files and directories
    
    find .
    // Same + hidden files
```
