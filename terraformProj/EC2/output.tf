output "jenkins_vm_ip" {
    value = aws_instance.jenkins.public_ip
}

output "test_vm_ip" {
    value = aws_instance.test.public_ip
}