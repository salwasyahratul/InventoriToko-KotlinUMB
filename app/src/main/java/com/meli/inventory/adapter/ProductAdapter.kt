package com.meli.inventory.adapter

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView
import coil.load
import com.meli.inventory.R
import com.meli.inventory.model.Product

class ProductAdapter(
    private val products: List<Product>,
    private val onAddToCart: (Product) -> Unit
) : RecyclerView.Adapter<ProductAdapter.ProductViewHolder>() {

    inner class ProductViewHolder(view: View) : RecyclerView.ViewHolder(view) {
        val ivProduct: ImageView = view.findViewById(R.id.ivProduct)
        val tvName: TextView = view.findViewById(R.id.tvProductName)
        val tvPrice: TextView = view.findViewById(R.id.tvProductPrice)
        val btnAdd: Button = view.findViewById(R.id.btnAddToCart)
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ProductViewHolder {
        val view = LayoutInflater.from(parent.context)
            .inflate(R.layout.item_product, parent, false)
        return ProductViewHolder(view)
    }

    override fun getItemCount() = products.size

    override fun onBindViewHolder(holder: ProductViewHolder, position: Int) {
        val product = products[position]

        holder.tvName.text = product.name
        holder.tvPrice.text = "Rp ${product.price}"

        // ✅ Gambar dummy jika kosong/null
        val safeImageUrl = product.imageUrl.ifBlank { "https://woop.sgp1.cdn.digitaloceanspaces.com/woop/storage/20190910/160424-rekomendasi-klinik-kecantikan-webp-large.jpg" }
        holder.ivProduct.load(safeImageUrl)

        holder.btnAdd.setOnClickListener {
            onAddToCart(product)
        }
    }
}
