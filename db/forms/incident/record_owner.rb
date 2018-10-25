record_owner_fields = [
  Field.new({"name" => "current_owner_section",
             "mobile_visible" => false,
             "type" => "separator",
             "display_name_en" => "Current Owner"
            }),
  Field.new({"name" => "caseworker_name",
             "show_on_minify_form" => true,
             "mobile_visible" => true,
             "type" => "text_field",
             "display_name_en" => "Field/Case/Social Worker"
            }),
  Field.new({"name" => "owned_by",
             "show_on_minify_form" => true,
             "mobile_visible" => true,
             "type" => "select_box",
             "display_name_en" => "Caseworker Code",
             "option_strings_source" => "User",
             "editable" => false,
             "disabled" => true
            }),
  Field.new({"name" => "owned_by_agency",
             "mobile_visible" => false,
             "type" => "select_box",
             "display_name_en" => "Agency",
             "editable" => false,
             "disabled" => true,
             "option_strings_source" => "Agency"
            }),
  Field.new({"name" => "assigned_user_names",
             "mobile_visible" => false,
             "type" =>"select_box",
             "multi_select" => true,
             "display_name_en" => "Other Assigned Users",
             "option_strings_source" => "User"
            }),
  Field.new({"name" => "record_history_section",
             "mobile_visible" => false,
             "type" => "separator",
             "display_name_en" => "Record History"
            }),
  Field.new({"name" => "created_by",
             "mobile_visible" => false,
             "type" => "text_field",
             "display_name_en" => "Record created by",
             "editable" => false,
             "disabled" => true
            }),
  Field.new({"name" => "created_organization",
             "mobile_visible" => false,
             "type" => "text_field",
             "display_name_en" => "Created by agency",
             "editable" => false,
             "disabled" => true
            }),
  Field.new({"name" => "previously_owned_by",
             "mobile_visible" => false,
             "type" => "text_field",
             "display_name_en" => "Previous Owner",
             "editable" => false,
             "disabled" => true
            }),
  Field.new({"name" => "previous_agency",
             "mobile_visible" => false,
             "type" => "text_field",
             "display_name_en" => "Previous Agency"
            }),
  Field.new({"name" => "module_id",
          "mobile_visible" => false,
          "type" => "text_field",
          "display_name_en" => "Module",
          "editable" => false,
          "disabled" => true
          }),
]

FormSection.create_or_update_form_section({
  unique_id: "incident_record_owner",
  parent_form: "incident",
  visible: true,
  order_form_group: 0,
  order: 0,
  order_subform: 0,
  form_group_name_en: "Record Owner",
  editable: true,
  fields: record_owner_fields,
  mobile_form: true,
  name_en: "Record Owner",
  description_en: "Record Owner"
})
