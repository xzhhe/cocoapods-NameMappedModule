module CocoapodsNameMappedModuleHooks
  module Helper
    require 'cocoapods'
    require 'json'
    require 'pp'

    def generate(context, args = {})
      puts ' ⚠️  podspec name <==> module name'
      name_framework_mapping = {}
      context.umbrella_targets.each { |t|
        t.specs.each { |s|
          name_framework_mapping[s.root.name] = if s.root.module_name
                                                  "#{s.root.module_name}.framework"
                                                else
                                                  "#{s.root.name}.framework"
                                                end
        }
      }

      puts "🚗 name_framework_mapping"
      pp name_framework_mapping

      file = args[:output]
      if file
        File.open(file, 'w+') { |f| f.write(JSON.pretty_generate(name_framework_mapping)) }
        puts " 🚙 write name_framework_mapping hash to #{file}"
      end

      name_framework_mapping
    end
  end
end
