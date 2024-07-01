package com.placr.placr;
  
import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.web.bind.annotation.*; 
import java.util.List; 
  
@RestController
public class PlaceController { 
    // @Autowired
    // private TweetService tweetService; 
  
    // @PostMapping("/add") 
    // public void addTweet() { 
    //     tweetService.addTweet(); 
    // } 
  
    @GetMapping("/view") 
    public String viewTweets() { 
        return "hello"; 
    } 
} 