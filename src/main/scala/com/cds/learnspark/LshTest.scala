package com.cds.learnspark

import com.github.karlhigley.spark.neighbors.ANN

object LshTest {

  def main(args: Array[String]) {



    val annModel = new ANN(dimensions = 1000, measure = "hamming").setTables(4).setSignatureLength(4)
      .train(points = )
    val neighbors = annModel.neighbors(10)
  }

}
