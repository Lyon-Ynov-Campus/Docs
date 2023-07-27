# <p align="center">Specialities Discovery (Ymmersions B1 23-24) - Workshop Data</p>
  
This is a workshop that introduce you to data.
In this workshop, you will use scraping in order to extract data from a website with Golang Colly and stock them in a .csv file.
Then, you are going to make a datavisualization of your data.
        

## 🧑🏻‍💻 Exercise 1 : Web scraping
You need to scrape data from an e-commerce website using the Colly package from golang.

### 🛠️ Installation

#### Step 1 : Create your new project Golang
```bash
mkdir webscraping-go
cd webscraping-go
go mod init webscraping
```

#### Step 2 : Install Golang Colly with your terminal :
```bash
go get github.com/gocolly/colly/v2
```

#### Step 3 : Import the package colly in your golang files in order to use it :
```golang
import "github.com/gocolly/colly/v2"
```

Then, you have to use this package in order to scrape data from an e-commerce website, and extract them to a .json file.
You will need also [OS](https://pkg.go.dev/os) and [encoding/json](https://pkg.go.dev/encoding/json) standard golang packages.
⚠️ Be careful, you must respect Article L.342-3 of the Intellectual Property Code and the CGU of the website where you scrape its data.

### You have to scrape data from this website : 
- [Nike Chaussures et Basket pour Hommes](https://www.nike.com/fr/w/hommes-chaussures-nik1zy7ok)
- [Levi's Women Collections 501 day](https://www.levi.com/FR/en/the-greatest-story-ever-worn/c/levi_women_collections_501_day)
- [Yokoshop](https://yokoshop.com/)
- [Amazon Produits Logitech](https://www.amazon.fr/s?i=computers&bbn=3581943031&rh=p_89%3ALogitech&dc&_encoding=UTF8&pf_rd_p=a3715f85-187a-4839-bc60-038c008db2cf&pf_rd_r=1W0XREJ872MP03Q3PBE0&pf_rd_s=auto-subnav-flyout-xiste-content-2&pf_rd_t=SubnavFlyout&qid=1677584597&rnid=1680780031&ref=sr_nr_p_89_6&ds=v1%3Aa%2FcVOqjNndSWb7IGPbKDwpSzQMjJD5bja57gLPBtm8U)

To extract data, you have to extract by using the css tag of div.
For example if you want to extract all links from a page => `href`.

### Ressources
- [Go Colly](https://go-colly.org/docs/)
- [OS](https://pkg.go.dev/os)
- [encoding/json](https://pkg.go.dev/encoding/json)


## 🧑🏻‍💻 Exercise 2 : Dataviz

You have to do a datavisualization of one of these data :
- [Football Data from Transfermarket](https://www.kaggle.com/datasets/davidcariboo/player-scores)
- [Population mondiale](https://www.kaggle.com/datasets/dinarkhan/worldpopulation2023)
- [Spécificités de voiture entre 1945 et 2020](https://www.kaggle.com/datasets/jahaidulislam/car-specification-dataset-1945-2020)
- [Les animés en 2022](https://www.kaggle.com/datasets/vishalmane10/anime-dataset-2022)
- [Cryptocurrency Price & Market Data](https://www.kaggle.com/datasets/thedevastator/cryptocurrency-price-market-data)
- You can choose another dataset on : [kaggle](https://www.kaggle.com/datasets).

### 🛠️ Installation

#### Outil
- [Power BI](https://powerbi.microsoft.com/fr-fr/getting-started-with-power-bi/)

Have fun and have a beautiful datavisualization :) !

### Dataviz inspirations :
- [sur Pinterest](https://pin.it/5o5sYRm)
- [sur Dribbble](https://dribbble.com/search/dataviz)

## 🙇 Author
#### Jean-Philippe CAETANO
- Linkedin: [@Jean-Philippe CAETANO](https://www.linkedin.com/in/jean-philippe-caetano-b30327229/)
- Github: [@JeanPhilippeCaetano](https://github.com/JeanPhilippeCaetano)
        

## Enjoy and have fun :) !
        
