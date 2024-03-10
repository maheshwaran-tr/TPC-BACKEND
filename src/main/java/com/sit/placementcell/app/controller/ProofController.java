package com.sit.placementcell.app.controller;


import com.sit.placementcell.app.entity.ImageEntity;
import com.sit.placementcell.app.entity.ProofEntity;
import com.sit.placementcell.app.service.ProofService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
@RequestMapping("/sit/proofs")
public class ProofController {

    @Autowired
    private ProofService proofService;

    @PostMapping("/upload-img")
    public ResponseEntity<String> uploadImage(@RequestParam("file") MultipartFile file,
                                              @RequestParam("application_id") Integer applicationId) {
        try {
            ProofEntity proof = new ProofEntity();
            proof.setApplicationId(applicationId);
            proof.setProof(file.getBytes());
            proofService.saveImage(proof);
            return ResponseEntity.ok("Image uploaded successfully!");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
