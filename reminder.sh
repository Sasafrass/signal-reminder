arr=("Remember, dear book club members, that the time has come to choose our next literary adventure. Let us not dally in indecision, for the reading awaits us." 
"My fellow bibliophiles, it behooves us to select our next book promptly, for the pages beckon to be turned and the stories await to be devoured." 
"Dear book club friends, let us not forget that we must choose our next read. The anticipation is almost too much to bear - let us decide and begin our journey." 
"The book club meeting is fast approaching, and with it the need to choose our next literary conquest. Let us not delay, my fellow readers, but make our selection and dive in." 
"My dear book-loving comrades, it is time once again to select our next book. Let us rally together and decide on a title that will inspire and delight us." 
"Attention book club members! The time has come to decide on our next read. Let us not be daunted by the many options before us, but embrace the challenge and make our choice." 
"Dear bookworms, let us not forget that the book club meeting is swiftly approaching, and with it the need to choose our next literary companion. Let us be bold in our selection and eager to begin." 
"My fellow book club members, let us not delay in selecting our next book. The excitement of diving into a new story is almost too much to bear - let us make our choice and begin." 
"Dear readers, it is time once again to choose our next book club selection. Let us come together and decide on a title that will challenge and inspire us." 
"Attention book lovers! The book club meeting is near, and with it the need to choose our next read. Let us not be intimidated by the vast array of options, but embrace the opportunity to explore new worlds through literature." 
"My dear book club friends, the time has come to make our selection for the next meeting. Let us not hesitate, but boldly choose a book that will transport us to faraway lands and captivate our imagination." 
"Dear fellow bibliophiles, let us not forget that we must choose our next book club book. The anticipation of embarking on a new literary journey is almost too much to bear - let us decide and dive in.")

selectedexpression=${arr[ $RANDOM % ${#arr[@]} ]}


echo "$selectedexpression"

curl -X POST -H "Content-Type: application/json" -d '{"message": "'"$selectedexpression"'", "number": "+316secretnumber", "recipients": ["group.myGroupIdFromSignalApi"]}' 'http://127.0.0.1:8080/v2/send'
