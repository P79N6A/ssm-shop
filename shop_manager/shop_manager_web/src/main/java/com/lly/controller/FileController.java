package com.lly.controller;

import com.lly.fastdfs.FastDFSClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

/**
 * Author:  lly
 * Date:    2019/4/19 16:31
 * Description:
 */
@Controller
public class FileController {
    @RequestMapping(value="uploadfile",method = RequestMethod.POST)
    @ResponseBody
    public String uploadfile(@RequestParam MultipartFile file) throws IOException {
      String fileID =  FastDFSClient.uploadFile(file.getInputStream(),file.getOriginalFilename());
      System.out.println("文件上传成功！");
      return fileID;
    }
}
