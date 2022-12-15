require 'pycall/import'

module MlService
  include PyCall::Import
  
  class InputParser

    def initialize
      pyfrom :sklearn, import: :datasets
      pyfrom :sklearn, import: :svm
      pyfrom :'sklearn.model_selection', import: :train_test_split

      puts 'cal ooo'
      digits = datasets.load_digits
      puts 'digits'
      puts digits
    end
  end
end
