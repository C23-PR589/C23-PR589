package com.capstone.sata.ui.filter

import androidx.lifecycle.ViewModel
import com.capstone.sata.data.repo.SataRepo
import com.google.gson.JsonObject

class FilterViewModel (private val repo: SataRepo) : ViewModel() {
    fun postFilter (jsonObject: JsonObject) = repo.postFilter(jsonObject)
}