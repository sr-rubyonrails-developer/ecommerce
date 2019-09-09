json.extract! product, :id, :nombre, :clave, :precio_de_venta, :stock, :descripcion, :color, :talla, :created_at, :updated_at
json.url product_url(product, format: :json)
