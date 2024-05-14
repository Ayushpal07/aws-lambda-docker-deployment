import sys
def handler(event, context):
    return 'Hello world! from AWS Lambda using Python' + sys.version + '!'
