# Demo Helper

I've written two bash scripts to build templates for live coding demos. One script is for the setup of demo projects and one tears down the project folder.

## Usage

I've gone ahead and created bash aliases for these scripts in my .bash_profile. They look like this:

```bash
alias createDemo="bash /path/to/script"
alias teardownDemo="bash /path/to/script"
```
## Running the scripts

There are a few types of demo projects I can spin up. The syntax is as follows:

```bash
createDemo -<type> <app-name>
```

`-<type>` is required for any demo. `<app-name> is not required for a `-j` project.


Here is the run down of all the options I can use:

```bash
createDemo -j               # Creates two demo folders within the project. One for css and one for Bootstrap.

createDemo -fr rails-app    # Creates a rails application named 'rails-app'.

createDemo -fcra react-app  # Creates a create-react-app project named 'react-app'.

createDemo -fs full-stack   # Creates a rails backend named 'full-stack-back-end' and a create-react-app frontend called 'full-stack-front-end'.

teardownDemo                # Tears down demoProject folder.
```
***NOTE:*** `<app-name>` is just a name to give to the demo apps. They can be anything you need them to be.
