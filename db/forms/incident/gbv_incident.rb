gbv_incident_fields = [
  Field.new({"name" => "incident_id",
             "mobile_visible" => false,
             "type" => "text_field",
             "editable" => false,
             "disabled" => true,
             "display_name_en" => "Long ID"
            }),
  Field.new({"name" => "short_id",
             "mobile_visible" => false,
             "type" => "text_field",
             "editable" => false,
             "disabled" => true,
             "display_name_en" => "Incident ID"
            }),
  Field.new({"name" => "marked_for_mobile",
             "mobile_visible" => false,
             "type" => "tick_box",
             "tick_box_label_en" => "Yes",
             "display_name_en" => "Marked for mobile?",
             "editable" => false,
             "disabled" => true
            }),
  Field.new({"name" => "incident_code",
             "mobile_visible" => false,
             "type" => "text_field",
             "editable" => false,
             "disabled" => true,
             "display_name_en" => "Incident Code"
            }),
  Field.new({"name" => "incidentid_ir",
             "show_on_minify_form" => true,
             "mobile_visible" => true,
             "type" => "text_field",
             "display_name_en" => "Incident ID IR",
             "help_text_en" => "Incident ID for the IR"
            }),
  Field.new({"name" => "status",
             "mobile_visible" => true,
             "type" => "select_box",
             "selected_value" => Record::STATUS_OPEN,
             "display_name_en" => "Incident Status",
             "option_strings_source" => "lookup lookup-incident-status"
            }),
  Field.new({"name" => "consent_reporting",
             "show_on_minify_form" => true,
             "mobile_visible" => true,
             "type" => "radio_button",
             "display_name_en" => "Consent is given to share non-identifiable information for reporting",
             "option_strings_source" => "lookup lookup-yes-no"
            }),
  Field.new({"name" => "date_of_first_report",
             "show_on_minify_form" => true,
             "mobile_visible" => true,
             "type" => "date_field",
             "display_name_en" => "Date of Interview",
             "date_validation" => "not_future_date"
            }),
  Field.new({"name" => "incident_date",
             "show_on_minify_form" => true,
             "mobile_visible" => true,
             "type" => "date_field",
             "display_name_en" => "Date of Incident"
            }),
  Field.new({"name" => "incident_description",
             "mobile_visible" => true,
             "type" => "textarea",
             "display_name_en" => "Account of Incident"
            }),
  Field.new({"name" => "displacement_incident",
             "show_on_minify_form" => true,
             "mobile_visible" => true,
             "type" => "select_box",
             "display_name_en" => "Stage of displacement at time of incident",
             "option_strings_text_en" => [
               { id: 'not_displaced', display_text: "Not Displaced / Home Community" },
               { id: 'pre_displacement', display_text: "Pre-displacement" },
               { id: 'during_flight', display_text: "During Flight" },
               { id: 'during_refuge', display_text: "During Refuge" },
               { id: 'during_return_transit', display_text: "During Return / Transit" },
               { id: 'post_displacement', display_text: "Post-Displacement" }
             ].map(&:with_indifferent_access)
            }),
  Field.new({"name" => "incident_timeofday",
             "mobile_visible" => true,
             "type" => "select_box",
             "display_name_en" => "Time of day that the Incident took place",
             "option_strings_text_en" => [
               { id: 'morning', display_text: "Morning (sunrise to noon)" },
               { id: 'afternoon', display_text: "Afternoon (noon to sunset)" },
               { id: 'evening_night', display_text: "Evening/Night (sunset to sunrise)" },
               { id: 'unknown', display_text: "Unknown/Not Applicable" }
             ].map(&:with_indifferent_access)
            }),
  Field.new({"name" => "incident_location_type",
             "mobile_visible" => true,
             "type" => "select_box",
             "display_name_en" => "Type of place where the incident took place",
             "option_strings_text_en" => [
               { id: 'forest', display_text: "Bush/Forest" },
               { id: 'garden', display_text: "Garden/Cultivated Field" },
               { id: 'school', display_text: "School" },
               { id: 'road', display_text: "Road" },
               { id: 'clients_home', display_text: "Client's Home" },
               { id: 'perpetrators_home', display_text: "Perpetrator's Home" },
               { id: 'other', display_text: "Other" },
               { id: 'market', display_text: "Market" },
               { id: 'streamside', display_text: "Streamside" },
               { id: 'beach', display_text: "Beach" },
               { id: 'farm', display_text: "Farm" },
               { id: 'latrine', display_text: "Latrine" },
               { id: 'perpetrators_friends_home', display_text: "Perpetrator's Friend's Home" },
               { id: 'entertainment_centre', display_text: "Entertainment Centre" },
               { id: 'unfinished_house', display_text: "Unfinished House" },
               { id: 'guest_house_hotel', display_text: "Guest House - Hotel" }
             ].map(&:with_indifferent_access)
            }),
   Field.new({"name" => "incident_location",
              "show_on_minify_form" => true,
              "mobile_visible" => true,
              "type" => "select_box",
              "display_name_en" => "Incident Location",
              "option_strings_source" => "Location",
              "searchable_select" => true
            }),
  Field.new({"name" => "incident_camp_town",
             "type" => "text_field",
             "show_on_minify_form" => true,
             "mobile_visible" => true,
             "display_name_en" => "Incident Camp/Town"
            })
]

FormSection.create_or_update_form_section({
  unique_id: "gbv_incident_form",
  parent_form: "incident",
  visible: true,
  order_form_group: 30,
  order: 10,
  order_subform: 0,
  form_group_id: "incident",
  fields: gbv_incident_fields,
  mobile_form: true,
  is_first_tab: true,
  editable: true,
  name_en: "GBV Incident",
  description_en: "GBV Incident"
})