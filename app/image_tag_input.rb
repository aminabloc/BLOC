 class ImageTagInput <  SimpleForm::Inputs::Base
   ## Because image tage doesnot work if not included the below
   include ActionView::Helpers::AssetTagHelper
   def input
    ("#{@builder.text_field(attribute_name, input_html_options)}" + "#{image_tag()}).html_safe")
   end
end