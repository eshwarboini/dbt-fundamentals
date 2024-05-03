select 
    id as payment_id,
    orderid as order_id, 
    paymentmethod as payment_method,
    status,
    created as created_at,
    {{ cents_to_dollars('amount',2) }} as amount

from {{ source('stripe','payment') }}
{{ limit_data_in_dev('default','created_at',20, 'day') }}