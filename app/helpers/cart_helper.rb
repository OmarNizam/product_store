module CartHelper
def cartbutton
button_to "Add" ,product_carts_path(@product.id) , action: "create"
end

end
