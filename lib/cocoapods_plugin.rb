require 'cocoapods-NameMappedModule/command'
require_relative 'cocoapods-NameMappedModule/helper/name_mapped_module_helper'

include(CocoapodsNameMappedModuleHooks::Helper)

module CocoapodsNameMappedModuleHooks
  Pod::HooksManager.register('cocoapods-NameMappedModule', :post_install) do |context|
    generate(context, output: File.expand_path('.name_framework_mapping.json', Dir.pwd))
  end
end
