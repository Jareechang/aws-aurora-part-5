{
  "family": "task-definition-node",
  "networkMode": "${network_mode}",
  "requiresCompatibilities": [
    "${launch_type}"
  ],
  "cpu": "${cpu}",
  "memory": "${memory}",
  "executionRoleArn": "${ecs_execution_role}",
  "containerDefinitions": [
    {
      "name": "${name}",
      "image": "nginx:latest",
      "memoryReservation": ${memory},
      "portMappings": [
        {
          "containerPort": ${port},
          "hostPort": ${port}
        }
      ],
      "environment": [
        {
          "name": "PORT",
          "value": "${port}"
        },
        {
          "name": "PGHOST",
          "value": "${db_host}"
        },
        {
          "name": "PGDATABASE",
          "value": "${db_name}"
        },
        {
          "name": "PGUSER",
          "value": "${db_username}"
        },
        {
          "name": "PGPORT",
          "value": "${db_port}"
        }
      ],
      "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "${log_group}",
          "awslogs-region": "${aws_region}",
          "awslogs-stream-prefix": "ecs"
        }
      },
      "secrets": [
        {
          "name": "PGPASSWORD",
          "valueFrom": "${db_password}"
        }
      ]
    }
  ]
}
