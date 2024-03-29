package com.sit.placementcell.app.service;


import com.sit.placementcell.app.entity.*;
import com.sit.placementcell.app.repository.AdminJobApplicationRepository;
import com.sit.placementcell.app.repository.JobApplicationRepository;
import com.sit.placementcell.app.repository.JobPostRepository;
import com.sit.placementcell.app.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class JobApplicationService {

    private final JobPostRepository jobPostRepository;
    private final StudentRepository studentRepository;
    private final JobApplicationRepository jobApplicationRepository;
    private final AdminJobApplicationRepository adminJobRepo;

    @Autowired
    public JobApplicationService(JobPostRepository jobPostRepository, StudentRepository studentRepository, JobApplicationRepository jobApplicationRepository, AdminJobApplicationRepository adminJobRepo) {
        this.jobPostRepository = jobPostRepository;
        this.studentRepository = studentRepository;
        this.jobApplicationRepository = jobApplicationRepository;
        this.adminJobRepo = adminJobRepo;
    }

    // Find all applications
    public List<JobAppliedStudents> findAll(){
        return jobApplicationRepository.findAll();
    }


    public List<AdminJobApplications> findAllByJobAndStatus(Integer jobId,Integer statusId){
        return adminJobRepo.findByJobAndStatus(jobId,statusId);
    }


    public List<JobAppliedStudents> findAllByStudents(Integer studentId){
        return jobApplicationRepository.findByStudentStudentId(studentId);
    }

    public List<JobAppliedStudents> getStudentsByFilters(String departmentName, Integer statusId) {
        return jobApplicationRepository.findByStudentAndStatus(departmentName,statusId);
    }

    public boolean approveAppliedStudents(List<JobAppliedStudents> studentsList){
        try {
            for(JobAppliedStudents application:studentsList){
                int studentId = application.getStudent().getStudentId();
                int jobId = application.getJobPost().getJobId();
                AdminJobApplications existingRecord = adminJobRepo.findByJobPostAndStudent(studentId,jobId);
                System.out.println(existingRecord);
                if(existingRecord == null){
                    JobPost job = application.getJobPost();
                    Student student = application.getStudent();
                    if(isStudentEligibleForJob(student,job)){
                        AdminJobApplications as = new AdminJobApplications();
                        as.setStudent(student);
                        as.setJobPost(job);
                        as.setStatus(getDefaultApplicationStatus());
                        adminJobRepo.save(as);
                    }
                }
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }


    public boolean isAlreadyApplied(int jobId, int studentId){
        JobAppliedStudents existingRecord = jobApplicationRepository.findByJobPostAndStudent(studentId,jobId);
        if(existingRecord == null){
            return false;
        }
        return true;
    }

    public String applyForJob(int jobId, int studentId) {
        JobAppliedStudents existingRecord = jobApplicationRepository.findByJobPostAndStudent(studentId,jobId);
        if(existingRecord == null) {
            Optional<JobPost> optionalJobPost = jobPostRepository.findById(jobId);
            Optional<Student> optionalStudent = studentRepository.findById(studentId);

            if (optionalJobPost.isPresent() && optionalStudent.isPresent()) {
                JobPost jobPost = optionalJobPost.get();
                Student student = optionalStudent.get();

                // Check if the student is eligible for the job based on your criteria
                if (isStudentEligibleForJob(student, jobPost)) {
                    // Create a JobAppliedStudents entity and save it
                    JobAppliedStudents jobAppliedStudents = new JobAppliedStudents();
                    jobAppliedStudents.setJobPost(jobPost);
                    jobAppliedStudents.setStudent(student);
                    jobAppliedStudents.setStatus(getDefaultApplicationStatus()); // You need to implement this method

                    jobApplicationRepository.save(jobAppliedStudents);
                    return "Applied Successfully";
                } else {
                    // Student is not eligible for the job
                    return "Not eligible";
                }
            }
        }else{
            return "Already Applied";
        }
        return "Unknown Exception from - ApplyJob";
    }

    private Status getDefaultApplicationStatus() {
        Status status = new Status();
        status.setStatusId(1);
        return status;
    }

    private boolean isStudentEligibleForJob(Student student, JobPost jobPost) {
        return true;
    }
}
