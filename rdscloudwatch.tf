#DBInstanceIdentifier and alarm_actions taken from rds instance file
resource "aws_cloudwatch_metric_alarm" "example" {
  alarm_name          = "example-alarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/RDS"
  period             = 60
  statistic           = "Average"
  threshold           = 75
  alarm_description   = "This metric triggers when CPU utilization is over 75% for 2 consecutive periods."

  dimensions = {
    DBInstanceIdentifier = aws_db_instance.rds.id
  }

  alarm_actions = [aws_sns_topic.example.arn]
}
