package com.sit.placementcell.app.service;


import com.sit.placementcell.app.entity.ProofEntity;
import com.sit.placementcell.app.repository.ProofRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProofService {

    @Autowired
    private final ProofRepository proofRepository;

    public ProofService(ProofRepository proofRepository) {
        this.proofRepository = proofRepository;
    }

    @Transactional
    public void saveImage(ProofEntity proof){
        proof.setProofId(0);
        proofRepository.save(proof);
    }
}