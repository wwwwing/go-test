package main

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func main() {
	r := gin.Default()
	r.GET("/", func(c *gin.Context) {
		c.JSON(200,gin.H{
			"message":"Hello Gin",
		})
	})
	r.GET("/ping", func(c *gin.Context) {
		c.JSON(200, gin.H{
			"message": "pong",
		})
	})
	r.GET("/v1/:name", func(context *gin.Context) {
		context.JSON(http.StatusOK,gin.H{
			"message":"Hello," + context.Param("name"),
		})
	})
	r.Run() // listen and serve on 0.0.0.0:8080
}