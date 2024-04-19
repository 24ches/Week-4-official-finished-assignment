#Week 4: dplyr package

#Task: Write the function to get a dataset from Base R: Titanic
#and give the dataframe a new name of your choice
#(hint: you will want your data to be a dataframe. Use the function: as.data.frame(Titanic))
get_custom_dataset <- function() {
  custom_titanic_df <- as.data.frame(Titanic)
  return(custom_titanic_df)
}
#See the top rows of the data
#TASK: Write the function to see the top rows of the data
view_top_rows <- function(data, n = 5) {
  top_rows <- head(data, n)
  return(top_rows)
}
#Install and call the package dplyr
#TASK: Write the functions to install and call dplyr
install_and_call_dplyr <- function() {
  install.packages("dplyr")
  library(dplyr)
}
#Let's just see the Survived and Sex columns
#Task: Write the function to 'select' the Survived and Sex columns 
#(hint: use the 'select' function)
select_survived_sex <- function(data) {
  selected_data <- select(data, Survived, Sex)
  return(selected_data)
}
#Let's name the dataset with just the two columns, Survived and Sex
#TASK: Write the function to save the two columns as one new dataset
#and give it a name
save_selected_data <- function(selected_data, new_name) {
  assign(new_name, selected_data, envir = .GlobalEnv)
}
#Let's get rid of the Sex column in the new dataset created above
#TASK: Write the function that deselects the sex column
#(hint: use the 'select' function to not select a -column)
deselect_sex_column <- function(data) {
  deselected_data <- select(data, -Sex)
  return(deselected_data)
}
#Let's rename a column name
#TASK: Write the function that renames 'Sex' to 'Gender'
rename_gender_column <- function(data) {
  renamed_data <- rename(data, Gender = Sex)
  return(renamed_data)
}
#Let's make a new dataframe with the new column name
#TASK: Write the function that names a new dataset that includes the 'gender' column
name_with_gender_column <- function(data, new_name) {
  assign(new_name, data, envir = .GlobalEnv)
}
#Let's 'filter' just the males from our dataset
#TASK: Write the function that includes only rows that are 'male'
filter_male_rows <- function(data) {
  filtered_data <- filter(data, Gender == "male")
  return(filtered_data)
}
#Let's 'arrange' our data by gender (not the data you just filtered)
#TASK: Write the function to group the data by gender (hint: arrange())
arrange_by_gender <- function(data) {
  arranged_data <- arrange(data, Gender)
  return(arranged_data)
}
#Let's see how many people were examined in the dataset (total the frequency in the original dataframe)
#TASK: Sum the Freq column
#TASK: After you run it, write the total here:____
sum_freq_column <- function(data) {
  total_freq <- sum(data$Freq)
  return(total_freq)
}
#Since we have a males dataset, let's make a females dataset
#TASK: Write the function that includes only rows that are 'female'
filter_female_rows <- function(data) {
  filtered_data <- filter(data, Gender == "female")
  return(filtered_data)
}
#And now let's join the males and females
#TASK: Write the function that joins the male and female rows 
#(hint: try using 'union' or 'bind_rows')
join_male_female_rows <- function(male_data, female_data) {
  joined_data <- bind_rows(male_data, female_data)
  return(joined_data)
}
#Optional Task: add any of the other functions 
#you learned about from the dplyr package
