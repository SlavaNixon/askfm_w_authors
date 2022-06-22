# AskFm clone website

## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)

## About <a name = "about"></a>
#### English
This site is a clone of askfm. It is possible to ask questions to users and answer them.
#### Russian
Это сайт в виде клона askfm. Есть возможность задавать вопросы пользователям и отвечать на них.

## Getting Started <a name = "getting_started"></a> 
The active version of the site where you can try to shorten links is [here](http://show-n-d.herokuapp.com/ "here").
To start using the application (run a local server) you need: Ruby on Rails 7.0.1, Ruby 3.0.2, Bundler.
#### Windows
You can get all the necessary tools by downloading [RubyInstaller](https://rubyinstaller.org/ "RubyInstaller").
#### Linux
Good instruction is [here](https://www.tutorialspoint.com/ruby-on-rails/rails-installation.htm "here").

### Installing

Use `git clone` in command line being in desired directory.

```
$ git clone https://github.com/SlavaNixon/url-shortener .
```

After clone start `bundle`.

```
$ bundle
```

After installing gems you can start local server.

```
$ bundle exec rails s
```
Now you can open any browser and go to `http://127.0.0.1:3000` to use service.
