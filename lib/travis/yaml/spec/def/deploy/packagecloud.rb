module Travis
  module Yaml
    module Spec
      module Def
        module Deploy
          # dpl readme says it's local_dir, docs say it's local-dir
          # dpl readme does not mention package_glob
          class Packagecloud < Deploy
            register :packagecloud

            def define
              super
              map :username,     to: :str, secure: true
              map :token,        to: :str, secure: true
              map :repository,   to: :str
              map :local_dir,    to: :str
              map :dist,         to: :str
              map :package_glob, to: :str
            end
          end
        end
      end
    end
  end
end
