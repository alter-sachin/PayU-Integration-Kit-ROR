# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ExampleStore::Application.initialize!

# Initialize ActiveMerchant config
# require 'active_merchant/billing/integrations/action_view_helper'
# ActionView::Base.send(:include, ActiveMerchant::Billing::Integrations::ActionViewHelper)

# Initialize OffsitePayments config
require 'offsite_payments/action_view_helper'
ActionView::Base.send(:include, OffsitePayments::ActionViewHelper)