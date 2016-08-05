cheatsheet do
  title 'LookML'               # Will be displayed by Dash in the docset list
  docset_file_name 'LookML'    # Used for the filename of the docset
  keyword 'lookml'             # Used as the initial search keyword (listed in Preferences > Docsets)
  # resources 'resources_dir'  # An optional resources folder which can contain images or anything else

  introduction 'LookML cheat sheet'  # Optional, can contain Markdown or HTML

  # A cheat sheet must consist of categories
  category do
    id 'Dimensions'  # Must be unique and is used as title of the category

    entry do
      command 'type'         # Optional
      name 'Dimension types'    # A short name, can contain Markdown or HTML
      notes 'Some notes'      # Optional longer explanation, can contain Markdown or HTML
    end
    entry do
      command 'primary_key'
      name 'Primary key?'
      notes <<-'END'
        Value can be true or false.

        *IMPORTANT* Required for the GROUP BY clause of SQL statements generated by Looker.

        If the table you are describing does not have a primary key then you can concatenate fields together to make your own primary key dimension like this:

        ```yaml
        dimension: primary_key
        primary_key: true
        sql: concat(${booking_date},${airline_code})
        ```
        END
    end
    entry do
      command 'suggestable'
      name 'suggestable'
      notes <<-'END'
        Value can be true or false.

        Use `suggestable: false` to stop the automatic query on string fields for the TypeAhead in an Explore filter text field.
      END
  end

  category do
    id 'Measures'

    
  end

  notes 'Some notes at the end of the cheat sheet'
end