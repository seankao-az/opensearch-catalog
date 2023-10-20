CREATE VIEW AS
    SELECT
        type as `aws.elb.elb_type`,
        time as `@timestamp`,
        elb as `aws.elb.elb_name`,
        client_ip as `aws.elb.client.ip`,
        client_port as `aws.elb.client.port`,
        target_ip as `aws.elb.target_ip`,
        target_port as `aws.elb.target_port`,
        request_processing_time as `aws.elb.request_processing_time`,
        target_processing_time as `aws.elb.target_processing_time`,
        response_processing_time as `aws.elb.response_processing_time`,
        elb_status_code as `aws.elb.elb_status_code`,
        target_status_code as `aws.elb.target_status_code`,
        received_bytes as `aws.elb.received_bytes`,
        sent_bytes as `aws.elb.sent_bytes`,
        request_verb as `http.request.method`,
        request_url as `url.full`,
        request_proto as `url.schema`,
        user_agent as `http.user_agent.name`,
        ssl_cipher as `aws.elb.ssl_cipher`,
        ssl_protocol as `aws.elb.ssl_protocol`,
        target_group_arn as `aws.elb.target_group_arn`,
        trace_id as `traceId`,
        domain_name as `url.domain`,
        chosen_cert_arn as `aws.elb.chosen_cert_arn`,
        matched_rule_priority as `aws.elb.matched_rule_priority`,
        request_creation_time as `aws.elb.request_creation_time`,
        actions_executed as `aws.elb.actions_executed`,
        redirect_url as `aws.elb.redirect_url`,
        lambda_error_reason as `aws.elb.lambda_error_reason`,
        target_port_list as `aws.elb.target_port_list`,
        target_status_code_list as `aws.elb.target_status_code_list`,
        classification as `aws.elb.classification`,
        classification_reason as `aws.elb.classification_reason`
    FROM mys3.default.elb_logs_regex
WITH (
    auto_refresh = true,
    refresh_interval = '5 Seconds'
    )
    