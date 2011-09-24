# Sample App
## Tech Stuff

* A Rails 3 app (Sample is in rails 3.0.10)
* NestedSortables.js (see source)
* Awesome nested set plugin `https://github.com/galetahub/awesome_nested_set.git` fork works well here
* Nested set-ready model eg. Category, Page, etc ... (see migrations)
  * `rails g scaffold category name:string parent_id:integer lft:integer rgt:integer` will get you started
* jQuery and jQuery-ui

### Other Notes

The flow of saving the nested set assumes that this will not be a regular occurrence and does not take into account the most efficient way of saving all records. There is definitely room for performance improvement and refactoring.

This normally works best when implementing into a CMS whereby admins will be the only ones performing this action.