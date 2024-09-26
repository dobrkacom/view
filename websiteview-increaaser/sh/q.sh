q="https://www.google.com/search?q=%D8%B3%D8%B1%D9%88%D8%B1+g9+site%3A+www.dobrka.com"
q1="https://dobrka.com/10470-%D8%B3%D8%B1%D9%88%D8%B1-hp-g9"
input="PROXY-List/http.txt"
while IFS= read -r line
do
  chromium-browser --proxy-server="$line" $q 
  chromium-browser --proxy-server="$line" $q1
xdotool key Alt+F4;

done < "$input"
./q.sh
