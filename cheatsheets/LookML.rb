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
      command 'label'
      name 'label'
      notes 'Changes the name of the field in the Explore view so it can be different from the LookML field name. If not provided the field will us the value supplied in the `dimension`.'
    end 

    entry do 
      command 'view_label'
      name 'view_label'
      notes ''
    end 

    entry do 
      command 'group_label'
      name 'group_label'
      notes ''
    end 

    entry do
      command 'type'         # Optional
      name 'dimension types'    # A short name, can contain Markdown or HTML
      notes 'Some notes'      # Optional longer explanation, can contain Markdown or HTML
    end

    entry do
      command 'primary_key'
      name 'Primary key?'
      notes <<-'END'
        Value can be true or false.

        *IMPORTANT* Required for Looker generated SQL statements. See: Symetric Aggregates.

        If the table you are describing does not have a primary key then you can concatenate fields together to make your own primary key dimension like this:

        ```yaml
        dimension: primary_key
        primary_key: true
        sql: concat(${booking_date},${airline_code})
        ```
        END
    end

    entry do 
      command 'hidden'
      name 'hidden'
      notes 'Value can be true or false.'
    end 

    entry do 
      command 'alias'
      name 'alias'
      notes <<- END 
        ```yaml
        alias: [old_field_name, old_field_name]
        ```
      END
    end 

    entry do 
      command 'value_format'
      name 'value_format'
      notes ''
    end 

    entry do 
      command 'html'
      name 'html'
      notes ''
    end 

    entry do 
      command 'sql'
      name 'sql'
      notes 'The SQL for the field.'
    end 

    entry do 
      command 'required_fields'
      name 'required_fields'
      notes <<- END
      ```yaml
      required_fields: [field_name, field_name]
      ```
      END
    end 

    entry do 
      command 'description'
      name 'description'
      notes 'Displayed in the Explore view next to the field name on hover over of gray question mark.'
    end 

    entry do 
      command 'drill_fields'
      name 'drill_fields'
      notes ''
    end 

    entry do
      command 'suggestable'
      name 'suggestable'
      notes <<-'END'
        Value can be true or false.

        Use `suggestable: false` to stop the automatic query on string fields for the TypeAhead in an Explore filter text field.
    END

    entry do 
      command 'can_filter'
      name 'can_filter'
      notes 'Value can be true or false.'
    end 

    entry do 
      command 'sql_case'
      name 'sql_case'
      notes ''
    end 

    entry do 
      command 'tiers'
      name 'tiers'
      notes ''
    end 

    entry do 
      command 'style'
      name ''
      notes ''
    end 

    entry do 
      command 'alpha_sort'
      name 'alpha_sort'
      notes ''
    end 

    entry do 
      command 'sql_latitude'
      name 'sql_latitude'
      notes ''
    end 

    entry do 
      command 'sql_longitude'
      name 'sql_longitude'
      notes ''
    end 

    entry do 
      command 'suggest_persist_for'
      name 'suggest_persist_for'
      notes ''
    end 

    entry do 
      command 'suggest_dimension'
      name 'suggest_dimension'
      notes ''
    end 

    entry do 
      command 'suggest_explore'
      name 'sugest_explore'
      notes ''
    end 

    entry do 
      command 'suggestions'
      name 'suggestions'
      notes ''
    end 

    entry do 
      command 'bypass_suggest_restrictions'
      name 'bypass_suggest_restrictions'
      notes ''
    end 

    entry do 
      command 'full_suggestions'
      name 'full_suggestions'
      notes ''
    end 

    entry do 
      command 'skip_drill_filter'
      name 'skip_drill_filter'
      notes ''
    end 

    entry do 
      command 'case_sensitive'
      name 'case_sensitive'
      notes ''
    end 

    entry do 
      command 'order_by_field'
      name 'order_by_field'
      notes ''
    end 

    entry do 
      command 'links'
      name 'links'
      notes <<- END
      ```yaml
      links:
        - label: 'desired label name'
          url: desired_url
          icon_url: url_of_an_ico_file
        # Possibly more links
      ```
      END
    end 
  end

  category do
    id 'Dimension Groups'

    entry do 
      command 'timeframes'
      name 'timeframes'
      notes ''
    end 

    entry do 
      command 'convert_tz'
      name 'convert_tz'
      notes 'Value can be true or false.'
    end 

    entry do 
      command 'datatype'
      name 'datatype'
      notes ''
    end 
  end 

  category do
    id 'Measures'

    entry do 
      command 'type'
      name 'measure type'
      notes ''
    end 

    entry do 
      command 'direction'
      name ''
      notes ''
    end 

    entry do 
      command 'approximate'
      name 'approximate'
      notes ''
    end 

    entry do 
      command 'approximate_threshold'
      name 'approximate_threshold'
      notes ''
    end 

    entry do 
      command 'sql_distinct_key'
      name 'sql_distinct_key'
      notes ''
    end 

    entry do 
      command 'list_field'
      name 'list_field'
      notes ''
    end 

    entry do 
      command 'filters'
      name 'filters'
      notes <<- END 
      ```yaml
      filters:
        dimension_name: 'looker filter expression'
        # Possibly more filters statements
      ```
      END
    end 
  end

  notes 'Some notes at the end of the cheat sheet'
end