# CWP Silverstripe theme

Author: Darrell White



## Me and CWP


The intention is to take the CWP theme and stripe it back so it's a blank slate ready for a designer/front-end-developer to work with. This isn't an instant leap towards a half finished design layout like Bootstrap. I've used the Bootstrap grid for ease of use, and their mixins so I don't have to reinvent the wheel.

The focus so far is mainly on the base form components so they tick the accessibility boxes and also have the building blocks for custom designed checkboxes and radio buttons that work across all media. 




## Form structure


Our desired pattern for forms in the UX team is for a stacked layout as follows:

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

To be continued...




## CWP JavaScript


I really killed this bit. I've removed a gread deal of classes and restructured the HTML in the form conponents. I've scanned the CWP JS files and noted the great deal of jQuery referencing classes like 'middleColumn' which I've removed. So this would need a SS Developer to work through validation etc. to finish the job.