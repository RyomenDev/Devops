# GitHub Integration: Automating Repository Interaction

### Steps to Use

1. **Clone the Repository**  
    Clone the project repository from GitHub:
   ```
   git clone <repository-url>
   ```
2. **Navigate to the GitHub API File**
   Go to the directory containing the github-api file.
3. **Set Up Environment Variables**
   Export your GitHub username

   ```
   export username="your-github-username"
   ```

   Generate and export your personal access token:
   Navigate to GitHub > Settings > Developer Settings > Personal Access Tokens (Classic).
   Generate a new token and copy it.

   ```
   export token="your-github-token"
   ```

4. **Provide Organization and Repository Names Replace organisation and repository with the respective names:**

   ```
   chmod +x file.sh
   ./file.sh organisation repository

   ```

5. **Execute the Script**
   Run the script:
   ```
   ./github-api.sh
   ```

#### Prerequisites

**Install jq for parsing JSON:**
```
sudo apt-get install jq
```
Ensure the script is executable:
```
chmod +x file.sh
```


# AWS S3 Event Triggering

**NOTE**: REPLACE YOUR AWS ACCOUNT ID IN THE LAMBDA FUNCTION CODE.

AWS S3 Event triggering is a very popular project used by top companies in the Industry.

Here are some examples of top companies that use S3 event triggering:

**Netflix**: Netflix use S3 event triggering to automatically process video files uploaded to Amazon S3, enabling seamless content ingestion and processing.

**Airbnb**: This lodging and homestays aggregator use S3 event triggering to automatically process and analyze data stored in Amazon S3, such as guest reviews and booking information.

**Expedia**: They use S3 event triggering to automatically process and analyze data stored in Amazon S3, such as travel bookings, user profiles, and pricing information, to power their personalized travel recommendations and search features.

![Screenshot 2023-04-14 at 7 06 46 PM](https://user-images.githubusercontent.com/43399466/232058778-a7299e9b-9892-471c-a05d-14d773b5b333.png)

