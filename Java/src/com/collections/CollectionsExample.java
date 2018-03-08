package com.collections;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Type;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.*;

class JobRecords{
 public String Name,Activity,Job_Description,Job_Number,Site_Location,Status;
 public int Id;
    @Override
    public int hashCode() {
        final int prime = 20;
        int result = 1;
        result = prime * result + Id;
        return result;
    }
    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        JobRecords other = (JobRecords) obj;
        if (Id != other.Id)
            return false;
        return true;
    }
    @Override
    public String toString () {
        return ToStringBuilder.reflectionToString(this, ToStringStyle.SHORT_PREFIX_STYLE);
    }
    public void getJobRecordsHashSet(String reader){
        HashSet<JobRecords> jobRecordObjects= (HashSet<JobRecords>) fromJson(reader,
                new TypeToken<HashSet<JobRecords>>() {
                }.getType());
        System.out.println("------------HashSet------------");
        iterateCollection(jobRecordObjects);
    }
    public void iterateCollection(Collection<JobRecords> jobRecordObjects){
        jobRecordObjects.forEach((eachObject) -> {
            System.out.println(eachObject);
        });
    }
    public void getJobRecordsArrayList(String reader){
        ArrayList<JobRecords> jobRecordObjects= (ArrayList<JobRecords>) fromJson(reader,
                new TypeToken<ArrayList<JobRecords>>() {
                }.getType());
        System.out.println("------------ArrayList------------");
        iterateCollection(jobRecordObjects);
    }
    public static Object fromJson(String jsonString, Type type) {
        return new Gson().fromJson(jsonString, type);
    }
    public void getJobRecordsHashMap(String reader) {
        JobRecords[] jobs = (JobRecords[]) fromJson(reader, JobRecords[].class);
        System.out.println("------------HashMap------------");
        HashMap<Integer, JobRecords> jobRecordObjects = new HashMap<Integer, JobRecords>();
        for (JobRecords job : jobs) {
            jobRecordObjects.put(job.Id, job);
        }
        for (Map.Entry<Integer, JobRecords> entry : jobRecordObjects.entrySet()) {
            Integer key = entry.getKey();
            JobRecords values = entry.getValue();
            System.out.println(key +":"+ values);
        }
    }
}
public class CollectionsExample {
    public static void main(String[] args) throws IOException {
        try{
        String reader = new String(Files.readAllBytes(Paths
                .get("C:\\Users\\purushotham\\IdeaProjects\\Java_training\\Java\\src\\com\\collections\\data.json..")));
        JobRecords jobs = new JobRecords();
        jobs.getJobRecordsArrayList(reader);
        jobs.getJobRecordsHashSet(reader);
        jobs.getJobRecordsHashMap(reader);
        }catch (FileNotFoundException fe){
            System.out.print(fe.getMessage());
        }
    }
}
