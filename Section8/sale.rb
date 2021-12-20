# class Sale
#   def initialize(params)
#     @params = params
#   end

#   def call
#     puts "Params in class: #{@params}"
#   end
# end

# sale = Sale.new("Some data...")
# sale.call

# Modules looks like a class, but is not - more like a helper function or a process
module Sale
    module FormBuilder # nested module
        class << self # how to create multiple methods
            def call(params)
                # puts "Params in module: #{params}"
                subtotal = params[:subtotal]
                state_name = params[:state_name]

                #  self here allows us to access the methods within
                tax_amount = subtotal * self.tax_rate(state_name)
                subtotal + tax_amount
            end

            private
            def tax_rate(state)
                if state == "AZ"
                    0.065
                elsif state == "CA"
                    0.087
                end
            end
        end
    end
end

form_data = {subtotal: 1500, state_name: "AZ"}
puts Sale::FormBuilder.call(form_data)

