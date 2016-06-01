# CWP Silverstripe theme

Author: Darrell White

## Me and CWP


The intention is to take the CWP theme and stripe it back so it's a blank slate ready for a designer/front-end-developer to work with. This isn't an instant leap towards a half finished design layout like Bootstrap. I've used the Bootstrap grid for ease of use, and their mixins so I don't have to reinvent the wheel.

The focus so far is mainly on the base form components so they tick the accessibility boxes and also have the building blocks for custom designed checkboxes and radio buttons that work across all media. 




## Form structure


Our desired pattern for forms in the UX team is for a stacked layout as follows ([examples here](http://solnetdigital.github.io/sdf/)):

#### Text inputs
1. Label
2. Support text 
3. input
4. validation message

#### Checkboxes and radio buttons
1. input
2. label
3. validation

Support text for these will appear with the legend.

**Note:** that this theme is not designed to support any other format! This is a UX industry standard for large format forms. If you're client/designer requires a more bespoke layout, then the templates would need rework.

## SASS structure and thinking

Two methodologies have been followed for the creation of the SASS. 

#### Inverted triangle CSS

Sadly the ITCSS git content has been taken down for reference. There is a good video that explains the [concept by the creator, Harry Roberts](https://www.youtube.com/watch?v=1OKZOV-iLj4).

This jist of it:

Start vague and simple, and slowly focus as you build up your SASS. 

##### Structure
1. **Settings:** This is where you have your variables
2. **Tools:** Mixins basically and anything else that serves as a tool for your SASS files
3. **Generic:** Ok, finally some CSS... well VERY basic. Resets, very basic type settings that will flow through your whole project. You don't want to be setting any look and feel if it will need to be overwritten most components
4. **Base:** Here we start to set up base styles for elements that will combine to make objects.
5. **Objects:** Here we are starting to introduce our branding look and feel at an object level, such as form inputs.
6. **Components:** Styles that bring the objects together. So you may have some specific stlying for a heading of a side panel widget.
7. **Trumps:** !importants everywhere!!! Well, perhaps not, but these are edge cases that need a partcular 'tweak' to get it just right.

#### Object orientated CSS
[Smashing magazine intro of OOCSS](https://www.smashingmagazine.com/2011/12/an-introduction-to-object-oriented-css-oocss/)

Basically you break down your CSS to components. You still have an underlying base CSS which flows through everything. Then you further customise for your components, so you avoid overwriting CSS. This was a huge issue with Bootstrap. 

If declarations are used over and over again for components, then you can move them up into the objects level. 

#### Reserved words

These are reserved for use as modifier classes and not to have any default declarations assigned

- open
- active
- visible
- error

The reason for not assigning declarations to the .open class, we don't know how you will 'open' the component. It could be via display, or max-height or height. The above way allows you to customise it per component.

These reserved words will be toggled by JS to change the state of a component.



## CWP JavaScript


I really killed this bit. I've removed a gread deal of classes and restructured the HTML in the form conponents. I've scanned the CWP JS files and noted the great deal of jQuery referencing classes like 'middleColumn' which I've removed. So this would need a SS Developer to work through validation etc. to finish the job.