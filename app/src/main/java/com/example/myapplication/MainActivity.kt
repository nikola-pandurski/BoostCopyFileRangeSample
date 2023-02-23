package com.example.myapplication

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.widget.TextView
import com.example.myapplication.databinding.ActivityMainBinding
import java.io.File
import java.io.FileOutputStream

class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        binding.button.setOnClickListener { doIt() }

    }

    private fun doIt() {

        val sourceFile = File(cacheDir, "source.txt")
        if (sourceFile.exists())
            sourceFile.delete()

        val sourceFile2 = File(cacheDir, "source2.txt")
        if (sourceFile2.exists())
            sourceFile2.delete()

        //this is the only difference between the to scenarios
        sourceFile.createNewFile()
        sourceFile.writeText("This is sample file to be used as source for copying.")

        sourceFile2.writeText("This is sample file to be used as source for copying.")


        val destinationFile = File(cacheDir.absolutePath, "destination.txt")
        destinationFile.delete()

        val destinationFile2 = File(cacheDir.absolutePath, "destinationFile2.txt")
        destinationFile2.delete()

        //This call is executed succesfully
        copyFileRange(sourceFile.absolutePath, destinationFile.absolutePath)

        //This call throws bad file descriptor exception
        copyFileRange(sourceFile2.absolutePath, destinationFile2.absolutePath)

        if (destinationFile.exists())
            binding.sampleText.text = destinationFile.readText()
    }

    external fun copyFileRange(sourceFilePath: String, destinationFilePath: String)

    companion object {
        init {
            System.loadLibrary("myapplication")
        }
    }
}