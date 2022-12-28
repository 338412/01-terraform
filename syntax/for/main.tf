provider "local" {
}

variable "user_names" {
  description = "Create IAM users with these names"
  type				= list(string)
  default			= ["aws10-neo", "aws10-trinity", "aws10-morpheus" ]
}

output "for_directive" {
  value = <<EOF
		%{for name in var.user_names}
			${name}
		%{endfor}
			EOF
}
