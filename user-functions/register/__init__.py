import logging
import azure.functions as func
from azure.cosmos import CosmosClient
import os
import json

def main(req: func.HttpRequest) -> func.HttpResponse:
    endpoint = os.environ["COSMOS_ENDPOINT"]
    key = os.environ["COSMOS_KEY"]
    client = CosmosClient(endpoint, key)
    db = client.get_database_client("UserDB")
    container = db.get_container_client("users")

    try:
        data = req.get_json()
        email = data.get("email")
        password = data.get("password")

        if not email or not password:
            return func.HttpResponse("Missing fields", status_code=400)

        container.create_item({
            "id": email,
            "email": email,
            "password": password,
            "imageUrl": "",
            "introduction": "",
            "bottleUsage": 0
        })

        return func.HttpResponse("User created", status_code=201)
    except Exception as e:
        return func.HttpResponse(str(e), status_code=500)