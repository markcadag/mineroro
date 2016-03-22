function numberWithCommas(n) {
    var parts=n.toString().split(".");
    return parts[0].replace(/\B(?=(\d{3})+(?!\d))/g, ",") + (parts[1] ? "." + parts[1] : "");
}

/**
    formate date to MM/dd/yyyy
**/
function formatDate(date) {
   return (date.getMonth() + 1) + '/' + date.getDate() + '/' +  date.getFullYear()
}