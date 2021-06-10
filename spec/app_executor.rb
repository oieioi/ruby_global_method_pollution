module AppExecutor
  def self.execute(file_name, &block)
    Module.new.yield_self do |m|
      m.module_eval(open(file_name).read, file_name)
      m.module_eval {
        extend self
        yield(self)
      }
    end
  end
end
