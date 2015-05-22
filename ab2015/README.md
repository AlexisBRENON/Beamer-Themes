# ab2015 theme

This theme is my first one. It's called ab2015, because I'm Alexis Brenon and I made it in 2015. Obvious !
This theme is intended to be used for simple presentation. It's based on two main ideas :
* Designed for 16:9 aspect ratio
* Dark pages for structuring the presentation

Nevertheless, It's based on the default theme and most of its features can be used.

## Customisation

The ab2015 theme let you tune it through some variables and command.

### Colors

ab2015 theme is based on 3 colors.
These three colors can be defined before loading the theme, using the HTML notation.

|Command|Description|
|-------|-----------|
|`\DarkColor`| Main color of font (default: 383132)|
|`\LightColor`| Main color of background (default: F0E3B8)|
|`\AccentColor`| Color used for excerpt (default: 3E8B91)|

### Fonts

ab2015 use four different fonts in rendering. To compile properly, the used fonts have to be present on you computer. If one of the default fonts is not present or if you want to use another one, you have to define a command with the new font name :

|Command|Description|
|-------|-----------|
|`\MainFontName`| Name of the font used in general (default: DejaVu Sans Condensed)|
|`\TitleFontName`| Name of the font used for titles (frame and first page) (default: [Poetsen One](http://www.dafont.com/fr/poetsen-one.font))|
|`\MonoFontName`| Name of the font used for monospace (default: Inconsolata)|
|`\IconicFontName`| Name of the font used for icons (default: [Font Awesome](https://fortawesome.github.io/Font-Awesome/icons/)) [_See below for more_](#twitterandwebsite)|

You have to define the command before loading the theme (`\usetheme{ab2015}`) to avoid warnings during compilation.

### Pages

|Command|Argument|Description|
|-------|--------|-----------|
|`\openingpage`|none| Build the opening page. It's a classic title page but with a reversed contrast|
|`\partpage`|none| Build a part page, a simple contrasted page with part title|
|`\closingpage`| _&lt;text&gt;_ | Build a closing page, with _&lt;text&gt;_ in the center. Generally used for "Questions ?" or "Thanks !" page. If defined, it also display twitter and website variables |

Part page can contains a progress bar to show to the audience where you are in your presentation. To active it, just call the `\DisplayProgressBar` command at the beginning of your document.

### <a name="twitterandwebsite"></a>Twitter and Website

The closing page can display your Twitter account name and your website URL, both prepended with a beautiful icon. If you share the resulting PDF, the readers will be able to click on these lines to be automatically linked to your twitter account (`https://twitter.com/twittername`) or your website (`http://websiteurl`). To define those variable use :

|Command|Argument|Description|
|-------|--------|-----------|
|`\twitter`| _&lt;text&gt;_ | Will display _@text_ after the twitter icon (the `@` is automatically prepended)|
|`\website`| _&lt;text&gt;_ | Will display _text_ after the website icon|


By default, to display icons, the theme uses the Font Awesome font with characters : `U+F099` for twitter and `U+F0AC` for website. Nevertheless, as codepoint can change or you can use different font, you can use the following command to change the icons :

|Command|Argument|Description|
|-------|--------|-----------|
|`\twittericon`| _&lt;text&gt;_ | Will display _text_ using the iconic font as twitter icon|
|`\websiteicon`| _&lt;text&gt;_ | Will display _text_ using the iconic font the website icon|

I think that's all ! Have a nice day ! :)
