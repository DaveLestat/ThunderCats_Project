import json
import boto3

def lambda_handler(event, context):
    # Initialize a DynamoDB client
    dynamodb = boto3.resource('dynamodb')
    
    # Reference the DynamoDB table
    table = dynamodb.Table('myTable')

    # Parse the input data from the event
    try:
        data = json.loads(event['body'])
        email = data['email']
        name = data['name']
        model = data['model']
    except KeyError as e:
        return {
            'statusCode': 400,
            'body': json.dumps(f'Missing key: {str(e)}')
        }
    except Exception as e:
        return {
            'statusCode': 500,
            'body': json.dumps(f'Error parsing input data: {str(e)}')
        }

    # Insert the data into the DynamoDB table
    try:
        response = table.put_item(
           Item={
               'email': email,
               'name': name,
               'model': model
           }
        )
        return {
            'statusCode': 200,
            'body': json.dumps('Data successfully inserted into DynamoDB')
        }
    except Exception as e:
        return {
            'statusCode': 500,
            'body': json.dumps(f'Error inserting data into DynamoDB: {str(e)}')
        }

