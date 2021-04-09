output "jenkins_RDS_Endpoint" {
    value = aws_db_instance.jenkins-db.endpoint
}

output "test_RDS_Endpoint" {
    value = aws_db_instance.test-db.endpoint
}