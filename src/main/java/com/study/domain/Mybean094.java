package com.study.domain;

public class Mybean094 {
    private String modelNumber;
    private String name;
    private Integer productPrice;
    private Double weight;
    private boolean used;


    public String getModelNumber() {
        return modelNumber;
    }
    public void setModelNumber(String modelNumber) {
        this.modelNumber = modelNumber;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public Integer getProductPrice() {
        return productPrice;
    }
    public void setProductPrice(Integer productPrice) {
        this.productPrice = productPrice;
    }

    public Double getWeight() {return  weight;}
    public void setWeight(Double weight) {this.weight=weight;}

    public boolean isUsed(){return used;}
    public void setUsed(boolean used){this.used=used;}
}