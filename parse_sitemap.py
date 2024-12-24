import os
import xml.etree.ElementTree as ET

__resource_directory__ = ".resources/"
__output_file__ = "cafe_urls.txt"

# Function to read all XML files from a directory and print the loc tag content
def read_xml_files_in_directory(directory_path):
    # List all files in the directory
    files = os.listdir(directory_path)
    
    # Filter out only XML files
    xml_files = [file for file in files if file.endswith('.xml')]
    
    # Define the namespace used in the XML file
    namespaces = {
        '': 'http://www.sitemaps.org/schemas/sitemap/0.9',  # Default namespace
        'image': 'http://www.google.com/schemas/sitemap-image/1.1'
    }
    
    output = ""

    # Loop through each XML file and parse it
    for xml_file in xml_files:
        file_path = os.path.join(directory_path, xml_file)
        try:
            # Parse the XML file
            tree = ET.parse(file_path)
            root = tree.getroot()
            
            # Find all url elements using the namespace
            print(f"Reading file: {xml_file}")
            for url in root.findall(".//url", namespaces):
                loc = url.find("loc", namespaces)
                if loc is not None:
                    output += (loc.text + "\n")
                
        except ET.ParseError as e:
            print(f"Error parsing {xml_file}: {e}")
            continue
        except Exception as e:
            print(f"Error processing {xml_file}: {e}")
            continue
    
    return output 


if __name__ == "__main__":
    # Example usage: Provide the directory path where your XML files are stored
    directory_path = __resource_directory__  # Change to your directory
    output = read_xml_files_in_directory(directory_path)
    with open(os.path.join(directory_path, __output_file__), "w") as output_file:
        output_file.write(output)