To create a report...

1. Create a folder called <reportName> and in that folder:
* body.mustache - report's custom body template
* custom.css - reports custom css (to be applied over global/shared css)
* custom.js - any javascript for the report
* css.imports - line separated list of relative paths to CSS files to import (should be relative to shared/libs)
* js.imports - line separated list of relative paths to JS files to import (should be relative to shared/libs)
* partials - directory which should contain mustache templates. These templates should be available to the body.mustache template using the file's name with the file extension (eg: partial.mustache will be available as `{{>partial}}`)
2. Define the report class and add class overrides :
* define report class in `02-templating-class.R` by adding `setClass('reportName')` to the classes section.
* <reportName>-data.R
** Define override for `parseCustomDataElementsForTemplate` function - function will do custom data parsing and build a list object with data which will be available to the templates in `reportData`
* <reportName>-render.R
** Define override for `renderCustomFragments` - function which will do any custom rendering, return a named list of rendered HTML fragments. The named list will be available to the templates in `renderedFragments`

All templates *MUST* have the `.mustache` extension.