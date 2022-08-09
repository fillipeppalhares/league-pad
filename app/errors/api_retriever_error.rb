# frozen_string_literal: true

class ApiRetrieverError < StandardError
  attr_reader :code, :url

  def initialize(message = nil, code = nil, url = nil)
    @code = code
    @url = url
    super(message)
  end
end



# class ActionNotFound < StandardError
#   attr_reader :controller, :action # :nodoc:

#   def initialize(message = nil, controller = nil, action = nil) # :nodoc:
#     @controller = controller
#     @action = action
#     super(message)
#   end

#   if defined?(DidYouMean::Correctable) && defined?(DidYouMean::SpellChecker)
#     include DidYouMean::Correctable # :nodoc:

#     def corrections # :nodoc:
#       @corrections ||= DidYouMean::SpellChecker.new(dictionary: controller.class.action_methods).correct(action)
#     end
#   end
# end



# class FilenameIncorrect < StandardError
#   def initialize(file, expected_locale, unexpected_locales)
#     super "#{file} can only load translations for \"#{expected_locale}\". Found translations for: #{unexpected_locales}."
#   end
# end
