## ask user  which mode to run 1. webserver 2. device
echo "1. webserver 2. device"
read -p "Enter your choice: " choice
case $choice in
1) flutter run -d web-server --web-port=8000 --release;;
2) flutter create . && flutter run --release;;
*) echo "Invalid choice";;
esac
