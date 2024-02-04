from API_Access import getPrediction

image_path = 'C:/Users/Cliff/Documents/School Files/MAPUA/2023 - 2024 Term 2/CPE124/Model/From Group 2/Testing/testingForAPI.jpg'
data=getPrediction(image_path)
classification = data.get('class')
prediction = round(float(data.get('confidence')),5)
confidence = str(prediction * 100) + '%'
print(classification, confidence)