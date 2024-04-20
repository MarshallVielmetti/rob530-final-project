import yaml
import sys
import cv2 as cv

# https://docs.opencv.org/4.x/dc/dbb/tutorial_py_calibration.html

def convert_file(filename):

    fs = cv.FileStorage(filename, cv.FILE_STORAGE_READ)


    cm = fs.getNode("camera_matrix")
    camera_matrix = cm.mat()

    dc = fs.getNode("distortion_coefficients")
    distortion_coefficients = dc.mat()


    output_data = {}

    output_data["Camera.fx"] = float(camera_matrix[0][0])
    output_data["Camera.fy"] = float(camera_matrix[1][1])
    output_data["Camera.cx"] = float(camera_matrix[0][2])
    output_data["Camera.cy"] = float(camera_matrix[1][2])

    output_data["Camera.k1"] = float(distortion_coefficients[0][0])
    output_data["Camera.k2"] = float(distortion_coefficients[1][0])
    output_data["Camera.p1"] = float(distortion_coefficients[2][0])
    output_data["Camera.p2"] = float(distortion_coefficients[3][0])
    output_data["Camera.k3"] = float(distortion_coefficients[4][0])

    print(output_data)


    with open("calibration_output.yaml", 'w') as stream:
        try:
            yaml.dump(output_data, stream)
        except yaml.YAMLError as exc:
            print(exc)
            exit(1)

    

def main():
    if (len(sys.argv) != 2):
        print("Incorrect usage")
        print("Should be:")
        print("python3 calibration_convertor.py < opencv_output >")
        exit(1)

    convert_file(sys.argv[1])



if __name__ == "__main__":
    main()