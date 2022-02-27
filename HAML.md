# HAML

engine = Haml::Engine.new("%p Haml code!")
engine.render #=> "<p>Haml code!</p>\n"

## Examples

```html
#content
 .title
   %h1= @title
   = link_to 'Home', home_url
--------------------------------------
<div id='content'>
  <div class='title'>
    <h1>Teen Wolf</h1>
    <a href='/'>Home</a>
  </div>
</div>

```

```html
#content
  .left.column
    %h2 Welcome to our site!
    %p= print_information
  .right.column
    = render :partial => "sidebar"
------------------------------
<div id='content'>
  <div class='left column'>
    <h2>Welcome to our site!</h2>
    <p><%= print_information %></p>
  </div>
  <div class="right column">
    <%= render :partial => "sidebar" %>
  </div>
</div>
```

```
.item{:id => "item#{item.id}"}= item.body
-------------------------------------------------
<div class='item' id='item<%= item.id %>'>
  <%= item.body %>
</div>
```

Note that HTML tags are passed through unmodified as well. If you have some HTML you don’t want to convert to Haml, or you’re converting a file line-by-line, you can just include it as-is. For example:

```html
%p
  <div id="blah">Blah!</div>
is compiled to:
<p>
  <div id="blah">Blah!</div>
</p>
```

Brackets represent a Ruby hash that is used for specifying the attributes of an element. It is literally evaluated as a Ruby hash, so logic will work in it and local variables may be used.


```html
%script{:type => "text/javascript",
        :src  => "javascripts/script_#{2 + 7}"}
is compiled to:
<script src='javascripts/script_9' type='text/javascript'></script>
```

## class and :id Attributes

The :class and :id attributes can also be specified as a Ruby array whose elements will be joined together. A :class array is joined with " " and an :id array is joined with `_` For example:

```html
%div{id: [@item.type, @item.number], class: [@item.type, @item.urgency]}
is equivalent to:
%div{id: "#{@item.type}_#{@item.number}", class: "#{@item.type} #{@item.urgency}"}

```

## HTML-style Attributes: ()

Haml also supports a terser, less Ruby-specific attribute syntax based on HTML’s attributes. These are used with parentheses instead of brackets, like so:
%html(xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en")
Ruby variables can be used by omitting the quotes. Local variables or instance variables can be used. For example:

```html
%a(title=@title href=href) Stuff
This is the same as:
%a{:title => @title, :href => href} Stuff
```

```
Doctype: !!!
When describing HTML documents with Haml, you can have a document type or XML prolog generated automatically by including the characters !!!. For example:
!!! XML
!!!
%html
  %head
    %title Myspace
  %body
    %h1 I am the international space station
    %p Sign my guestbook
is compiled to:
<?xml version='1.0' encoding='utf-8' ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <title>Myspace</title>
  </head>
  <body>
    <h1>I am the international space station</h1>
    <p>Sign my guestbook</p>
  </body>
</html>
```



# HTML Comments
The forward slash character, when placed at the beginning of a line, wraps all text after it in an HTML comment. For example:

```html
%peanutbutterjelly
  / This is the peanutbutterjelly element
  I like sandwiches!
is compiled to:
<peanutbutterjelly>
  <!-- This is the peanutbutterjelly element -->
  I like sandwiches!
</peanutbutterjelly>
```

The forward slash can also wrap indented sections of code. For example:

```html
  %p This doesn't render...
  %div
    %h1 Because it's commented out!
is compiled to:
<!--
  <p>This doesn't render...</p>
  <div>
    <h1>Because it's commented out!</h1>
  </div>
-->
```


## Running Ruby

The hyphen character is also followed by Ruby code. This code is evaluated but not inserted into the document.
It is not recommended that you use this widely; almost all processing code and logic should be restricted to Controllers, Helpers, or partials.

For example:

```js
- foo = "hello"
- foo << " there"
- foo << " you!"
%p= foo
is compiled to:
<p>
  hello there you!
</p>
```