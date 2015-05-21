# ab2015 theme

This theme is my first one. It's called ab2015, because I'm Alexis Brenon and I made it in 2015. Obvious !
This theme is intended to be used for simple presentation. It's based on two main ideas :
* Designed for 16:9 aspect ratio
* Dark pages for structuring the presentation

Nevertheless, It's based on the default theme and most of its features can be used.

## Customisation

The ab2015 theme let you tune it through some variables and command.

### Colors

ab2015 theme is based on 6 colors :
* `abVeryDark`
* `abDark`
* `abLight`
* `abVeryLight`
* `abAccent`
* `abAlert`

All these six colors can be redefined using the classic color syntax :

    \definecolor{abVeryLight}{RGB}{248, 248, 242}
    \definecolor{abAlert}{HTML}{D25252}

As you guess, `abVeryDark` and `abDark` are intended to represent dark colors (e.g. black and grey80) and `abLight` and `abVeryLight` light colors (e.g. white and yellow). In addition, `abAccent` is used for `example` boxes and `abAlert` for `alerted` text and boxes.

Moreover, you can use the following command to invert `abVery(Light|Dark)` and `ab(Light|Dark)`.

|Command|Argument|Description|
|-------|--------|-----------|
|`\invertcontrast`|none|Switch main foreground and background colors|

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

### <a name="twitterandwebsite"></a>Twitter and Website

The closing page can display your Twitter account name or URL and your website URL, both prepended with a beautiful icon. To define those variable use :

|Command|Argument|Description|
|-------|--------|-----------|
|`\twitter`| _&lt;text&gt;_ | Will display _text_ after the twitter icon (no post-processing to prepend the `@` or whatever)|
|`\website`| _&lt;text&gt;_ | Will display _text_ after the website icon|

By default, to display icons, the theme uses the Font Awesome font with characters : `U+F099` for twitter and `U+F0AC` for website. Neverthelesse, as codepoint can change or you can use different font, you can use the following command to change the icons :

|Command|Argument|Description|
|-------|--------|-----------|
|`\twittericon`| _&lt;text&gt;_ | Will display _text_ using the iconic font as twitter icon|
|`\websiteicon`| _&lt;text&gt;_ | Will display _text_ using the iconic font the website icon|

I think that's all ! Have a nice day ! :)
