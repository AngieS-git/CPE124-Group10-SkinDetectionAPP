import cv2
import numpy as np
import tensorflow as tf
from tkinter import Tk, Label, Button, filedialog
from PIL import Image, ImageTk

# Model
model = tf.keras.models.load_model('model.h5')

# Class names
class_names = ["Melanocytic nevi", "Melanoma","Basal cell carcinoma" ,
                "Actinic keratoses", "Vascular lesions", "Dermatofibroma", "Benign keratosis-like lesions"]

# Function to preprocess the input image
def preprocess_image(image_path):
    img = cv2.imread(image_path)
    img = cv2.resize(img, (100, 125))
    img = img / 255.0  # Normalize pixel values to be between 0 and 1
    img = np.transpose(img, (1, 0, 2))  # Transpose image dimensions
    img = np.expand_dims(img, axis=0)  # Add batch dimension
    return img

# Function to predict the class and display the result
def predict_class(image_path, label_result):
    preprocessed_img = preprocess_image(image_path)
    predictions = model.predict(preprocessed_img)
    predicted_class_index = np.argmax(predictions)
    predicted_class_name = class_names[predicted_class_index]
    prediction_accuracy = predictions[0][predicted_class_index] * 100

    label_result.config(text=f"Predicted Class: {predicted_class_name}\n"
                             f"Prediction Accuracy: {prediction_accuracy:.2f}%",
                       font=("Inter", 14))  # Increase font size

# Function to open file dialog for selecting an image
def browse_image(label_image, label_result):
    file_path = filedialog.askopenfilename()
    img = Image.open(file_path)
    img = img.resize((300, 375), Image.ANTIALIAS)
    img = ImageTk.PhotoImage(img)

    label_image.img = img
    label_image.config(image=img)

    predict_button.config(state="normal")
    predict_button["command"] = lambda: predict_class(file_path, label_result)

# Create the main GUI window
root = Tk()
root.title("SKIN CANCER DETECTION")
root.geometry("800x600")

# Set background color to cream
root.configure(bg="#FFFACD")

# Create label for the project title
title_label = Label(root, text="Skin Cancer Detection Using CNN", font=("Inter", 16, "bold"), bg="#FFFACD")
title_label.pack(pady=10)

# Create label for displaying image
label_image = Label(root, bg="#FFFACD")
label_image.pack(pady=10)

label_result = Label(root, text="", bg="#FFFACD")
label_result.pack(pady=10)      

# Create a button to browse for an image
browse_button = Button(root, text="Browse Image", command=lambda: browse_image(label_image, label_result), bg="white", fg="black", font=("Inter", 14))
browse_button.pack(pady=10)

# Create a button to predict the class
predict_button = Button(root, text="Predict Class", state="disabled", bg="white", fg="black", font=("Inter", 14, "bold"))
predict_button.pack(pady=10)

# Run the GUI
root.mainloop()
