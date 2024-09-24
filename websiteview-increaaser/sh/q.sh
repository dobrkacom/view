
q="https://www.google.com/search?q=%D8%B3%D8%B1%D9%88%D8%B1+g9+site%3A+www.dobrka.com"
q1="https://dobrka.com/10470-%D8%B3%D8%B1%D9%88%D8%B1-hp-g9"
input="PROXY-List/http.txt"
while IFS= read -r line
do 
  export http_proxy="http://$line";
  wget  --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" $q
   wget  --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" $q1
   rm *g9*;
   rm *html*;
done < "$input"
./q.sh
