output "jenkins_vm_ip" {
  value = module.ec2_instances.jenkins_vm_ip
}

output "test_vm_ip" {
  value = module.ec2_instances.test_vm_ip
}